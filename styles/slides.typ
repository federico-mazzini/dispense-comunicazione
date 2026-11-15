// Identità visiva condivisa con le dispense.
#import "template.typ": rosso, grigio, bordo

#let presentazione(body) = {
  set document(title: "La comunicazione")
  set page(width: 960pt, height: 540pt, margin: (x: 48pt, top: 32pt, bottom: 36pt),
    footer: context align(right, text(size: 11pt, fill: grigio)[La comunicazione · #counter(page).display() / #counter(page).final().first()]))
  set text(font: "Libertinus Serif", size: 21pt, lang: "it", hyphenate: false, fill: black)
  set par(leading: 0.45em, spacing: 0.65em, justify: false)
  set list(indent: 16pt, body-indent: 6pt, spacing: 0.5em)
  set enum(indent: 20pt, body-indent: 6pt, spacing: 0.55em)
  body
}
// Distribuisce i gruppi di testo nell'intera area utile, senza cambiare il testo.
#let gruppi(body) = {
  let result = ()
  let current = []
  let flatten(it) = {
    if it.has("children") and repr(it.func()) == "sequence" {
      it.children.map(flatten).flatten()
    } else { (it,) }
  }
  for it in flatten(body) {
    if it.func() == parbreak {
      result.push(current)
      current = []
    } else if it.func() in (block, list, enum, grid, stack, align, image) {
      result.push(current)
      result.push(it)
      current = []
    } else { current += it }
  }
  result.push(current)
  result.filter(it => measure(it, width: 864pt).height > 0pt)
}
#let distendi(body) = stack(dir: ttb, spacing: 1fr, ..gruppi(body))
#let area-slide(body) = context {
  let chosen = 21pt
  for size in (27pt, 26pt, 25pt, 24pt, 23pt, 22pt, 21pt) {
    let sample = {
      set text(size: size)
      set par(leading: 0.45em, spacing: 0.7em)
      set list(spacing: 0.65em)
      body
    }
    if measure(sample, width: 864pt).height <= 384pt { chosen = size; break }
  }
  set text(size: chosen)
  set par(leading: 0.45em, spacing: 0.7em)
  set list(spacing: 0.65em)
  block(height: 392pt, width: 100%)[#distendi(body)]
}
#let slide(titolo, body) = page[
  #line(length: 40pt, stroke: 3pt + rosso)
  #block(above: 14pt, below: 20pt)[#text(size: 31pt, weight: "bold", fill: rosso)[#titolo]]
  #if titolo == [La comunicazione] { body } else { area-slide(body) }
]
#let definizione(body) = block(above: 8pt, below: 12pt)[#text(weight: "bold")[#body]]
#let esempio(body) = block(inset: (left: 15pt, y: 8pt), stroke: (left: 2pt + rosso), above: 10pt)[
  #block(below: 8pt)[#text(size: 17pt, weight: "bold", fill: rosso)[Esempio]]
  #body
]
#let domanda(body, titolo: "Domanda alla classe") = block(inset: 14pt, stroke: 1pt + rosso, above: 14pt)[
  #block(below: 8pt)[#text(size: 17pt, weight: "bold", fill: rosso)[#titolo]]
  #body
]
#let colonne(a,b) = [#a

#b]
#let nodo(body, larghezza: 112pt) = block(width: larghezza, inset: (x: 5pt,y: 12pt), stroke: 1pt + bordo)[#align(center)[#text(size: 18pt, weight: "bold")[#body]]]
#let percorso(..nomi) = grid(columns: (1fr,auto,1fr,auto,1fr,auto,1fr,auto,1fr,auto,1fr), align: horizon, gutter: 3pt,
  ..nomi.pos().enumerate().map(((i,n)) => if calc.rem(i,2)==0 {nodo(n)} else {text(fill: rosso, size: 23pt)[→]}))

// Casi video: usano la stessa pagina e la stessa gerarchia delle slide teoriche.
#let caso-video(titolo, video, url, miniatura, descrizione, domande) = slide(titolo)[
  #grid(columns: (390pt, 1fr), gutter: 30pt,
    [
      #link(url)[
        #if miniatura != none {
          image(miniatura, width: 390pt, height: 238pt, fit: "contain", alt: video)
        } else {
          block(width: 390pt, height: 238pt, stroke: 1pt + bordo, inset: 22pt)[
            #align(center + horizon)[#text(size: 25pt, fill: rosso)[Guarda il video su YouTube]]
          ]
        }
      ]
      #block(above: 7pt, below: 9pt)[#text(size: 16pt, fill: rosso)[#link(url)[#video ↗]]]
      #text(size: 20pt)[#descrizione]
    ],
    [
      #block(height: 392pt, width: 100%, inset: 14pt, stroke: 1pt + rosso)[
        #text(size: 17pt, weight: "bold", fill: rosso)[Visione e analisi]
        #v(18pt)
        #set text(size: 23pt)
        #set enum(spacing: 1.05em)
        #enum(..domande)
      ]
    ]
  )
]

#let analisi-video(titolo, punti, concetto, nota: none, ciclo: false) = slide(titolo)[
  #block(below: 13pt)[#text(size: 17pt, weight: "bold", fill: rosso)[Analisi della comunicazione]]
  #list(..punti)
  #if ciclo {
    block(above: 10pt, below: 10pt)[
      #align(center)[*Azione di A* #text(fill: rosso)[→] *Reazione di B* #text(fill: rosso)[→] *Nuova reazione di A*]
      #align(center)[#text(fill: rosso)[← Lo scambio prosegue e si alimenta ←]]
    ]
  }
  #block(above: 16pt, inset: (left: 15pt, y: 6pt), stroke: (left: 2pt + rosso))[
    #text(size: 17pt, weight: "bold", fill: rosso)[Concetto chiave]
    #par(concetto)
  ]
  #if nota != none { block(above: 10pt)[#text(size: 18pt)[#nota]] }
]

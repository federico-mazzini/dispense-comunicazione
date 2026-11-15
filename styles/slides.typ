// Le misure sono in punti su una pagina 16:9 da 960 × 540.
#import "template.typ": rosso, grigio

#let larghezza = 864pt
#let altezza-corpo = 390pt
#let sfondo = rgb("#fbf4f3")

#let presentazione(body) = {
  set document(title: "La comunicazione")
  set page(width: 960pt, height: 540pt, margin: (x: 48pt, top: 26pt, bottom: 32pt),
    footer: context align(right, text(size: 13pt, fill: grigio)[La comunicazione · #counter(page).display() / #counter(page).final().first()]))
  set text(font: "Libertinus Serif", size: 26pt, lang: "it", hyphenate: false, fill: rgb("#202020"))
  set par(leading: 0.44em, spacing: 0.8em, justify: false)
  set list(indent: 4pt, body-indent: 11pt, tight: false, spacing: 0.5em)
  set enum(numbering: "1", indent: 4pt, body-indent: 10pt, tight: false, spacing: 0.5em)
  body
}

#let etichetta(body) = text(size: 20pt, weight: "bold", fill: rosso, body)

// Misura il layout effettivo, comprese colonne, elenchi e rientri.
#let area-slide(body) = context {
  for corpo in range(29, 19, step: -1) {
    let prova = block(width: larghezza, breakable: false)[#set text(size: corpo * 1pt); #body]
    if measure(prova, width: larghezza).height <= altezza-corpo or corpo == 20 {
      return prova
    }
  }
}

#let slide(titolo, body) = page[
  #stack(dir: ttb, spacing: 0pt,
    rect(width: 40pt, height: 3pt, fill: rosso, stroke: none),
    v(10pt),
    text(size: 35pt, weight: "bold", fill: rosso, titolo),
    v(30pt),
    area-slide(body),
  )
]

// L'enunciato resta centrato sopra il contenuto della slide teorica.
#let slide-assioma(numero, enunciato, body) = slide([Assioma #numero])[
  #block(width: 100%, below: 20pt)[
    #align(center)[#text(size: 28pt, weight: "bold", enunciato)]
  ]
  #body
]

#let esempio(body) = block(width: 100%, fill: sfondo, inset: (x: 16pt, y: 12pt), stroke: (left: 3pt + rosso))[
  #set text(size: 0.88em)
  #stack(dir: ttb, spacing: 16pt, etichetta[Esempio], body)
]

#let domanda(body, titolo: "Domanda") = block(width: 100%, fill: sfondo, inset: (x: 16pt, y: 12pt), stroke: (left: 3pt + rosso))[
  #set text(size: 0.88em)
  #stack(dir: ttb, spacing: 16pt, etichetta(titolo), body)
]

#let colonne(a, b) = grid(columns: (1fr, 1fr), gutter: 32pt, align: top + left, a, b)

// Il video e la descrizione si leggono insieme; le domande occupano tutta la larghezza.
#let caso-video(titolo, video, url, miniatura, descrizione, domande) = slide(titolo)[
  #stack(dir: ttb, spacing: 16pt,
    grid(columns: (300pt, 1fr), gutter: 25pt, align: left + horizon,
      link(url, if miniatura != none {
        image(miniatura, width: 300pt, height: 169pt, fit: "contain", alt: video)
      } else {
        block(width: 300pt, height: 169pt, fill: sfondo, inset: 18pt)[
          #align(center + horizon)[#text(size: 25pt, weight: "bold", fill: rosso)[Guarda il video su YouTube]]
        ]
      }),
      stack(dir: ttb, spacing: 10pt,
        link(url, text(size: 21pt, weight: "bold", fill: rosso)[#video~↗]),
        text(size: 24pt, descrizione),
      ),
    ),
    line(length: 100%, stroke: 1pt + rgb("#d6c8c8")),
    etichetta[Visione e analisi],
    grid(columns: (1fr,) * domande.len(), gutter: 22pt,
      ..domande.enumerate().map(((i, q)) => stack(dir: ttb, spacing: 7pt,
        text(size: 22pt, weight: "bold", fill: rosso)[#(i + 1)],
        text(size: 25pt, q),
      )),
    ),
  )
]

#let analisi-video(titolo, punti, concetto, nota: none, ciclo: false) = slide(titolo)[
  #stack(dir: ttb, spacing: 16pt,
    etichetta[Analisi della comunicazione],
    list(tight: false, spacing: 14pt, ..punti),
    if ciclo {
      block(width: 100%)[
        #set align(center)
        #set text(size: 23pt)
        Azione di A #text(fill: rosso)[→] Reazione di B #text(fill: rosso)[→] Nuova reazione di A \
        #text(fill: rosso)[← Lo scambio prosegue e si alimenta ←]
      ]
    },
    block(width: 100%, fill: sfondo, inset: (x: 16pt, y: 11pt), stroke: (left: 3pt + rosso))[
      #set text(size: 0.88em)
      #stack(dir: ttb, spacing: 16pt, etichetta[Concetto chiave], concetto)
    ],
    if nota != none { text(size: 21pt, nota) },
  )
]

// Componenti condivisi. Percorsi assoluti rispetto alla radice del progetto.
#let rosso = rgb("#c00000")
#let grigio = rgb("#555555")
#let bordo = rgb("#dddddd")

#let riquadro(titolo, body) = block(
  width: 100%,
  breakable: true,
  inset: (x: 12pt, y: 10pt),
  stroke: (left: 2pt + rosso),
  above: 12pt,
  below: 12pt,
)[
  #set par(justify: false)
  #block(below: 5pt, sticky: true)[
    #text(font: "Libertinus Serif", weight: "bold", fill: rosso)[#titolo]
  ]
  #body
]

#let definizione(body, titolo: "Definizione") = riquadro(titolo, body)
#let esempio(body, titolo: "Esempio") = riquadro(titolo, body)
#let domande(body, titolo: "Domande di riflessione") = riquadro(titolo, body)

#let figura(percorso, didascalia, larghezza: 85%, alt: none) = figure(
  image(percorso, width: larghezza, alt: alt),
  caption: didascalia,
  kind: image,
  supplement: [Figura],
)

#let caso-reale(titolo, body, immagine: none, didascalia: none, fonte: none, alt: none) = riquadro(
  [Caso reale · #titolo],
  [
    #body
    #if immagine != none {
      if didascalia != none {
        figura(immagine, didascalia, alt: alt)
      } else {
        align(center, image(immagine, width: 85%, alt: alt))
      }
    }
    #if fonte != none {
      block(above: 6pt)[#text(size: 9pt)[Fonte: #link(fonte)]]
    }
  ],
)

#let dispensa(body, titolo: "Elementi di comunicazione e comunicazione aziendale") = {
  set document(title: titolo)
  // Font incluso in Typst: nessuna installazione aggiuntiva in locale o in CI.
  set text(font: "Libertinus Serif", size: 11pt, lang: "it", fill: black)
  set page(
    paper: "a4",
    margin: (top: 24mm, bottom: 24mm, left: 25mm, right: 23mm),
    header: context {
      if counter(page).get().first() > 1 {
        text(size: 8pt, fill: grigio)[#titolo]
      }
    },
    footer: context align(right, text(size: 9pt, fill: grigio, counter(page).display("1"))),
  )
  set par(justify: true, leading: 0.65em, spacing: 0.8em)
  set heading(numbering: "1.1")
  set list(indent: 14pt, body-indent: 5pt, spacing: 0.32em)
  set block(above: 9pt, below: 9pt)
  set figure(gap: 7pt)
  set table(
    inset: (x: 7pt, y: 6pt),
    stroke: (x: none, y: 0.45pt + bordo),
  )
  show table: it => {
    set text(size: 10pt)
    set par(justify: false, leading: 0.4em)
    it
  }
  show heading: it => block(sticky: true, above: 18pt, below: 9pt)[#it]
  show heading.where(level: 1): set text(size: 19pt, weight: "bold", fill: rosso)
  show heading.where(level: 2): set text(size: 14pt, weight: "bold")
  show heading.where(level: 3): set text(size: 11.5pt, weight: "bold", fill: rosso)
  show figure.caption: set text(size: 9pt, fill: grigio)
  show link: set text(fill: rosso)

  block(below: 20pt)[
    #set par(justify: false)
    #line(length: 22mm, stroke: 3pt + rosso)
    #v(12pt)
    #text(size: 28pt, weight: "bold", hyphenate: false)[#titolo]
    #v(12pt)
    #text(size: 10pt)[Dispensa didattica rielaborata a partire da Annalisa Galardi, Comunicazione d'impresa.]
    #v(10pt)
    #line(length: 100%, stroke: 0.5pt + bordo)
  ]
  body
}

#import "/styles/slides.typ": domanda, etichetta, riferimento, rosso, sfondo, slide

#let video = "https://www.youtube.com/watch?v=AH5R56jILag"

#slide(text(size: 32pt)[Domino’s Pizza — Quando le critiche cambiano un’azienda])[
  #grid(
    columns: (300pt, 1fr),
    column-gutter: 28pt,
    align: (left + top, left + horizon),
    stack(dir: ttb, spacing: 10pt,
      link(video, image(
        "/assets/video/dominos-pizza-turnaround.jpg",
        width: 300pt,
        alt: "Guarda Pizza Turnaround su YouTube. Due persone con il grembiule di Domino’s nella cucina del video.",
      )),
      text(size: 20pt, riferimento(video, [Pizza Turnaround · Domino’s])),
    ),
    text(size: 26pt)[
      Nel 2009 Domino’s riceve numerose critiche sulla qualità delle proprie
      pizze. L’azienda decide di cambiare la ricetta e raccontare
      pubblicamente il processo attraverso un video.
    ],
  )

  #v(16pt)
  #domanda(titolo: "Domanda alla classe")[
    È possibile riconoscere tutte e tre le tipologie di comunicazione aziendale
    in questo caso?
  ]
]

#let fase(tipologia, titolo, spiegazione, icona) = block(
  width: 100%,
  height: 297pt,
  fill: sfondo,
  inset: (x: 15pt, y: 16pt),
  stroke: (top: 3pt + rosso),
)[
  #set align(top + left)
  #stack(dir: ttb, spacing: 12pt,
    image(icona, width: 39pt, height: 39pt),
    etichetta(tipologia),
    block(height: 54pt)[#text(size: 23pt, weight: "bold", titolo)],
    text(size: 21pt, spiegazione),
  )
]

#slide([Domino’s Pizza — Le tre tipologie di comunicazione])[
  #v(18pt)
  #grid(
    columns: (1fr, 26pt, 1fr, 26pt, 1fr),
    column-gutter: 8pt,
    align: center + horizon,
    fase(
      [TERZIARIA],
      [I clienti criticano la pizza],
      [Le recensioni e i commenti negativi provengono dai consumatori.],
      "/assets/svg/dominos-commenti.svg",
    ),
    text(size: 28pt, fill: rosso)[→],
    fase(
      [PRIMARIA],
      [Domino’s cambia davvero la ricetta],
      [L’azienda interviene concretamente sul proprio prodotto,
      modificando ingredienti e preparazione.],
      "/assets/svg/dominos-pizza.svg",
    ),
    text(size: 28pt, fill: rosso)[→],
    fase(
      [SECONDARIA],
      [Domino’s racconta il cambiamento],
      [Attraverso un video progettato dall’azienda, Domino’s riconosce
      pubblicamente le critiche e comunica la nuova ricetta.],
      "/assets/svg/dominos-video.svg",
    ),
  )
]

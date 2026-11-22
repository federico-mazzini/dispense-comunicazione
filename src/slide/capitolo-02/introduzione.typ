#import "/styles/slides.typ": *

#copertina(
  [La comunicazione aziendale],
  [Come comunica un’impresa?],
  [Pubblici, obiettivi e forme della comunicazione aziendale.],
)

#slide([Che cos’è la comunicazione aziendale?], centra: true)[
  #block(width: 100%, fill: sfondo, inset: (x: 24pt, y: 20pt), stroke: (left: 3pt + rosso))[
    #set text(size: 27pt)
    #quote(block: true, attribution: text(size: 21pt, fill: grigio)[*Annalisa Galardi*, _Comunicazione d’impresa_])[
      La comunicazione aziendale è l'insieme dei processi strategici e operativi
      che l'impresa mette in campo per *informare, coinvolgere, supportare e
      persuadere* i suoi pubblici *interni~ed~esterni*.

      La comunicazione aziendale ha l'obbiettivo di contribuire alla
      realizzazione della strategia dell'impresa consolidandone l'*immagine*
      (all'esterno) e la *cultura* (all'interno).
    ]
  ]
]

#slide([I pubblici dell’azienda])[
  #colonne(
    voce([Pubblici interni], [
      Chi lavora nell’impresa, la dirige o partecipa alla sua proprietà.

      #v(12pt)

      - Dipendenti e stagisti
      - Management e dirigenti
      - Soci
    ]),
    voce([Pubblici esterni], [
      Persone e gruppi con cui l’impresa entra in relazione dall’esterno.

      #v(12pt)

      - Clienti
      - Investitori
      - Opinione pubblica
    ]),
  )
]

#slide([Informare, coinvolgere, supportare e persuadere])[
  La comunicazione aziendale è l’insieme dei processi strategici e operativi
  che l’impresa mette in campo per *informare, coinvolgere, supportare e
  persuadere* i suoi pubblici interni ed esterni.

  #v(12pt)
  #set text(size: 26pt)
  #grid(columns: (1fr, 1fr), column-gutter: 32pt, row-gutter: 26pt,
    voce([Informare], [Trasmettere fatti, notizie e decisioni che le persone devono conoscere.]),
    voce([Coinvolgere], [Favorire la partecipazione, il dialogo e il senso di appartenenza.]),
    voce([Supportare], [Fornire istruzioni, chiarimenti e assistenza per aiutare le persone ad agire o risolvere problemi.]),
    voce([Persuadere], [Influenzare opinioni, atteggiamenti e comportamenti, orientando le scelte delle persone.]),
  )
]

#include "esercizio-finalita.typ"

#slide([Immagine e Cultura])[
  La comunicazione aziendale ha l’obbiettivo di contribuire alla
  realizzazione della strategia dell’impresa consolidandone l’*immagine*
  (all’esterno) e la *cultura* (all’interno).

  #v(12pt)
  #stack(dir: ttb, spacing: 22pt,
    voce([Immagine], [Il modo in cui l’impresa viene vista e riconosciuta all’esterno.]),
    voce([Cultura aziendale], [I valori e i modi di lavorare condivisi all’interno dell’impresa.]),
  )
]

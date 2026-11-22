#import "/styles/slides.typ": rosso, slide, sfondo

#let media = (
  (
    lettera: "P",
    nome: "Paid Media",
    sottotitolo: "I media a pagamento",
    icona: "/assets/svg/peso-pubblicita.svg",
    sintesi: [Spazi di comunicazione per i quali l’azienda paga per diffondere un messaggio.],
    definizione: [Sono gli spazi di comunicazione per i quali l’azienda paga per diffondere un messaggio.],
    esempio: [Un’azienda acquista uno spazio pubblicitario in TV per mandare in onda uno spot sul proprio prodotto.],
    chiave: [L’azienda paga per ottenere visibilità.],
  ),
  (
    lettera: "E",
    nome: "Earned Media",
    sottotitolo: "La visibilità guadagnata",
    icona: "/assets/svg/peso-giornale.svg",
    sintesi: [Visibilità ottenuta grazie all’interesse spontaneo di soggetti esterni all’azienda.],
    definizione: [Sono le comunicazioni e le attenzioni che un’azienda riceve da soggetti esterni senza acquistare direttamente lo spazio in cui appaiono.],
    esempio: [Un giornale pubblica spontaneamente un articolo su un’azienda che ha sviluppato un prodotto innovativo.],
    chiave: [L’azienda ottiene visibilità grazie all’interesse di altri.],
  ),
  (
    lettera: "S",
    nome: "Shared Media",
    sottotitolo: "I media condivisi",
    icona: "/assets/svg/peso-condivisione.svg",
    sintesi: [Contenuti prodotti dall’azienda che circolano su piattaforme di terzi tramite condivisioni, commenti e interazioni.],
    definizione: [Sono gli spazi digitali nei quali i contenuti circolano attraverso condivisioni, commenti e interazioni tra azienda e utenti.],
    esempio: [Un’azienda pubblica un video su TikTok e gli utenti lo commentano, lo condividono e ne discutono.],
    chiave: [La comunicazione si diffonde attraverso le interazioni tra le persone.],
  ),
  (
    lettera: "O",
    nome: "Owned Media",
    sottotitolo: "I media propri",
    icona: "/assets/svg/peso-sito.svg",
    sintesi: [Canali che l’azienda possiede e controlla direttamente, come il sito web e la newsletter.],
    definizione: [Sono i canali e gli spazi di comunicazione gestiti direttamente dall’azienda, sui quali ha un elevato controllo editoriale.],
    esempio: [Un’azienda pubblica sul proprio sito web una pagina dedicata alla sua storia e ai suoi valori.],
    chiave: [L’azienda gestisce direttamente lo spazio e i contenuti.],
  ),
)

#let simbolo(mezzo, lato: 36pt) = block(width: lato, height: lato, fill: rosso)[
  #align(center + horizon, image(mezzo.icona, width: 0.68 * lato))
]

#let riquadro-peso(mezzo) = block(
  width: 100%,
  height: 126pt,
  fill: sfondo,
  inset: (x: 14pt, y: 11pt),
  stroke: (left: 3pt + rosso),
)[
  #set align(top + left)
  #stack(dir: ttb, spacing: 11pt,
    grid(
      columns: (36pt, 1fr),
      column-gutter: 12pt,
      align: left + horizon,
      simbolo(mezzo),
      [#text(size: 26pt, weight: "bold", fill: rosso, mezzo.lettera)
        #text(size: 21pt, weight: "bold", fill: rosso)[— #mezzo.nome]],
    ),
    text(size: 21pt, mezzo.sintesi),
  )
]

#let griglia-peso() = grid(
  columns: (1fr, 1fr),
  column-gutter: 21pt,
  row-gutter: 14pt,
  ..media.map(riquadro-peso),
)

#slide([Il modello PESO])[
  #stack(dir: ttb, spacing: 14pt,
    text(size: 25pt, style: "italic")[
      I diversi media che possono ospitare la comunicazione di un’impresa
    ],
    text(size: 24pt)[
      Il modello PESO classifica i diversi media attraverso i quali può circolare la
      comunicazione di un’impresa.
    ],
    griglia-peso(),
  )
]

#let approfondimento-peso(mezzo) = slide(mezzo.nome, centra: true)[
  #stack(dir: ttb, spacing: 24pt,
    grid(
      columns: (48pt, 1fr),
      column-gutter: 16pt,
      align: left + horizon,
      simbolo(mezzo, lato: 48pt),
      text(size: 27pt, style: "italic", mezzo.sottotitolo),
    ),
    text(size: 27pt, mezzo.definizione),
    block(width: 100%, fill: sfondo, inset: (x: 16pt, y: 14pt), stroke: (left: 3pt + rosso))[
      #stack(dir: ttb, spacing: 12pt,
        text(size: 20pt, weight: "bold", fill: rosso)[Esempio],
        text(size: 24pt, mezzo.esempio),
      )
    ],
    stack(dir: ttb, spacing: 9pt,
      text(size: 20pt, weight: "bold", fill: rosso)[Concetto chiave],
      text(size: 25pt, weight: "bold", mezzo.chiave),
    ),
  )
]

#for mezzo in media { approfondimento-peso(mezzo) }

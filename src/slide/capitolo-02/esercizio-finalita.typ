#import "/styles/slides.typ": slide, rosso, sfondo

#let cartella = "/assets/slide/capitolo-02/finalita/"
#let esempi = (
  (
    nome: [1 · Netflix · Aumento dei prezzi],
    descrizione: [Netflix avvisa i propri abbonati che il prezzo dell'abbonamento aumenterà, comunicando il nuovo costo e la data a partire dalla quale entrerà in vigore.],
    // Estratto dell’avviso ricevuto e pubblicato da Everyeye il 7 dicembre 2021.
    // https://tech.everyeye.it/notizie/quando-aumentano-prezzi-netflix-italia-inviate-mail-557113.html
    immagine: "netflix-avviso-prezzi.png",
    // https://assets.nflxext.com/us/ffe/siteui/common/icons/nficon2016.ico
    logo: "netflix-logo.png",
    ritaglio: 0pt,
    altezza-immagine: 202pt,
    alt: "Avviso Netflix ricevuto da Everyeye. Il piano Premium passa a 17,99 euro dal 3 gennaio 2022.",
    fonte: "https://help.netflix.com/it/node/62990",
    risposta: [INFORMARE],
  ),
  (
    nome: [2 · LEGO Ideas],
    descrizione: [LEGO invita gli appassionati a proporre nuovi set e a votare le idee degli altri utenti.],
    // https://www.lego.com/en-us/aboutus/news/2023/august/lego-ideas-the-insect-collection
    immagine: "lego-ideas.jpg",
    ritaglio: -124pt,
    alt: "Il set Collezione di insetti, nato da una proposta della comunità LEGO Ideas",
    fonte: "https://www.lego.com/it-it/themes/ideas/about",
    risposta: [COINVOLGERE],
  ),
  (
    nome: [3 · Dove · Progetto Autostima],
    descrizione: [
      #set text(size: 16pt)
      #set par(leading: 0.16em)
      Dove mette a disposizione materiali educativi e risorse per aiutare adolescenti, genitori e insegnanti ad affrontare le insicurezze legate all'aspetto fisico, gli stereotipi estetici e le pressioni dei social media.
    ],
    // Immagine di apertura del sito italiano del progetto scolastico.
    // https://doveprogettoautostima.it/wp-content/uploads/2026/08/Immagine-120.png
    immagine: "dove-progetto-autostima.jpg",
    ritaglio: none,
    alt: "Ragazze e ragazzi in cerchio nella foto del sito italiano del Progetto Autostima Dove",
    fonte: "https://www.dove.com/it/dove-self-esteem-project.html",
    risposta: [SUPPORTARE],
  ),
  (
    nome: [4 · Nike · Just Do It (1988)],
    descrizione: [Attraverso la storia di un corridore di 80 anni, Nike incoraggia le persone a fare sport, associando il proprio marchio alla determinazione e al superamento dei limiti.],
    // https://i.ytimg.com/vi/0yO7xLAGugQ/hqdefault.jpg
    immagine: "nike-just-do-it-1988.jpg",
    alt: "Guarda Just Do It (1988) su YouTube. Nel fotogramma, il corridore Walt Stack.",
    fonte: "https://www.youtube.com/watch?v=0yO7xLAGugQ",
    video: true,
    risposta: [PERSUADERE],
  ),
)

#let immagine-esempio(esempio) = {
  let file = cartella + esempio.immagine
  if esempio.at("video", default: false) {
    link(esempio.fonte, block(width: 100%, height: 96pt, clip: true, fill: black)[
      #place(top + center, dy: -16pt, image(file, alt: esempio.alt, height: 128pt))
      #place(top + right, dx: -12pt, dy: 10pt, polygon(
        fill: white,
        (0pt, 0pt), (0pt, 14pt), (12pt, 7pt),
      ))
    ])
  } else {
    block(width: 100%, height: 96pt, clip: true, fill: white)[
      #if esempio.ritaglio == none {
        image(file, alt: esempio.alt, width: 100%, height: 100%, fit: "contain")
      } else {
        place(top + left, dy: esempio.ritaglio,
          image(file, alt: esempio.alt, width: 100%, height: esempio.at("altezza-immagine", default: 282pt), fit: "cover"))
      }
      #let logo = esempio.at("logo", default: none)
      #if logo != none {
        place(left + horizon, dx: 14pt, image(cartella + logo, width: 42pt, alt: "Logo Netflix"))
      }
    ]
  }
}

#let riquadro(esempio, soluzioni) = block(width: 100%, fill: sfondo, stroke: 0.6pt + rgb("#e4d7d7"))[
  #stack(dir: ttb, spacing: 0pt,
    immagine-esempio(esempio),
    block(width: 100%, height: 81pt, inset: (x: 12pt, y: 7pt))[
      #stack(dir: ttb, spacing: 5pt,
        grid(
          columns: (1fr, 20pt),
          column-gutter: 7pt,
          align: (left + horizon, right + horizon),
          text(size: 18pt, weight: "bold", fill: rosso, esempio.nome),
          link(esempio.fonte, text(size: 19pt, fill: rosso)[↗]),
        ),
        if soluzioni {
          block(fill: rosso, inset: (x: 9pt, y: 5pt))[
            #text(size: 18pt, weight: "bold", fill: white, esempio.risposta)
          ]
        } else {
          text(size: 17pt, esempio.descrizione)
        },
      )
    ],
  )
]

#let esercizio(soluzioni: false) = slide([Perché le aziende comunicano?])[
  #stack(dir: ttb, spacing: 9pt,
    text(size: 20pt, style: "italic")[
      Osserva questi quattro esempi reali. Qual è lo scopo principale di ciascuna comunicazione?
    ],
    grid(
      columns: (1fr, 1fr),
      column-gutter: 18pt,
      row-gutter: 12pt,
      ..esempi.map(esempio => riquadro(esempio, soluzioni)),
    ),
  )
]

#esercizio()
#esercizio(soluzioni: true)

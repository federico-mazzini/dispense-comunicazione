#import "/styles/slides.typ": domanda, riferimento, rosso, sfondo, slide
#import "peso.typ": media

#let cartella = "/assets/slide/capitolo-02/peso-iphone/"
#let apple = "https://www.apple.com/it/iphone-duo/"
// Immagine prodotto dal comunicato Apple del 9 settembre 2026.
// https://www.apple.com/it/newsroom/2026/09/apple-unveils-iphone-duo/

#slide([Il caso iPhone Duo])[
  #grid(
    columns: (1fr, 465pt),
    column-gutter: 28pt,
    align: (left + horizon, left + top),
    text(size: 26pt)[
      Nel settembre 2026 Apple presenta iPhone Duo, il suo primo smartphone
      pieghevole. Il lancio attira l’attenzione di giornali, appassionati di
      tecnologia e utenti dei social~network.
    ],
    stack(dir: ttb, spacing: 7pt,
      link(apple, image(
        cartella + "iphone-duo.jpg",
        width: 465pt,
        height: 250pt,
        fit: "contain",
        alt: "Immagine ufficiale Apple. iPhone Duo chiuso a sinistra e aperto a destra.",
      )),
      align(right, text(size: 17pt, riferimento(apple, [Apple · iPhone Duo]))),
    ),
  )
  #v(14pt)
  #domanda(titolo: "Domanda alla classe")[
    #text(size: 24pt)[Come possiamo riconoscere le quattro categorie del modello PESO
      nella comunicazione dell’iPhone~Duo?]
  ]
]

#let esempi = (
  (
    sottotitolo: [La pubblicità a pagamento],
    descrizione: [Apple promuove il nuovo iPhone Duo su spazi pubblicitari a pagamento, come il cartellone cofirmato da AT&T a New York.],
    immagine: "cartellone.jpg",
    alt: "Cartellone pubblicitario di iPhone Duo a New York, con i loghi Apple e AT&T.",
    fonte: "https://www.theapplepost.com/2026/09/16/72413/iphone-duo-advertising-begins-appearing-around-the-world-ahead-of-october-launch/",
    testata: [The Apple Post],
  ),
  (
    sottotitolo: [La visibilità guadagnata],
    descrizione: [Giornali e testate tecnologiche parlano spontaneamente del nuovo iPhone, pubblicando articoli, analisi e recensioni.],
    immagine: "the-verge.png",
    alt: "Schermata di The Verge con il titolo The iPhone Duo is Apple’s first foldable.",
    fonte: "https://www.theverge.com/tech/991203/iphone-duo-foldable-news-specs-price-release-date",
    testata: [The Verge],
  ),
  (
    sottotitolo: [La comunicazione condivisa],
    descrizione: [Gli utenti pubblicano commenti, meme e video sull’iPhone Duo, condividendo opinioni e alimentando le discussioni sui social network.],
    immagine: "reazione-social.png",
    alt: "Post di Duolingo su X in reazione al nome iPhone Duo, ripreso da Social Samosa.",
    fonte: "https://www.socialsamosa.com/topical-spot/apple-folds-iphone-brands-unfold-real-time-playbooks-12514428",
    testata: [Social Samosa],
  ),
  (
    sottotitolo: [I media propri dell’azienda],
    descrizione: [Apple presenta l’iPhone Duo sul proprio sito ufficiale, mostrando immagini, caratteristiche tecniche e informazioni sul prodotto.],
    immagine: "apple-it.png",
    alt: "Schermata della pagina Apple Italia con la scritta Ciao, Duo. e l’immagine del prodotto.",
    fonte: apple,
    testata: [Apple Italia],
  ),
)

#let riquadro-iphone(mezzo, esempio) = block(
  width: 100%,
  height: 166pt,
  fill: sfondo,
  inset: (x: 13pt, y: 9pt),
  stroke: (left: 3pt + rosso),
)[
  #stack(dir: ttb, spacing: 7pt,
    grid(
      columns: (1fr, auto),
      column-gutter: 9pt,
      align: (left + horizon, right + horizon),
      text(size: 21pt, weight: "bold", fill: rosso)[#mezzo.lettera — #mezzo.nome],
      text(size: 15pt, riferimento(esempio.fonte, esempio.testata)),
    ),
    text(size: 17pt, style: "italic", esempio.sottotitolo),
    grid(
      columns: (1fr, 183pt),
      column-gutter: 10pt,
      align: (left + top, center + top),
      [
        #set text(size: 17pt)
        #set par(leading: 0.29em)
        #esempio.descrizione
      ],
      link(esempio.fonte, image(
        cartella + esempio.immagine,
        width: 183pt,
        height: 99pt,
        fit: "contain",
        alt: esempio.alt,
      )),
    ),
  )
]

#slide([Il modello PESO in pratica])[
  #stack(dir: ttb, spacing: 13pt,
    text(size: 25pt, style: "italic")[Il lancio dell’iPhone Duo],
    grid(
      columns: (1fr, 1fr),
      column-gutter: 21pt,
      row-gutter: 14pt,
      ..media.zip(esempi).map(((mezzo, esempio)) => riquadro-iphone(mezzo, esempio)),
    ),
  )
]

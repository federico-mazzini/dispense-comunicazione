#import "/styles/slides.typ": slide, riferimento, rosso, sfondo

#let cartella = "/assets/slide/capitolo-03/casi/"
#let caso(titolo, domande, fonte, nome, contesto: none, immagine: none, sottotitolo: none, video: false, sociale: false, commenti: false, originale: none) = slide(
  text(size: 30pt, titolo), sottotitolo: sottotitolo,
)[
  #set text(size: 20pt)
  #set par(leading: 0.28em)
  #stack(dir: ttb, spacing: 18pt,
    grid(columns: (440pt, 1fr), gutter: 27pt, align: left + horizon,
      stack(dir: ttb, spacing: 10pt,
        link(if originale != none { originale } else { fonte }, if sociale {
          grid(columns: (265pt, 165pt), gutter: 10pt,
            image(cartella + "museo-post.png", width: 265pt, height: 280pt, fit: "contain", alt: "Post del Museo Etrusco che cita Taffo e Unieuro."),
            image(cartella + "museo-hoover.png", width: 165pt, height: 280pt, fit: "contain", alt: "Commento di Hoover e risposte degli utenti nella conversazione sul Museo Etrusco."),
          )
        } else if commenti {
          grid(columns: (265pt, 165pt), gutter: 10pt, align: horizon,
            image(cartella + immagine, width: 265pt, height: 280pt, fit: "contain", alt: "Post originale Unieuro dedicato alla lavatrice."),
            image(cartella + "unieuro-commenti.png", width: 165pt, height: 280pt, fit: "contain", alt: "Commenti ironici pubblicati dall’account Unieuro, riprodotti da Gingernlemon."),
          )
        } else {
          image(cartella + immagine, width: 440pt, height: 280pt, fit: "contain")
        }),
        text(size: 17pt, riferimento(fonte, if video { [Guarda il video · #nome] } else { nome })),
        if originale != none { text(size: 15pt, riferimento(originale, [Inserzione originale · PDF])) },
      ),
      block(height: 280pt)[
        #stack(dir: ttb, spacing: 16pt,
          text(size: 21pt, weight: "bold", fill: rosso)[Analizza il caso],
          if contesto != none { contesto },
          enum(spacing: 10pt, ..domande),
        )
      ],
    ),
  )
]

#caso(
  [Unieuro — Un post fuori dal comune],
  (
    [Come descriveresti il tono utilizzato da Unieuro? Quali espressioni te lo fanno capire?],
    [Che tipo di registro linguistico viene utilizzato? È quello che ti aspetteresti da una grande azienda?],
    [A quale pubblico sembra rivolgersi questo messaggio?],
    [Secondo te, perché Unieuro ha scelto di comunicare in questo modo?],
  ),
  "https://gingernlemon.com/unieuro-e-il-suo-social-media-manager/",
  [Gingernlemon · 10 febbraio 2021], immagine: "unieuro.png", commenti: true,
)

#caso(
  [Patagonia — Don’t Buy This Jacket],
  (
    [Quale messaggio vuole trasmettere Patagonia con questa pubblicità?],
    [Che effetto produce la frase “Don’t Buy This Jacket”? Che tono riconosci?],
    [Come descriveresti il registro linguistico utilizzato?],
    [Perché un’azienda potrebbe realizzare una pubblicità che invita apparentemente a non acquistare un suo prodotto?],
  ),
  "https://www.patagonia.com/stories/planet/activism/dont-buy-this-jacket-black-friday-and-the-new-york-times/story-18615.html",
  [Patagonia · Black Friday 2011], immagine: "patagonia.png",
  originale: "https://static1.squarespace.com/static/5ccbe9ffca525b6794c6bd70/t/65eee103866c26745cf1662c/1710153989974/2011-11-25%2BPatagonia%2BAnzeige.pdf",
)

#caso(
  [Samsung — Un comunicato ai clienti],
  (
    [Quale problema sta comunicando Samsung e a chi si rivolge?],
    [Come descriveresti il tono del comunicato? Da quali elementi lo capisci?],
    [Che tipo di registro linguistico viene utilizzato? Perché?],
    [Che cosa potrebbe succedere se Samsung utilizzasse lo stesso tono dei post di Unieuro?],
  ),
  "https://news.samsung.com/global/statement-on-galaxy-note7",
  [Samsung Newsroom · 2 settembre 2016], immagine: "samsung.png",
)

#caso(
  [McDonald’s — Follow the Arches],
  (
    [Che cosa vuole comunicare McDonald’s attraverso questa immagine?],
    [Quali elementi visivi ti permettono di riconoscere l’azienda?],
    [Quanto sono importanti le parole per comprendere il messaggio?],
    [Perché, secondo te, questa comunicazione funziona anche senza mostrare i prodotti venduti?],
  ),
  "https://www.dandad.org/work/d-ad-awards-archive/follow-the-arches",
  [D&AD · Follow the Arches, 2018], immagine: "mcdonalds.png",
)

#caso(
  [LEGO — Le ombre dell’immaginazione],
  (
    [Che cosa osservi nell’immagine? Quale rapporto esiste tra i mattoncini e la loro ombra?],
    [Quale idea vuole comunicare LEGO attraverso questa rappresentazione?],
    [Quali elementi comunicano il messaggio, anche senza una spiegazione scritta?],
    [Secondo te, perché questa immagine può risultare più efficace di una semplice descrizione del prodotto?],
  ),
  "https://curin.io/projects/lego-the-shadow-knows",
  [Curin · The Shadow Knows], immagine: "lego.png",
)

#caso(
  [Apple — Shot on iPhone],
  (
    [Che cosa occupa la maggior parte dello spazio pubblicitario?],
    [Quale caratteristica del prodotto vuole mettere in evidenza Apple?],
    [In che modo l’immagine riesce a comunicare questa caratteristica?],
    [Quale differenza trovi rispetto a una pubblicità che elenca le specifiche tecniche della fotocamera?],
  ),
  "https://www.macrumors.com/2015/03/02/SHOT-ON-iPHONE-6-AD-CAMPAIGN/",
  [MacRumors · Shot on iPhone 6, 2015], immagine: "apple.png",
)

#caso(
  [Zappos — Una telefonata fuori dal comune],
  (
    [Chi sono i partecipanti a questa comunicazione?],
    [Come descriveresti la struttura dello scambio: one-to-one, one-to-many oppure many-to-many?],
    [In che modo il servizio clienti può adattare il proprio messaggio durante la conversazione?],
    [Quali vantaggi può offrire all’azienda questo tipo di comunicazione?],
  ),
  "https://finance.yahoo.com/news/zappos-employee-broke-record-longest-165153389.html",
  [Yahoo Finance · Il record del servizio clienti], immagine: "zappos.png",
  contesto: [Nel 2016 un operatore del servizio clienti Zappos rimase al telefono con un cliente per 10 ore e 43 minuti.],
)

#caso(
  [Apple — La presentazione del primo iPhone],
  (
    [Chi è il mittente principale del messaggio e chi sono i destinatari?],
    [Come classificheresti questa comunicazione in base al numero dei partecipanti?],
    [La comunicazione è prevalentemente unidirezionale o bidirezionale? Perché?],
    [Qual è il ruolo delle immagini e delle dimostrazioni del prodotto durante la presentazione?],
  ),
  "https://www.youtube.com/watch?v=VKpaK670U7s",
  [Presentazione del primo iPhone, 2007], immagine: "jobs.png", video: true,
  contesto: [Il 9 gennaio 2007 Steve Jobs presenta il primo iPhone durante un keynote Apple.],
)

#caso(
  [Quando i brand conversano sui social],
  (
    [Quali aziende e organizzazioni partecipano alla conversazione?],
    [Chi produce i messaggi? Esiste un unico mittente oppure più partecipanti intervengono nello scambio?],
    [Come classificheresti questa comunicazione in base alla relazione tra i partecipanti?],
    [Che ruolo hanno gli utenti che commentano, condividono e rispondono ai contenuti?],
  ),
  "https://www.ilsocialmediacoso.it/2021/01/23/quando-i-musei-sui-social-escono-dalla-naftalina/",
  [ilSocialMediaCoso · Post e conversazione],
  sottotitolo: [Unieuro, Taffo, Museo Etrusco e Hoover], immagine: "museo-post.png", sociale: true,
)

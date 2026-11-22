#import "/styles/slides.typ": slide, riferimento, rosso, sfondo

#let cartella = "/assets/slide/capitolo-03/casi/"
#let caso(titolo, contesto, analisi, concetto, fonte, nome, immagine: none, sottotitolo: none, video: false, sociale: false, commenti: false, originale: none) = slide(
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
      stack(dir: ttb, spacing: 16pt,
        contesto,
        text(size: 21pt, weight: "bold", fill: rosso)[Analisi],
        analisi,
      ),
    ),
    block(width: 100%, fill: sfondo, inset: (x: 14pt, y: 10pt), stroke: (left: 3pt + rosso))[
      #text(size: 21pt, weight: "bold", concetto)
    ],
  )
]

#caso(
  [Unieuro — Quando un’azienda parla come un amico],
  [Nel 2021 Unieuro diventa virale sui social grazie a messaggi ironici, molto diversi dalla pubblicità tradizionale. Il social media manager utilizza battute, espressioni colloquiali e un linguaggio vicino a quello degli utenti.],
  [*Tono* \
   Ironico, giocoso, irriverente.

   *Registro* \
   Informale e colloquiale, con espressioni tipiche delle conversazioni online.],
  [Un’azienda può scegliere un linguaggio informale per avvicinarsi al pubblico e creare familiarità.],
  "https://gingernlemon.com/unieuro-e-il-suo-social-media-manager/",
  [Gingernlemon · 10 febbraio 2021], immagine: "unieuro.png", commenti: true,
)

#caso(
  [Patagonia — Don’t Buy This Jacket],
  [Nel 2011 Patagonia pubblica una pubblicità che invita apparentemente a non acquistare una delle sue giacche. Il messaggio vuole far riflettere sull’impatto ambientale dei consumi e sulla necessità di acquistare in modo responsabile.],
  [*Tono* \
   Provocatorio, serio e riflessivo.

   *Registro* \
   Diretto, comprensibile e argomentativo, senza ricorrere a termini tecnici complessi.],
  [Un messaggio può essere provocatorio senza essere ironico. La scelta del tono dipende dall’effetto che si vuole ottenere.],
  "https://www.patagonia.com/stories/planet/activism/dont-buy-this-jacket-black-friday-and-the-new-york-times/story-18615.html",
  [Patagonia · Black Friday 2011], immagine: "patagonia.png",
  originale: "https://static1.squarespace.com/static/5ccbe9ffca525b6794c6bd70/t/65eee103866c26745cf1662c/1710153989974/2011-11-25%2BPatagonia%2BAnzeige.pdf",
)

#caso(
  [Samsung — Il caso Galaxy Note7],
  [Nel 2016 Samsung comunica un problema di sicurezza relativo al Galaxy Note7 e annuncia la sospensione delle vendite e la sostituzione dei dispositivi interessati. L’azienda deve fornire informazioni precise e trasmettere attenzione verso la sicurezza dei clienti.],
  [*Tono* \
   Serio, responsabile e rassicurante, con un senso di urgenza.

   *Registro* \
   Formale e professionale, con alcuni termini tecnici necessari a spiegare il problema.],
  [Il tono e il registro devono essere adeguati anche alla gravità della situazione. Un linguaggio ironico sarebbe inappropriato in un avviso di sicurezza.],
  "https://news.samsung.com/global/statement-on-galaxy-note7",
  [Samsung Newsroom · 2 settembre 2016], immagine: "samsung.png",
)

#caso(
  [McDonald’s — Follow the Arches],
  [McDonald’s utilizza soltanto una porzione dei suoi celebri archi dorati per indicare la direzione verso un ristorante. Colori e forme del marchio sono così riconoscibili da poter diventare anche indicazioni stradali.],
  [La comunicazione si basa soprattutto sulla riconoscibilità visiva del marchio. Non serve mostrare un hamburger o spiegare dettagliatamente dove si trova il ristorante.],
  [Forme e colori possono trasmettere informazioni anche con pochissime parole.],
  "https://www.dandad.org/work/d-ad-awards-archive/follow-the-arches",
  [D&AD · Follow the Arches, 2018], immagine: "mcdonalds.png",
)

#caso(
  [LEGO — Le ombre dell’immaginazione],
  [Una piccola costruzione realizzata con pochi mattoncini LEGO proietta un’ombra che sembra rappresentare un grande dinosauro. Il messaggio non viene spiegato attraverso una frase: è lo spettatore a interpretare il rapporto tra costruzione e ombra.],
  [L’immagine comunica un’idea astratta: con l’immaginazione, pochi mattoncini possono diventare qualsiasi cosa.],
  [La comunicazione visiva non mostra soltanto oggetti: può rappresentare idee ed emozioni.],
  "https://curin.io/projects/lego-the-shadow-knows",
  [Curin · The Shadow Knows], immagine: "lego.png",
)

#caso(
  [Apple — Shot on iPhone],
  [Apple promuove le capacità fotografiche dell’iPhone attraverso grandi fotografie scattate proprio con il dispositivo. Invece di descrivere soltanto le caratteristiche tecniche della fotocamera, l’azienda mostra direttamente i risultati che è possibile ottenere.],
  [Le fotografie diventano la dimostrazione visiva delle qualità del prodotto. Il testo è ridotto al minimo e lascia spazio alle immagini.],
  [Un’immagine può mostrare una caratteristica di un prodotto più immediatamente di una descrizione.],
  "https://www.macrumors.com/2015/03/02/SHOT-ON-iPHONE-6-AD-CAMPAIGN/",
  [MacRumors · Shot on iPhone 6, 2015], immagine: "apple.png",
)

#caso(
  [Zappos — One-to-one],
  [Zappos, azienda di vendita online, è conosciuta per l’importanza attribuita all’assistenza clienti. Nel 2016 un operatore rimase al telefono con un cliente per 10 ore e 43 minuti, stabilendo un record interno.],
  [*ONE-TO-ONE*

   La comunicazione avviene tra due interlocutori: l’operatore e il cliente. Entrambi possono parlare, ascoltare e adattare le proprie risposte durante la conversazione.],
  [Due interlocutori comunicano direttamente tra loro, con la possibilità di personalizzare lo scambio.],
  "https://finance.yahoo.com/news/zappos-employee-broke-record-longest-165153389.html",
  [Yahoo Finance · Il record del servizio clienti], immagine: "zappos.png",
)

#caso(
  [Steve Jobs — One-to-many],
  [Il 9 gennaio 2007 Steve Jobs presenta il primo iPhone durante un keynote Apple. Un relatore parla davanti a una grande platea, mostrando il prodotto e spiegandone le caratteristiche.],
  [*ONE-TO-MANY*

   Il messaggio procede principalmente da un mittente, Steve Jobs, verso numerosi destinatari. Gli spettatori possono reagire, ma la struttura della presentazione rimane prevalentemente uno-a-molti.],
  [Un unico mittente si rivolge contemporaneamente a molti destinatari.],
  "https://www.youtube.com/watch?v=VKpaK670U7s",
  [Presentazione del primo iPhone, 2007], immagine: "jobs.png", video: true,
)

#caso(
  [Quando le aziende dialogano sui social],
  [Nel gennaio 2021 la comunicazione ironica di Unieuro diventa un fenomeno social. Anche Taffo e il Museo Nazionale Etrusco di Villa Giulia partecipano alla conversazione con propri contenuti. Altri account aziendali, tra cui Hoover, intervengono nei commenti, mentre gli utenti condividono e rispondono.],
  [*MANY-TO-MANY*

   Non esiste un unico mittente che trasmette un messaggio a un pubblico passivo. Organizzazioni e utenti possono produrre contenuti, rispondere, commentare e contribuire alla diffusione della conversazione.],
  [Molti partecipanti possono comunicare tra loro, diventando contemporaneamente destinatari e produttori di messaggi.],
  "https://www.ilsocialmediacoso.it/2021/01/23/quando-i-musei-sui-social-escono-dalla-naftalina/",
  [ilSocialMediaCoso · Post e conversazione],
  sottotitolo: [Unieuro, Taffo, Museo Etrusco e Hoover], immagine: "museo-post.png", sociale: true,
)

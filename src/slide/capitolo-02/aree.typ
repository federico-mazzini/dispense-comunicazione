#import "/styles/slides.typ": slide, voce, esempio, etichetta, sfondo, rosso

#slide([Le aree della comunicazione aziendale])[
  #set text(size: 23pt)
  #set par(leading: 0.3em)
  #stack(dir: ttb, spacing: 17pt,
    [Possiamo distinguere le diverse aree della comunicazione aziendale attraverso due domande fondamentali.],
    grid(columns: (1fr, 1fr), gutter: 24pt,
      voce([PERCHÉ?], [Quale obiettivo vuole raggiungere l’azienda?]),
      voce([CHE COSA?], [Qual è il contenuto della comunicazione?]),
    ),
    grid(columns: (1fr, 1fr), column-gutter: 24pt, row-gutter: 14pt,
      ..(
        ([ISTITUZIONALE], [Comunica l’identità dell’impresa, i suoi valori e il suo ruolo nella società.]),
        ([GESTIONALE], [Favorisce la collaborazione e il coordinamento, comunicando la cultura dell’impresa.]),
        ([COMMERCIALE], [Comunica i prodotti e i servizi offerti dall’impresa e ciò che li distingue dalla concorrenza.]),
        ([ECONOMICO-FINANZIARIA], [Comunica la situazione economica e finanziaria dell’impresa.]),
      ).map(((titolo, testo)) => block(width: 100%, fill: sfondo, inset: 13pt, stroke: (left: 3pt + rosso))[
        #stack(dir: ttb, spacing: 8pt, text(size: 21pt, weight: "bold", fill: rosso, titolo), testo)
      ]),
    ),
  )
]

#let area(titolo, sottotitolo, definizione, obiettivo, caso, concetto) = slide(titolo)[
  #set text(size: 23pt)
  #set par(leading: 0.3em)
  #stack(dir: ttb, spacing: 19pt,
    text(size: 26pt, style: "italic", sottotitolo),
    grid(columns: (1fr, 1fr), gutter: 30pt,
      voce([Che cos’è?], definizione),
      voce([Perché comunica?], obiettivo),
    ),
    esempio(caso),
    stack(dir: ttb, spacing: 7pt,
      etichetta[Concetto chiave],
      text(size: 24pt, weight: "bold", concetto),
    ),
  )
]

#area(
  [Comunicazione istituzionale], [L’identità dell’impresa],
  [L’azienda comunica chi è, quali valori rappresenta e quale ruolo vuole avere nella società.],
  [L’obiettivo è costruire e mantenere un’immagine positiva e un rapporto di fiducia con le persone.],
  [Un’azienda realizza una campagna in cui racconta il proprio impegno per la tutela dell’ambiente.],
  [Comunica l’identità dell’impresa, non un singolo prodotto.],
)

#area(
  [Comunicazione gestionale], [Il funzionamento dell’impresa],
  [Serve a far lavorare insieme le persone che partecipano alle attività aziendali, condividendo informazioni, obiettivi e conoscenze.],
  [L’obiettivo è coordinare il lavoro, favorire la collaborazione e motivare le persone. Non riguarda soltanto le istruzioni operative: contribuisce anche a creare una cultura comune.],
  [La direzione organizza un incontro con i dipendenti per presentare gli obiettivi dell’anno, ascoltare le proposte e coordinare il lavoro.],
  [Aiuta le persone a collaborare e a sentirsi parte dell’organizzazione.],
)

#area(
  [Comunicazione commerciale], [L’offerta dell’impresa],
  [L’azienda comunica quali prodotti o servizi offre, quali caratteristiche possiedono e perché potrebbero essere scelti rispetto a quelli dei concorrenti.],
  [L’obiettivo è costruire relazioni con i clienti, valorizzare l’offerta dell’impresa e sostenere le vendite.],
  [Un’azienda di scarpe sportive realizza una campagna pubblicitaria per presentare un nuovo modello, evidenziandone comodità e prestazioni.],
  [Comunica ciò che l’azienda offre e cosa rende la sua offerta diversa dalle altre.],
)

#area(
  [Comunicazione economico-finanziaria], [La salute dell’impresa],
  [L’azienda comunica informazioni sui propri risultati economici, sui guadagni, sui costi, sui debiti e sulla situazione finanziaria.],
  [L’obiettivo è permettere a investitori, soci, banche e altri soggetti interessati di valutare la solidità e l’andamento dell’impresa.],
  [Un’azienda pubblica il bilancio annuale, mostrando quanto ha guadagnato, quanto ha speso e quali investimenti ha realizzato.],
  [Comunica come sta andando l’azienda dal punto di vista economico e finanziario.],
)

#slide(text(size: 30pt)[Come possiamo classificare la comunicazione aziendale?])[
  #set text(size: 20pt)
  #set par(leading: 0.28em)
  #stack(dir: ttb, spacing: 12pt,
    [Abbiamo studiato tre modi diversi per osservare e classificare la comunicazione aziendale. Ognuno risponde a una domanda differente.],
    grid(columns: (1fr, 1fr, 1fr), gutter: 23pt,
      ..(
        (
          [1. Tipologie di comunicazione],
          [Primaria, secondaria e terziaria],
          [Chi comunica e in che modo?],
          [Permettono di distinguere ciò che l’azienda fa, ciò che dice e ciò che gli altri dicono di lei.],
        ),
        (
          [2. Modello PESO],
          [Paid, Earned, Shared e Owned Media],
          [Attraverso quali media circola la comunicazione?],
          [Permette di distinguere i media in base al pagamento, alla visibilità ottenuta da soggetti esterni, alle interazioni e al controllo dei canali.],
        ),
        (
          [3. Aree della comunicazione],
          [Istituzionale, gestionale, commerciale ed economico-finanziaria],
          [Quale aspetto dell’impresa viene comunicato e con quale obiettivo?],
          [Permettono di distinguere la comunicazione in base ai suoi contenuti e agli obiettivi aziendali.],
        ),
      ).map(((titolo, categorie, domanda, testo)) => stack(dir: ttb, spacing: 10pt,
        text(size: 21pt, fill: rosso, weight: "bold", titolo),
        text(size: 19pt, style: "italic", categorie),
        text(weight: "bold", domanda),
        testo,
      )),
    ),
    block(width: 100%, fill: sfondo, inset: 13pt, stroke: (left: 3pt + rosso))[
      #text(size: 21pt, weight: "bold")[Una stessa comunicazione aziendale può essere classificata contemporaneamente secondo tutte e tre le prospettive.]
    ],
  )
]

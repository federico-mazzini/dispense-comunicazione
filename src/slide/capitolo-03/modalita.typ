#import "/styles/slides.typ": slide, voce, esempio, domanda, rosso, sfondo

// I titoli lunghi conservano la gerarchia delle altre presentazioni.
#let pagina(titolo, body, centra: false, sottotitolo: none) = slide(text(size: 30pt, titolo), centra: centra, sottotitolo: sottotitolo)[
  #set text(size: 20pt)
  #set par(leading: 0.28em)
  #body
]
#let conclusione(body) = block(width: 100%, fill: sfondo,
  inset: (x: 14pt, y: 10pt), stroke: (left: 3pt + rosso))[
  #text(size: 20pt, weight: "bold", body)
]

#pagina([Le modalità della comunicazione])[
  #stack(dir: ttb, spacing: 24pt,
    [Non tutte le comunicazioni avvengono nello stesso modo. Quando comunichiamo, scegliamo come costruire e trasmettere il messaggio in base agli obiettivi e alle persone a cui ci rivolgiamo.],
    grid(columns: (360pt, 1fr), column-gutter: 36pt, row-gutter: 21pt,
      text(fill: rosso, weight: "bold")[Destinatario, tono e registro],
      [A chi ci rivolgiamo e quale linguaggio utilizziamo?],
      text(fill: rosso, weight: "bold")[Comunicazione verbale, visiva e multimediale],
      [Quali linguaggi utilizziamo per esprimere il messaggio?],
      text(fill: rosso, weight: "bold")[Comunicazione unidirezionale e bidirezionale],
      [Il messaggio procede in una sola direzione oppure gli interlocutori possono rispondere?],
      text(fill: rosso, weight: "bold")[One-to-one, one-to-many e many-to-many],
      [Come sono organizzati i partecipanti allo scambio?],
      text(fill: rosso, weight: "bold")[Comunicazione sincrona e asincrona],
      [Gli interlocutori comunicano nello stesso momento oppure in momenti diversi?],
    ),
    conclusione[Queste caratteristiche riguardano la comunicazione in generale e si applicano anche alla comunicazione delle imprese.],
  )
]

#pagina([Destinatario, tono e registro], sottotitolo: [Non comunichiamo allo stesso modo con tutte le persone])[
  #stack(dir: ttb, spacing: 12pt,
    grid(columns: (1fr, 1fr, 1fr), gutter: 24pt,
      voce([Destinatario], [Il destinatario è la persona o il gruppo a cui è rivolto il messaggio. Prima di comunicare dobbiamo chiederci a chi stiamo parlando e che cosa vogliamo ottenere.]),
      voce([Tono], [Il tono è l’atteggiamento che il messaggio trasmette. Può essere amichevole, serio, rassicurante, entusiasta, urgente oppure ironico.]),
      voce([Registro], [Il registro riguarda il tipo e il livello di linguaggio utilizzato. Può essere formale, informale o tecnico.]),
    ),
    domanda(titolo: "Esempio — Un ordine in ritardo")[
      #grid(columns: (1fr, 1fr), gutter: 26pt,
        stack(dir: ttb, spacing: 5pt,
          text(weight: "bold")[Al cliente],
          [«Ci scusiamo per il disagio. La consegna del suo ordine subirà un ritardo di un giorno. La terremo aggiornata.»],
          text(style: "italic")[Registro formale, tono rassicurante.],
        ),
        stack(dir: ttb, spacing: 5pt,
          text(weight: "bold")[Al collega],
          [«Ciao, l’ordine arriverà con un giorno di ritardo. Puoi avvisare il cliente?»],
          text(style: "italic")[Registro informale, tono amichevole.],
        ),
      )
    ],
    conclusione[Il contenuto da comunicare è lo stesso, ma il modo in cui viene presentato cambia in base al destinatario. Tono e registro sono aspetti differenti e possono combinarsi.],
  )
]

#pagina([Comunicazione verbale, visiva e multimediale], centra: true, sottotitolo: [I linguaggi con cui esprimiamo un messaggio])[
  #stack(dir: ttb, spacing: 15pt,
    grid(columns: (1fr, 1fr, 1fr), gutter: 25pt,
      voce([Comunicazione verbale], [La comunicazione verbale utilizza parole pronunciate oppure scritte, come nelle conversazioni, nelle email e nei comunicati.]),
      voce([Comunicazione visiva], [La comunicazione visiva utilizza immagini, colori, forme e simboli. Ne sono esempi fotografie, loghi, illustrazioni, pittogrammi e infografiche.]),
      voce([Comunicazione multimediale], [La comunicazione multimediale combina più mezzi espressivi, come testo, immagini, audio e video. È il caso dei video pubblicitari e delle presentazioni multimediali.]),
    ),
    esempio[Un’azienda può presentare un nuovo prodotto attraverso un’email che ne descrive le caratteristiche, un’immagine pubblicitaria che ne mostra l’aspetto oppure un video che combina immagini, parole e musica.],
  )
]

#pagina([Comunicazione unidirezionale e bidirezionale], centra: true, sottotitolo: [In quale direzione circola il messaggio?])[
  #stack(dir: ttb, spacing: 22pt,
    grid(columns: (1fr, 1fr), gutter: 32pt,
      stack(dir: ttb, spacing: 17pt,
        voce([Comunicazione unidirezionale], [La comunicazione è unidirezionale quando il messaggio procede dal mittente verso i destinatari senza prevedere un vero scambio di risposte.]),
        align(center, text(size: 24pt)[Mittente #text(fill: rosso)[→] Destinatari]),
        esempio[Uno spot televisivo, un avviso affisso su una porta, un video informativo mostrato ai dipendenti.],
      ),
      stack(dir: ttb, spacing: 17pt,
        voce([Comunicazione bidirezionale], [La comunicazione è bidirezionale quando il destinatario può rispondere e gli interlocutori si alternano nei ruoli di mittente e destinatario.]),
        align(center, text(size: 24pt)[Interlocutore A #text(fill: rosso)[↔] Interlocutore B]),
        esempio[Una conversazione, una discussione in classe, uno scambio di email.],
      ),
    ),
  )
]

#let persona(x, y) = place(top + left, dx: x * 1pt, dy: y * 1pt)[
  #block(width: 16pt, height: 16pt)[
    #place(top + left, circle(radius: 8pt, fill: rosso.lighten(94%), stroke: 0.8pt + rosso))
    #place(top + left, dx: 5.5pt, dy: 3pt, circle(radius: 2pt, fill: rosso, stroke: none))
    #place(top + left, dx: 3pt, dy: 8pt, ellipse(width: 9pt, height: 5pt, fill: rosso, stroke: none))
  ]
]
#let collegamento(a, b, freccia: false) = {
  let dx = b.at(0) - a.at(0)
  let dy = b.at(1) - a.at(1)
  let lunghezza = calc.sqrt(dx * dx + dy * dy)
  let ux = dx / lunghezza
  let uy = dy / lunghezza
  place(top + left, line(start: (a.at(0) * 1pt, a.at(1) * 1pt), end: (b.at(0) * 1pt, b.at(1) * 1pt), stroke: 0.8pt + rosso))
  if freccia {
    place(top + left, polygon(
      (b.at(0) * 1pt, b.at(1) * 1pt),
      ((b.at(0) - 4 * ux + 2 * uy) * 1pt, (b.at(1) - 4 * uy - 2 * ux) * 1pt),
      ((b.at(0) - 4 * ux - 2 * uy) * 1pt, (b.at(1) - 4 * uy + 2 * ux) * 1pt),
      fill: rosso, stroke: none,
    ))
  }
}
#let schema(modello) = align(center, block(width: 190pt, height: 60pt)[
  #if modello == 1 {
    collegamento((53, 30), (137, 30), freccia: true)
    collegamento((137, 30), (53, 30), freccia: true)
    persona(37, 22)
    persona(137, 22)
  } else if modello == 2 {
    for y in (8, 30, 52) {
      collegamento((53, 30), (137, y), freccia: true)
    }
    persona(37, 22)
    for y in (0, 22, 44) { persona(137, y) }
  } else {
    let nodi = ((95, 8), (150, 24), (128, 52), (62, 52), (40, 24))
    for (a, b) in ((0, 1), (1, 2), (2, 3), (3, 4), (4, 0), (0, 2), (1, 3)) {
      collegamento(nodi.at(a), nodi.at(b))
    }
    for (x, y) in nodi { persona(x - 8, y - 8) }
  }
])

#pagina([One-to-one, one-to-many e many-to-many], sottotitolo: [Come sono organizzati i partecipanti alla comunicazione?])[
  #stack(dir: ttb, spacing: 10pt,
    grid(columns: (1fr, 1fr, 1fr), gutter: 25pt,
      stack(dir: ttb, spacing: 10pt,
        voce([One-to-one], [*Uno a uno*]),
        schema(1),
        pad(bottom: 1em, [Due interlocutori comunicano tra loro.]),
        esempio[Un responsabile e un collaboratore durante un colloquio individuale.],
      ),
      stack(dir: ttb, spacing: 10pt,
        voce([One-to-many], [*Uno a molti*]),
        schema(2),
        [Un mittente comunica un messaggio a numerosi destinatari.],
        esempio[Un’azienda invia una newsletter a tutti i propri clienti oppure trasmette una pubblicità televisiva.],
      ),
      stack(dir: ttb, spacing: 10pt,
        voce([Many-to-many], [*Molti a molti*]),
        schema(3),
        [Numerose persone possono creare, ricevere e scambiarsi messaggi e contenuti.],
        esempio[Gli utenti partecipano a una discussione online, pubblicando contenuti e rispondendosi reciprocamente.],
      ),
    ),
    conclusione[Internet e i social network hanno reso molto più semplice per le persone diventare sia destinatari sia produttori di contenuti.],
  )
]

#pagina([Comunicazione sincrona e asincrona], centra: true, sottotitolo: [Quando avviene lo scambio comunicativo?])[
  #stack(dir: ttb, spacing: 14pt,
    grid(columns: (1fr, 1fr), gutter: 32pt,
      stack(dir: ttb, spacing: 15pt,
        voce([Comunicazione sincrona], [La comunicazione è sincrona quando gli interlocutori partecipano allo scambio nello stesso momento.]),
        esempio[Un colloquio in presenza, una telefonata o una videoriunione.],
      ),
      stack(dir: ttb, spacing: 15pt,
        voce([Comunicazione asincrona], [La comunicazione è asincrona quando il destinatario può leggere, ascoltare o vedere il messaggio in un momento successivo.]),
        esempio[Un’email oppure un messaggio pubblicato su Classroom che gli studenti leggeranno nel pomeriggio.],
      ),
    ),
  )
]

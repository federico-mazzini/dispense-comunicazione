// Elementi di comunicazione e comunicazione aziendale
// Dispensa scolastica: sorgente Typst. Tutti i contenuti sono editabili.
// Compilare dalla cartella che contiene figure/: typst compile dispense_comunicazione.typ dispense_comunicazione.pdf
#let brick = rgb("#A33B32")
#let ink = rgb("#262421")
#let muted = rgb("#57514e")
#let rule = rgb("#d2c8c4")
#set document(title: "Elementi di comunicazione e comunicazione aziendale")
#set page(
  paper: "a4",
  margin: (top: 22mm, bottom: 22mm, left: 20mm, right: 20mm),
  header: context {
    if counter(page).get().first() > 1 {
      align(right)[#text(font: "Noto Sans", size: 8.5pt, fill: muted)[ELEMENTI DI COMUNICAZIONE]]
    }
  },
  footer: context {
    align(right)[#text(font: "Noto Sans", size: 9pt, fill: muted)[#counter(page).display()]]
  },
)
#set text(font: "Noto Serif", size: 11.3pt, lang: "it", fill: ink)
#set par(justify: true, leading: 0.43em, spacing: 0.70em)
#set heading(numbering: "1.1")
#set list(indent: 14pt, body-indent: 5pt, spacing: 0.32em)
#show heading.where(level: 1): set text(font: "Noto Sans", size: 18pt, weight: "semibold", fill: brick)
#show heading.where(level: 2): set text(font: "Noto Sans", size: 14pt, weight: "semibold", fill: ink)
#show heading.where(level: 3): set text(font: "Noto Sans", size: 12pt, weight: "semibold", fill: brick)
#show quote: it => block(
  width: 100%,
  breakable: false,
  inset: (left: 11pt, right: 2pt, top: 3pt, bottom: 3pt),
  stroke: (left: 1.5pt + brick),
  above: 6pt,
  below: 9pt,
)[#it.body]
#show table: it => {
  set text(size: 10.6pt)
  set par(justify: false, leading: 0.34em)
  it
}
#set table(
  inset: (x: 7pt, y: 6pt),
  stroke: (x: none, y: 0.45pt + rule),
)
#show figure: it => block(breakable: false, above: 11pt, below: 10pt)[#it]
#show figure.caption: set text(font: "Noto Sans", size: 10pt, fill: muted)
// Frontespizio compatto: nessuna pagina separata, una sola nota di fonte.
#block(below: 14pt)[
  #rect(width: 18mm, height: 2.5pt, fill: brick, stroke: none)
  #v(8pt)
  #text(font: "Noto Sans", size: 23pt, weight: "bold", fill: ink)[Elementi di comunicazione e #linebreak()comunicazione aziendale]
  #v(11pt)
  #text(font: "Noto Serif", size: 10.7pt, fill: muted)[Dispensa didattica rielaborata a partire da Annalisa Galardi, #emph[Comunicazione d'impresa].]
  #v(11pt)
  #line(length: 100%, stroke: 0.6pt + rule)
]

= La comunicazione
La parola #emph[comunicazione] deriva dal latino #emph[communicare],
che significa «mettere in comune». Quando comunichiamo, condividiamo
informazioni, conoscenze, bisogni, emozioni, opinioni e punti di vista.

Comunicare, però, non significa soltanto trasmettere informazioni.
Significa anche #strong[costruire relazioni]. Quando due persone
parlano, infatti, non svolgono sempre due ruoli fissi. Chi invia un
messaggio può diventare subito il destinatario della risposta, e
viceversa. Per questo la comunicazione è un #strong[processo circolare].

La risposta dell’altra persona si chiama #strong[feedback]. Può essere
esplicita, come una frase o una domanda, oppure implicita, come
un’espressione del viso. Il feedback permette a chi comunica di capire
come viene accolto il messaggio e, se necessario, di modificarlo.

#quote(block: true)[
#strong[Esempio quotidiano]

Uno studente spiega un esercizio a un compagno. Se il compagno fa una
faccia perplessa, lo studente capisce che deve ripetere un passaggio.
Quell’espressione è già una forma di feedback.
]

Spesso usiamo le parole #emph[informazione] e #emph[comunicazione] come
se fossero sinonimi, ma non indicano esattamente la stessa cosa.
#strong[Informare] significa far arrivare dei dati o un contenuto da una
fonte a un destinatario: il percorso può essere lineare.
#strong[Comunicare] comprende anche il significato che le persone
attribuiscono al messaggio e la relazione che costruiscono durante lo
scambio. Informare è, quindi, una delle possibili funzioni della
comunicazione.

Per capirsi, le persone devono condividere almeno in parte un
#strong[codice linguistico], per esempio la stessa lingua, e un
#strong[codice culturale], cioè conoscenze e significati comuni. In
questo modo non si limitano a ricevere parole: partecipano insieme alla
costruzione del significato dello scambio.

#quote(block: true)[
#strong[Esempio quotidiano]

In una chat di classe una battuta può risultare chiarissima a chi
conosce il contesto, ma incomprensibile a uno studente appena arrivato.
Le parole sono le stesse: cambiano le conoscenze condivise.
]

#figure(
  image("figure/modello.svg", width: 98%),
  caption: [Gli elementi del processo comunicativo]
)

== Gli elementi del processo comunicativo
Per descrivere una comunicazione possiamo individuare dieci elementi
fondamentali. Alcuni riguardano il percorso del messaggio; altri il modo
in cui il messaggio viene interpretato e gli effetti che produce.

- #strong[Mittente:] chi dà inizio all’atto comunicativo, cioè chi invia
  il messaggio.

- #strong[Codifica:] il passaggio con cui il mittente trasforma ciò che
  vuole comunicare in segni, come parole, suoni, gesti, immagini o
  simboli.

- #strong[Messaggio:] il contenuto che viene condiviso.

- #strong[Canale:] il mezzo attraverso cui il messaggio viaggia. Se
  parliamo di persona, la voce si propaga nell’aria; in una telefonata o
  in una chat intervengono strumenti tecnici.

- #strong[Decodifica:] il processo con cui chi riceve i segni cerca di
  comprenderne il significato. Il destinatario, quindi, non è passivo:
  interpreta.

- #strong[Destinatario:] chi riceve e interpreta il messaggio. Il
  mittente, quando prepara il messaggio, tiene già conto della persona a
  cui si rivolge. Se il messaggio non raggiunge il destinatario, lo
  scambio non può dirsi completato.

- #strong[Rumore:] qualsiasi elemento che può disturbare la
  comunicazione. Può dipendere da chi parla, dal canale oppure dal
  contesto: per esempio parole pronunciate male, una connessione
  instabile o una sirena.

- #strong[Contesto:] la situazione in cui avviene la comunicazione,
  comprese le circostanze e il rapporto tra gli interlocutori.

- #strong[Effetti:] i risultati prodotti dalla comunicazione, sia
  nell’immediato sia nel tempo.

- #strong[Feedback:] la risposta del destinatario che torna verso il
  mittente e lo aiuta a capire come è stato ricevuto il messaggio.

#quote(block: true)[
#strong[Esempio quotidiano]

Un insegnante scrive «La verifica sarà venerdì» su una piattaforma
scolastica. L’insegnante è il mittente, la frase è il messaggio, la
scrittura è il codice usato e la piattaforma è il canale. Se uno
studente chiede «Venerdì di questa settimana?», quella domanda è un
feedback.
]

Prima di comunicare qualcosa, è utile porsi alcune domande. La tabella
mostra che cosa dobbiamo chiarire.

#block(breakable: false)[
#figure(
align(center)[#table(
  columns: 2,
  align: (col, row) => (left,left,).at(col),
  inset: 6pt,
  [#strong[Domanda]], [#strong[Che cosa dobbiamo definire]],
  [Chi comunica?],
  [L’identità del mittente.],
  [Che cosa comunica?],
  [Il contenuto del messaggio.],
  [A chi comunica?],
  [Il destinatario del messaggio.],
  [Perché comunica?],
  [Lo scopo che vuole raggiungere.],
  [Come comunica?],
  [Il codice e il canale da utilizzare.],
  [In quali circostanze?],
  [La situazione e la storia del rapporto tra le persone coinvolte.],
  [Con quali risultati?],
  [Come misurare e valutare gli effetti nel tempo.],
)]
)
]

== La pragmatica della comunicazione umana
La #strong[Scuola di Palo Alto] ha studiato la comunicazione mettendo al
centro il comportamento delle persone e le loro relazioni. Gli studiosi
hanno mostrato che per comprendere un messaggio non basta conoscere le
parole: conta anche il #strong[contesto] in cui vengono pronunciate e il
rapporto tra chi parla e chi ascolta.

Nel 1967 Paul #strong[Watzlawick], Janet #strong[Beavin] e Don
#strong[Jackson] hanno presentato cinque #strong[assiomi della
comunicazione], cioè cinque principi fondamentali utilizzati per
descrivere come comunichiamo. Questi principi sono utili anche per
capire la comunicazione all’interno delle imprese.

=== Assioma 1 — Non si può non comunicare.
Quando siamo in relazione con altre persone, #strong[anche il
comportamento e il silenzio possono comunicare qualcosa]. Non serve
pronunciare una frase: un gesto, un’assenza o il fatto di evitare lo
sguardo possono essere interpretati dagli altri.

Immaginiamo una persona stanca che, sul treno, alza un giornale davanti
al viso per non parlare con nessuno. Anche se non dice nulla, sta
facendo capire che non desidera conversare. Allo stesso modo, due
persone ferme e in silenzio in ascensore possono trasmettere imbarazzo.

#quote(block: true)[
#strong[Esempio quotidiano]

Durante un lavoro di gruppo, uno studente rimane in silenzio e si gira
dall’altra parte. Il suo comportamento può essere interpretato come
fastidio o disinteresse, anche se non possiamo sapere con certezza che
cosa stia pensando.
]

Il principio vale anche per le imprese. Persino la forma di un prodotto
o la sua presenza su uno scaffale trasmette un messaggio. Due confezioni
molto diverse possono far pensare, per esempio, a uno stile elegante
oppure sportivo, anche senza una pubblicità.

#figure(
  image("figure/confezioni.svg", width: 88%),
  caption: [L’aspetto di una confezione comunica qualcosa]
)

=== Assioma 2 — Ogni comunicazione ha un aspetto di contenuto e uno di relazione.
Ogni messaggio comunica due cose: #strong[che cosa viene detto] \(il
contenuto) e #strong[come viene presentato] \(la relazione). Il modo di
parlare può far capire se il mittente sta chiedendo, ordinando,
scherzando o criticando. Queste indicazioni sul modo di interpretare il
messaggio costituiscono la #strong[metacomunicazione], cioè una
comunicazione che aiuta a interpretarne un’altra.

La parola «bene!» può essere un complimento sincero oppure un commento
ironico. Il contenuto è identico, ma il tono e l’espressione del viso ne
cambiano il significato. Anche «Chiudi la finestra!» può essere detto
gentilmente oppure gridato battendo la mano sul tavolo: nella seconda
situazione viene percepito come un ordine.

#quote(block: true)[
#strong[Esempio quotidiano]

Un compagno scrive «bravissimo» in chat. Senza il tono della voce, può
non essere chiaro se stia facendo un complimento oppure prendendo in
giro qualcuno. Un’emoji, quando appropriata, può aiutare a chiarire
l’intenzione.
]

=== Assioma 3 — La relazione dipende da come si interpreta la sequenza degli scambi.
In una discussione, le persone possono raccontare gli stessi fatti in
modo diverso. Ciascuno tende a individuare un punto di partenza e a
pensare che il comportamento dell’altro sia la #emph[causa], mentre il
proprio sia la #emph[conseguenza]. Questo modo di suddividere e
interpretare gli scambi si chiama #strong[punteggiatura della
comunicazione].

Per esempio, una persona dice: «Non decido mai perché il mio partner
decide tutto». Il partner risponde: «Devo decidere tutto perché l’altro
non prende mai iniziative». Nessuno dei due considera il proprio
comportamento come parte dello stesso circolo.

#figure(
  image("figure/punteggiatura.svg", width: 95%),
  caption: [Due interpretazioni della stessa relazione]
)

#quote(block: true)[
#strong[Esempio quotidiano]

Due amici litigano. Uno dice: «Ti evito perché mi rispondi male».
L’altro ribatte: «Ti rispondo male perché mi eviti». Ognuno considera il
proprio comportamento una reazione a quello dell’altro.
]

Anche in azienda può accadere: un responsabile prende tutte le decisioni
perché considera il collaboratore poco propositivo; il collaboratore,
invece, non prende iniziative perché pensa che il responsabile non gli
lasci autonomia.

=== Assioma 4 — Comunichiamo con il modulo analogico e con il modulo digitale.
Qui la parola #strong[digitale] non significa «fatto con un computer».
Indica l’uso di #strong[segni convenzionali], come le parole: il
significato dipende dalle regole di una lingua o di un codice condiviso.
Il modulo #strong[analogico], invece, è legato soprattutto a gesti,
immagini, espressioni, postura e aspetti non verbali. Spesso comunica
qualcosa sulla relazione tra le persone.

I due moduli possono essere usati separatamente: per salutare un amico
possiamo dire «ciao» oppure muovere una mano. Possono anche
#strong[rafforzarsi], se diciamo «ciao» e salutiamo con la mano nello
stesso momento. A volte, però, #strong[si contraddicono]: per esempio,
quando una persona dice di ascoltare con interesse ma continua a
guardare il telefono.

#quote(block: true)[
#strong[Esempio quotidiano]

Una persona dice «Va tutto bene», ma ha gli occhi lucidi e la voce
tremante. Le parole e il comportamento non sembrano trasmettere lo
stesso messaggio.
]

#figure(
  image("figure/analogico_digitale.svg", width: 83%),
  caption: [Modulo analogico e modulo digitale]
)

=== Assioma 5 — Gli scambi possono essere simmetrici o complementari.
Le relazioni sono #strong[simmetriche] quando gli interlocutori si
considerano sullo stesso piano e tendono a ridurre le differenze di
ruolo. Sono #strong[complementari] quando si basano su ruoli differenti
e queste differenze vengono riconosciute. «Complementare» non significa
necessariamente migliore o peggiore: significa che i ruoli non sono
uguali.

#quote(block: true)[
#strong[Esempio quotidiano]

Due compagni discutono alla pari su come organizzare una presentazione:
la relazione è simmetrica. Durante una lezione, insegnante e studenti
hanno compiti e responsabilità differenti: la relazione è complementare.
]

Il tipo di rapporto può cambiare a seconda della situazione. Due persone
che a casa interagiscono come partner possono avere ruoli diversi sul
lavoro, per esempio se una è responsabile del reparto in cui lavora
l’altra.

= La comunicazione aziendale
La #strong[comunicazione d’impresa] comprende i processi e le attività
con cui un’azienda informa, coinvolge, sostiene e cerca di convincere le
persone con cui entra in relazione. Queste persone possono trovarsi
#strong[all’interno] dell’impresa, come i dipendenti, oppure
#strong[all’esterno], come clienti, fornitori e cittadini.

La comunicazione non è separata dagli obiettivi aziendali: deve aiutare
l’impresa a realizzare la propria #strong[strategia]. Verso l’esterno
contribuisce a costruire la sua #strong[immagine]; all’interno sostiene
la #strong[cultura aziendale], cioè valori e modi condivisi di
lavorare. Quando quello che un’impresa dice è coerente con quello che
fa, diventa più riconoscibile e può migliorare la propria
#strong[reputazione], cioè il giudizio che gli altri hanno di lei.

#quote(block: true)[
#strong[Esempio quotidiano]

Un negozio dichiara di rispettare i clienti, ma non risponde mai alle
richieste di assistenza. Questa contraddizione può danneggiare la sua
reputazione, anche se la pubblicità è ben fatta.
]

== Tre tipi di comunicazione: primaria, secondaria e terziaria
Secondo la classificazione proposta da Alessandra Mazzei \(2015),
possiamo distinguere tre tipi di comunicazione d’impresa.

- #strong[Primaria:] è quella che passa attraverso i
  #strong[comportamenti]. Le azioni dell’impresa parlano anche quando
  nessuno ha preparato un messaggio. Ciò che clienti e dipendenti vedono
  e vivono può essere ricordato facilmente. Per essere credibile,
  l’impresa deve quindi confermare con i fatti ciò che promette a
  parole.

- #strong[Secondaria:] è la comunicazione realizzata attraverso
  #strong[messaggi e segni] progettati intenzionalmente: testi,
  immagini, discorsi, presentazioni, campagne. Richiede competenze
  specifiche. È importante, ma deve sostenere una realtà coerente: una
  buona comunicazione non può sostituire comportamenti scorretti.

- #strong[Terziaria:] avviene quando #strong[sono altre persone a
  parlare dell’impresa]. In questo caso l’azienda è l’argomento del
  messaggio, non il suo mittente.

#quote(block: true)[
#strong[Esempio quotidiano]

Una pizzeria consegna gli ordini puntualmente \(comunicazione primaria),
pubblica una foto con il nuovo menu \(secondaria) e riceve una
recensione da un cliente \(terziaria). Sono tre modi diversi in cui
comunica la propria identità.
]

Con il #strong[web 2.0] e i social media la comunicazione terziaria è
diventata molto importante. Chi acquista un prodotto non è più soltanto
un consumatore: può anche creare contenuti, commenti e recensioni. Per
questo si usa talvolta il termine #strong[«consumAutore»]. I contenuti
creati dagli utenti sono chiamati #emph[user generated content]
\(#strong[UGC]).

In passato la comunicazione pubblicitaria funzionava spesso secondo il
modello #emph[broadcasting], cioè #strong[da uno a molti]:
un’emittente televisiva o un giornale parlava a un grande pubblico.
Oggi, grazie alle piattaforme digitali, i contenuti circolano anche
#strong[da molti a molti]: numerose persone pubblicano, rispondono e
condividono. Le aziende devono quindi ascoltare ciò che viene detto su
di loro e dialogare con il pubblico.

== Mind, body e soul: tre aspetti della comunicazione
Possiamo descrivere la comunicazione d’impresa usando tre parole
inglesi, come se l’azienda fosse una persona.

- #strong[Mind \(mente):] è la parte #strong[strategica]. Stabilisce
  gli obiettivi della comunicazione e pianifica le azioni necessarie per
  raggiungerli.

- #strong[Body \(corpo):] è la parte #strong[operativa]. Riguarda ciò
  che si realizza concretamente: testi, immagini, identità visiva,
  presentazioni, eventi, scelta dei canali e gestione delle relazioni.

- #strong[Soul \(anima):] sono i #strong[valori], l’etica e la cultura
  dell’azienda. Possono distinguere imprese che vendono prodotti simili
  o usano strategie simili.

#quote(block: true)[
#strong[Esempio quotidiano]

Un marchio di abbigliamento decide di comunicare la propria attenzione
all’ambiente \(mind), realizza un sito e una campagna su questo tema
\(body) e dimostra nelle scelte aziendali di rispettare davvero quei
valori \(soul).
]

== Il modello PESO
Per scegliere dove far circolare un messaggio, un’impresa può utilizzare
il modello #strong[PESO]. Il nome deriva dalle iniziali di quattro tipi
di media: #strong[Paid, Earned, Shared e Owned]. La differenza riguarda
soprattutto chi produce i contenuti, chi raggiunge il pubblico e chi
controlla la distribuzione.

- #strong[Paid Media \(media a pagamento):] spazi che l’impresa
  #strong[paga] per diffondere il proprio messaggio, per esempio annunci
  pubblicitari o sponsorizzazioni. Può decidere quale contenuto
  promuovere, quando e in quale formato.

- #strong[Earned Media \(visibilità ottenuta):] spazio che l’impresa
  riceve #strong[senza acquistarlo], per esempio una recensione
  spontanea, un articolo non pagato o il passaparola. Non controlla
  direttamente ciò che gli altri dicono.

- #strong[Shared Media \(media condivisi):] canali e piattaforme di
  terzi sui quali l’impresa #strong[condivide contenuti], per esempio
  un post pubblicato su un social network. La piattaforma influisce
  sulla distribuzione.

- #strong[Owned Media \(media propri):] canali che l’impresa
  #strong[possiede e controlla direttamente], come un sito web o una
  newsletter. Possono servire a costruire un rapporto duraturo con il
  pubblico.

#quote(block: true)[
#strong[Esempio quotidiano]

Una palestra paga una pubblicità online \(Paid), riceve una recensione
non richiesta \(Earned), pubblica un video sul proprio profilo social
\(Shared) e aggiorna il sito ufficiale con gli orari dei corsi \(Owned).
]

#strong[Schema di confronto — Il modello PESO: contenuti, pubblico e
distribuzione]

#block(breakable: false)[
#figure(
align(center)[#table(
  columns: 2,
  align: (col, row) => (left,left,).at(col),
  inset: 6pt,
  [Media], [Contenuti, pubblico e distribuzione],
  [#strong[Paid]],
  [#strong[Crea il contenuto:] l’azienda. #strong[Sviluppa il pubblico:]
  il mezzo pubblicitario o una terza parte. #strong[Distribuisce:] una
  terza parte.],
  [#strong[Earned]],
  [#strong[Crea il contenuto:] un soggetto esterno \(cliente,
  giornalista, cittadino ecc.). #strong[Sviluppa il pubblico:] chi crea
  il contenuto. #strong[Distribuisce:] chi lo crea o chi ne influenza la
  diffusione.],
  [#strong[Shared]],
  [#strong[Crea il contenuto:] l’azienda. #strong[Sviluppa il pubblico:]
  l’azienda coltiva il suo pubblico. #strong[Distribuisce:] la
  piattaforma, che appartiene a terzi.],
  [#strong[Owned]],
  [#strong[Crea il contenuto:] l’azienda. #strong[Sviluppa il pubblico:]
  l’azienda coltiva il suo pubblico. #strong[Distribuisce:] l’azienda.],
)]
)
]

== Dai pubblici agli obiettivi della comunicazione
Per molto tempo le comunicazioni d’impresa sono state distinte
soprattutto in base ai #strong[destinatari].

La #strong[comunicazione interna] è rivolta a chi è direttamente
coinvolto nelle attività e negli obiettivi aziendali: dipendenti,
dirigenti \(#emph[management]), membri del consiglio di amministrazione
\(Cda), soci e azionisti. La #strong[comunicazione esterna] si rivolge
invece a persone e organizzazioni al di fuori dell’impresa, come
clienti, investitori e opinione pubblica.

Questa distinzione è semplice, ma nella realtà il confine non è sempre
chiaro. Un lavoratore temporaneo è interno o esterno? E un’impresa che
gestisce le consegne per conto di un’altra? Un dipendente può essere
anche cliente dell’azienda e, pubblicando qualcosa online, contribuire
alla sua visibilità.

Per questo può essere più utile distinguere le comunicazioni in base
alle domande #strong[«perché comunichiamo?»] e #strong[«che cosa
comunichiamo?»]. In questo modo individuiamo quattro aree.

- #strong[Comunicazione istituzionale.] #emph[Perché?] Per creare e
  rafforzare un atteggiamento favorevole verso l’impresa. #emph[Che cosa
  comunica?] La sua #strong[identità]: chi è, quali valori rappresenta,
  come vuole essere riconosciuta.

- #strong[Comunicazione gestionale.] #emph[Perché?] Per organizzare il
  lavoro, far circolare informazioni, condividere conoscenze, coordinare
  le attività e coinvolgere le persone. #emph[Che cosa comunica?] La
  #strong[cultura aziendale] e uno stile comune di lavoro.

- #strong[Comunicazione commerciale.] #emph[Perché?] Per migliorare i
  rapporti con il mercato. #emph[Che cosa comunica?] L’#strong[offerta]
  dell’impresa, cioè prodotti e servizi, e gli elementi che la rendono
  diversa dai concorrenti.

- #strong[Comunicazione economico-finanziaria.] #emph[Perché?] Per
  costruire rapporti positivi con chi fornisce o può fornire risorse
  economiche. #emph[Che cosa comunica?] La #strong[salute economica e
  finanziaria] dell’impresa, per esempio i risultati, il patrimonio e la
  disponibilità di risorse finanziarie.

#quote(block: true)[
#strong[Esempio quotidiano]

Un’azienda presenta i propri valori sul sito \(istituzionale), invia
indicazioni ai dipendenti per organizzare i turni \(gestionale),
promuove un nuovo prodotto \(commerciale) e comunica agli investitori i
risultati di bilancio \(economico-finanziaria).
]

== Funzioni aziendali e aree della comunicazione
Le quattro aree della comunicazione sono spesso gestite da
#strong[uffici diversi] all’interno dell’impresa. Di solito, le
#strong[Relazioni Pubbliche] seguono la comunicazione istituzionale, il
#strong[Marketing] quella commerciale, le #strong[Risorse Umane] \(HR)
quella gestionale e l’#strong[Amministrazione e Controllo] o la
#strong[Direzione Generale] quella economico-finanziaria.

Questa separazione consente di affidare ogni attività a persone
competenti, ma può rendere più difficile il #strong[coordinamento].
Uffici con responsabili, obiettivi e budget diversi possono lavorare
senza confrontarsi. Quando si comportano come compartimenti chiusi,
chiamati anche #strong[silos], rischiano conflitti, duplicazioni e
messaggi incoerenti. Invece di creare valore, possono danneggiarlo.

#quote(block: true)[
#strong[Esempio quotidiano]

Il Marketing annuncia un servizio che partirà lunedì, ma il reparto che
deve offrirlo non è stato informato. La pubblicità e l’organizzazione
interna non sono coordinate: i clienti riceveranno una promessa che
l’azienda non è pronta a mantenere.
]

Non è sempre facile stabilire quali attività spettino a un ufficio e
quali a un altro. Anche per questo la gestione della comunicazione può
generare contrasti tra le diverse funzioni, come osserva Corvi \(2007).
Se le attività sono coordinate da un’unica struttura che risponde
direttamente all’#strong[amministratore delegato] \(AD), il responsabile
della comunicazione può avere un ruolo strategico e partecipare alle
scelte di vertice.

Non esiste però una soluzione identica per tutte le aziende. Ogni
impresa deve organizzare la comunicazione in base a strategia,
obiettivi, dimensioni, settore e contesto. Le quattro aree restano una
#strong[mappa utile] per orientarsi, anche se nella realtà i confini
possono sovrapporsi.

= Le modalità della comunicazione aziendale
Non tutte le comunicazioni avvengono nello stesso modo. Un’impresa deve
scegliere #strong[come comunicare] in base agli obiettivi e alle persone
a cui si rivolge. Possiamo descrivere ogni situazione attraverso più
coppie o forme di comunicazione.

== Diretta e mediata
La #strong[comunicazione diretta] avviene quando le persone sono a
contatto senza uno strumento che si interponga tra loro, per esempio
durante un colloquio faccia a faccia, una riunione in presenza o una
convention. Permette di cogliere facilmente gesti, espressioni e altri
segnali non verbali. Può fornire informazioni ricche, anche se richiede
spesso più tempo e organizzazione.

La #strong[comunicazione mediata] avviene quando tra le persone c’è uno
strumento, per esempio il telefono o una piattaforma per videoriunioni.

#quote(block: true)[
#strong[Esempio quotidiano]

Parlare con il rappresentante di classe durante l’intervallo è una
comunicazione diretta; chiamarlo al telefono è una comunicazione
mediata.
]

== Unidirezionale e bidirezionale
La comunicazione è #strong[unidirezionale] quando il messaggio va dal
mittente ai destinatari senza prevedere uno scambio immediato di
risposte, come un video informativo mostrato ai dipendenti o un ordine
di servizio.

È #strong[bidirezionale] quando il destinatario può rispondere e i ruoli
di mittente e destinatario si alternano. Il flusso, in questo caso,
torna a essere circolare. Le conversazioni sui social media possono
avere questa caratteristica.

#quote(block: true)[
#strong[Esempio quotidiano]

Un avviso affisso sulla porta comunica in una direzione. Una discussione
in classe, in cui gli studenti fanno domande e ricevono risposte, è
bidirezionale.
]

== One-to-one, one-to-many e many-to-many
Queste espressioni inglesi indicano #strong[quante persone partecipano
allo scambio].

- #strong[One-to-one \(uno a uno):] due interlocutori comunicano tra
  loro, per esempio un responsabile e un collaboratore durante un
  colloquio.

- #strong[One-to-many \(uno a molti):] una fonte trasmette il messaggio
  a numerosi destinatari, come accade tipicamente per televisione e
  giornali.

- #strong[Many-to-many \(molti a molti):] numerose persone possono
  creare, ricevere e scambiarsi contenuti, come nelle conversazioni e
  nelle discussioni online.

#quote(block: true)[
#strong[Esempio quotidiano]

Un messaggio privato tra due studenti è one-to-one; un annuncio della
scuola rivolto a tutte le classi è one-to-many; una discussione attiva
in un gruppo online può essere many-to-many.
]

== Sincrona e asincrona
La comunicazione è #strong[sincrona] quando gli interlocutori
partecipano #strong[nello stesso momento], per esempio in un colloquio,
in una telefonata o durante una videoriunione.

È #strong[asincrona] quando il destinatario può leggere, ascoltare o
vedere il messaggio #strong[in un momento successivo], come accade
normalmente per un’e-mail.

Le chat possono funzionare in entrambi i modi: se tutti sono collegati e
rispondono subito, lo scambio è sincrono; se le persone leggono e
rispondono a distanza di tempo, è asincrono.

#quote(block: true)[
#strong[Esempio quotidiano]

Un’interrogazione orale è sincrona. Un messaggio pubblicato su Classroom
che gli studenti leggeranno nel pomeriggio è asincrono.
]

Queste caratteristiche #strong[possono combinarsi]. Una videoriunione
aziendale, per esempio, è mediata, bidirezionale, spesso many-to-many e
sincrona. Una newsletter inviata ai clienti è mediata, prevalentemente
unidirezionale, one-to-many e asincrona. Progettare bene la
comunicazione significa scegliere la combinazione più adatta allo scopo.

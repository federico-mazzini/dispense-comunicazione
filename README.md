# Comunicazione d'impresa

Progetto per preparare dispense didattiche in Typst, compilare un PDF e pubblicarlo con GitHub Actions e GitHub Pages. Il documento iniziale contiene soltanto segnaposto tecnici: non è una dispensa completa.

La pagina iniziale riporta: «Dispensa didattica rielaborata a partire da Annalisa Galardi, Comunicazione d'impresa.» Non viene aggiunta automaticamente una bibliografia.

## Struttura

```text
.github/workflows/build-pdf.yml  Compilazione e pubblicazione automatica
src/main.typ                   Documento principale e ordine dei capitoli
src/capitoli/                  Un file Typst per capitolo
styles/template.typ            Impaginazione e componenti condivisi
assets/images/                 Fotografie e immagini raster
assets/svg/                    Diagrammi vettoriali
materiali/                     Documenti originali di riferimento
scripts/build.sh               Stessa procedura di build in locale e in CI
site/index.html                Pagina web da pubblicare
dist/                          PDF e sito generati, esclusi da Git
```

`site/` conserva il sorgente della pagina web; `scripts/` permette di usare lo stesso comando in locale e in GitHub Actions. Il workflow pubblica soltanto `dist/`.

## Materiali originali

Inserisci i documenti di partenza in `materiali/`, eventualmente suddividendoli per argomento. Non vengono inclusi automaticamente nel PDF né nella pagina Pages.

Il pacchetto `dispense_comunicazione_senza_casi_sorgenti.zip` è stato estratto senza modifiche in `materiali/sorgenti-originali/`: contiene un sorgente Typst, il suo README e quattro SVG. Gli SVG sono anche copiati in `assets/svg/` per l'uso nei nuovi capitoli. Il sorgente originale resta separato dal documento dimostrativo.

**Il repository è pubblico:** i materiali versionati sono consultabili su GitHub, anche se non vengono pubblicati nella pagina web. Inserisci nel repository soltanto materiali che puoi condividere.

## Compilare sul computer

Installa [Typst 0.15.1](https://github.com/typst/typst/releases/tag/v0.15.1), la stessa versione fissata nel workflow. Non occorrono pacchetti Typst esterni o font aggiuntivi: il template usa Libertinus Serif, incluso nel compilatore.

Dalla radice del repository:

```bash
bash scripts/build.sh
```

Il comando crea `dist/dispense-comunicazione.pdf` e copia la pagina web in `dist/index.html`. Se Typst segnala un errore, lo script si ferma e non conserva il precedente PDF con lo stesso nome.

Per compilare solo il documento:

```bash
mkdir -p dist
typst compile --root . src/main.typ dist/dispense-comunicazione.pdf
```

Per aggiornare il PDF mentre modifichi i sorgenti:

```bash
typst watch --root . src/main.typ dist/dispense-comunicazione.pdf
```

L'opzione `--root .` è necessaria: rende disponibili al documento `styles/` e `assets/` e dà un significato stabile ai percorsi che iniziano con `/`.

## Aggiungere un capitolo

1. Crea, per esempio, `src/capitoli/01-introduzione.typ`.
2. Scrivi il titolo e il contenuto. Importa dal template soltanto i componenti che usi:

   ```typst
   #import "/styles/template.typ": definizione, esempio

   = Titolo del capitolo

   Testo del capitolo.

   #definizione[Definizione da completare.]
   #esempio[Un esempio da completare.]
   ```

3. Aggiungi a `src/main.typ`, nell'ordine desiderato:

   ```typst
   #include "capitoli/01-introduzione.typ"
   ```

4. Quando inizi la dispensa, rimuovi dal solo `main.typ` l'inclusione di `00-esempio.typ` oppure sostituisci il suo contenuto.
5. Compila e controlla il PDF prima del commit.

Usa `=`, `==` e `===` per i diversi livelli di titolo. Per iniziare un capitolo su una nuova pagina puoi inserire `#pagebreak(weak: true)` prima dell'inclusione. I titoli restano uniti al testo che li segue e i riquadri lunghi possono proseguire nella pagina successiva.

## Immagini, SVG e componenti

Inserisci le immagini in `assets/images/` e i diagrammi in `assets/svg/`. Usa nomi semplici, senza spazi, e percorsi a partire dalla radice:

```typst
#import "/styles/template.typ": figura

#figura(
  "/assets/svg/modello.svg",
  [Didascalia della figura.],
  larghezza: 80%,
  alt: "Descrizione del diagramma",
)
```

La stessa funzione accetta PNG e JPEG. Il percorso `/assets/...` resta valido anche spostando un capitolo in una sottocartella. Le didascalie sono numerate automaticamente; le figure sono mantenute unite.

I componenti sono tutti definiti in `styles/template.typ`:

| Componente | Uso |
| --- | --- |
| `definizione(body, titolo: "Definizione")` | Definizioni e concetti importanti |
| `esempio(body, titolo: "Esempio pratico")` | Esempi pratici |
| `caso-reale(titolo, body, ...)` | Caso con immagine e fonte facoltative |
| `domande(body, titolo: "Domande di riflessione")` | Domande e consegne |
| `figura(percorso, didascalia, ...)` | Immagini e diagrammi con didascalia |

Esempio di chiamata completa, da sostituire con un caso documentato:

```typst
#import "/styles/template.typ": caso-reale, domande

#caso-reale(
  "Titolo da completare",
  immagine: "/assets/svg/modello.svg",
  didascalia: [Descrizione da completare.],
  fonte: "https://example.org",
  alt: "Descrizione dell'immagine",
)[Spiegazione da completare.]

#domande[
  + Prima domanda da completare.
  + Seconda domanda da completare.
]
```

`immagine`, `didascalia`, `fonte` e `alt` sono facoltativi. Gli URL delle fonti e i collegamenti creati con `#link("https://...")[Testo del link]` restano cliccabili nel PDF.

## Modificare la grafica

Intervieni su `styles/template.typ` per cambiare margini, font, dimensioni, gerarchia dei titoli, intestazione e piè di pagina. Il colore principale è `rosso`, impostato a `#c00000`. Testo e sfondo restano nero e bianco. Le funzioni dei componenti centralizzano la grafica dei riquadri.

Il template usa A4 verticale, margini ampi e numerazione su tutte le pagine; l'intestazione compare dalla seconda pagina. Il titolo generale si cambia nel parametro `titolo` di `dispensa`. Non inserire impostazioni grafiche ripetute nei singoli capitoli se possono essere condivise nel template.

## GitHub Actions

Il workflow `.github/workflows/build-pdf.yml` parte a ogni push su `main` e può essere avviato anche da **Actions → Compila e pubblica le dispense → Run workflow**.

Il job `build` installa Typst 0.15.1, esegue `scripts/build.sh` e carica:

- `dispense-comunicazione-pdf`: PDF scaricabile dalla sezione **Artifacts** dell'esecuzione, conservato per 30 giorni;
- `github-pages`: sito e PDF per il successivo deploy.

Il job `deploy` parte solo se la compilazione riesce e il branch è `main`. Usa l'ambiente `github-pages` e i permessi `pages: write` e `id-token: write`. Il job di compilazione dispone solo del permesso di lettura del repository. Non occorrono token personali o segreti aggiuntivi.

Un errore di Typst interrompe il workflow e resta visibile nei log dello step **Compila e prepara il sito**. In questo caso non viene pubblicato alcun nuovo PDF; un'eventuale precedente versione già online rimane disponibile. I PDF generati non vengono committati.

Le versioni principali delle Actions sono esplicite. Per aggiornare Typst, modifica la versione nel workflow, usa la stessa versione in locale e ricompila.

## Attivare GitHub Pages e trovare il PDF

Prima della prima pubblicazione, apri le [impostazioni Pages del repository](https://github.com/federico-mazzini/dispense-comunicazione/settings/pages) e seleziona **Build and deployment → Source → GitHub Actions**. Se l'impostazione è già attiva, non occorre ripeterla. Se una prima esecuzione fallisce perché Pages non è abilitato, abilitalo e riesegui il workflow dal menu **Re-run all jobs**.

Controlla l'esito nella [pagina Actions](https://github.com/federico-mazzini/dispense-comunicazione/actions). Il caricamento dell'artifact PDF può riuscire anche se il successivo deploy Pages fallisce: verifica entrambi i job.

Dopo un deploy riuscito:

- Pagina web: <https://federico-mazzini.github.io/dispense-comunicazione/>
- PDF con URL stabile: <https://federico-mazzini.github.io/dispense-comunicazione/dispense-comunicazione.pdf>

Il link al PDF resta uguale tra le compilazioni. Il pulsante **Visualizza il PDF** apre il documento secondo le impostazioni del browser; **Scarica il PDF** ne richiede il download. I link sopra indicano gli indirizzi previsti e non attestano, da soli, che il sito sia già online.

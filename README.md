# Elementi di comunicazione e comunicazione aziendale

[**Apri le dispense**](https://federico-mazzini.github.io/dispense-comunicazione/dispense-comunicazione.pdf) · [**Apri le slide**](https://federico-mazzini.github.io/dispense-comunicazione/slide-comunicazione.pdf)

Ultima versione pubblicata per la classe.

## Istruzioni operative per l’agente

- Compila sempre `src/main.typ`; i capitoli sono in `src/capitoli/` e il template comune in `styles/template.typ`.
- Modifica i tre capitoli in `src/capitoli/`, che contengono la teoria e i 18 esempi. Non inventare contenuti, casi o fonti mancanti.
- Usa gli SVG in `assets/svg/` con percorsi dalla radice, per esempio `/assets/svg/modello.svg`.
- Aggiungi ogni nuovo capitolo a `src/main.typ` con `#include "capitoli/nome.typ"`. Mantieni gli stili e i componenti nel template.
- Le slide teoriche sono in `src/slide/`; i 9 casi video inclusi (17 slide) sono in `src/slide/video/`. L’ordine delle 36 slide è definito in `src/slide-comunicazione.typ`. Il template 16:9 è `styles/slides.typ`, che importa i colori delle dispense.
- I casi 2–4 seguono la slide teorica 14; il caso 5 segue il primo assioma; il caso 1 segue il secondo assioma; i casi 7–8 seguono i rispettivi assiomi; i casi 9–10 seguono il quinto assioma con una slide di visione congiunta, una di domande comuni e una di analisi conclusiva. Conserva i file delle 20 slide teoriche. Le miniature locali e i riferimenti YouTube sono in `assets/video/`, con provenienza e metadati in `fonti.json`. La build non richiede accesso a YouTube.
- Prima del commit, compila con Typst 0.15.1 e controlla visivamente tutte le pagine. Non versionare `dist/`.

```bash
bash scripts/build.sh
```

Output: `dist/dispense-comunicazione.pdf` e `dist/slide-comunicazione.pdf`.

Per compilare soltanto le slide: `typst compile --root . src/slide-comunicazione.typ dist/slide-comunicazione.pdf`.

## Commit `[pdf]` e GitHub Action

Per compilare il PDF su GitHub, inserisci `[pdf]` nel messaggio dell’ultimo commit del push su `main`:

```bash
git add src styles README.md
git commit -m "[pdf] Aggiorna le dispense"
git push origin main
```

I push senza `[pdf]` nell’ultimo commit saltano il job di compilazione. È disponibile anche l’avvio manuale da **Actions → Compila PDF → Run workflow**.

Scarica i PDF da **Actions → esecuzione riuscita → Artifacts**: `dispense-comunicazione-pdf` per le dispense, `slide-comunicazione-pdf` per le slide. Gli artifact sono conservati per 30 giorni. Se la compilazione fallisce, controlla i log: non vengono caricati nuovi PDF.

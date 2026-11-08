# Elementi di comunicazione e comunicazione aziendale

## Istruzioni operative per l’agente

- Compila sempre `src/main.typ`; i capitoli sono in `src/capitoli/` e il template comune in `styles/template.typ`.
- Modifica i tre capitoli in `src/capitoli/`, che contengono la teoria e i 18 esempi. Non inventare contenuti, casi o fonti mancanti.
- Usa gli SVG in `assets/svg/` con percorsi dalla radice, per esempio `/assets/svg/modello.svg`.
- Aggiungi ogni nuovo capitolo a `src/main.typ` con `#include "capitoli/nome.typ"`. Mantieni gli stili e i componenti nel template.
- Prima del commit, compila con Typst 0.15.1 e controlla visivamente tutte le pagine. Non versionare `dist/`.

```bash
bash scripts/build.sh
```

Output: `dist/dispense-comunicazione.pdf`.

## Commit `[pdf]` e GitHub Action

Per compilare il PDF su GitHub, inserisci `[pdf]` nel messaggio dell’ultimo commit del push su `main`:

```bash
git add src styles README.md
git commit -m "[pdf] Aggiorna le dispense"
git push origin main
```

I push senza `[pdf]` nell’ultimo commit saltano il job di compilazione. È disponibile anche l’avvio manuale da **Actions → Compila PDF → Run workflow**.

Scarica il documento da **Actions → esecuzione riuscita → Artifacts → dispense-comunicazione-pdf**. L’artifact è conservato per 30 giorni. Se la compilazione fallisce, controlla i log: non viene caricato un nuovo PDF.

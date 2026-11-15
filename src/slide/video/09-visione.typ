#import "/styles/slides.typ": slide, etichetta, rosso

#slide([Assioma 5])[
  #stack(dir: ttb, spacing: 20pt,
    etichetta[Guardiamo entrambi i video],
    grid(columns: (1fr, 1fr), gutter: 32pt, align: top + left,
      stack(dir: ttb, spacing: 15pt,
        link("https://www.youtube.com/watch?v=zAwFdgPPwpk",
          text(size: 24pt, weight: "bold", fill: rosso)[Fantozzi #linebreak() Il megadirettore galattico~↗]),
        link("https://www.youtube.com/watch?v=zAwFdgPPwpk",
          image("/assets/video/caso-09-fantozzi.jpg", width: 100%, height: 150pt, fit: "contain", alt: "Fantozzi e il megadirettore galattico")),
        text(size: 25pt)[Fantozzi incontra il megadirettore. Osserviamo come si rivolgono l’uno all’altro, chi orienta il dialogo e come vengono riconosciuti i rispettivi ruoli.],
      ),
      stack(dir: ttb, spacing: 15pt,
        link("https://www.youtube.com/watch?v=RbGpUemSXAA",
          text(size: 24pt, weight: "bold", fill: rosso)[Aldo, Giovanni e Giacomo #linebreak() Subaru Baracca~↗]),
        link("https://www.youtube.com/watch?v=RbGpUemSXAA",
          image("/assets/video/caso-10-subaru.jpg", width: 100%, height: 150pt, fit: "contain", alt: "Aldo, Giovanni e Giacomo nello sketch Subaru Baracca")),
        text(size: 25pt)[Tre amici affrontano un viaggio in automobile. Osserviamo le battute, le obiezioni e i tentativi di far prevalere il proprio punto di vista.],
      ),
    ),
  )
]

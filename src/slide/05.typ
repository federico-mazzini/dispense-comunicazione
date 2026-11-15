#import "/styles/slides.typ": *

#slide([Gli elementi del processo comunicativo])[
  #let modello = (read("/assets/svg/modello.svg")
    .replace(regex("<text[^>]*>Variante di Schramm</text>"), "")
    .replace("height=\"350\"", "height=\"310\"")
    .replace("viewBox=\"0 0 1200 350\"", "viewBox=\"0 0 1200 310\""))
  #stack(dir: ttb, spacing: 8pt,
    text(size: 20pt, fill: grigio)[Percorso lineare di trasmissione],
    image(bytes(modello), format: "svg", width: 100%, height: 224pt, fit: "contain", alt: "Modello di Shannon e Weaver con rumore e percorso di feedback"),
    v(24pt),
    grid(columns: (1fr, 1fr), gutter: 25pt,
      text(size: 21pt)[*Codice:* sistema di segni utilizzato.],
      text(size: 21pt)[*Rumore:* interferenze nella trasmissione.],
    ),
    grid(columns: (1fr, 1fr), gutter: 25pt,
      text(size: 21pt)[*Contesto:* situazione in cui avviene la comunicazione.],
      text(size: 21pt)[*Feedback:* risposta.],
    ),
  )
]

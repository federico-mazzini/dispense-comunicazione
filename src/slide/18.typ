#import "/styles/slides.typ": *

#slide-assioma(3, [La natura della relazione dipende dalla punteggiatura delle sequenze di comunicazione])[
La *punteggiatura* è il modo in cui i comunicanti organizzano la sequenza degli scambi, attribuendo ai comportamenti il valore di causa o di reazione.

Ognuno considera il proprio comportamento una conseguenza di quello dell'altro.

#block(width: 100%, height: 150pt)[
  #let bordo-box = rgb("#a69d9a")
  #let larghezza-box = 335pt
  #let altezza-box = 76pt
  #let margine = 32pt
  #let destra = larghezza - margine - larghezza-box
  #let centro-a = margine + larghezza-box/2
  #let centro-b = destra + larghezza-box/2
  #let persona(x, nome, battuta) = place(top + left, dx: x, block(
    width: larghezza-box, height: altezza-box,
    stroke: 1.4pt + bordo-box,
    align(center + horizon, stack(dir: ttb, spacing: 6pt,
      text(size: 24pt, weight: "bold", nome),
      text(size: 22pt, battuta),
    )),
  ))
  #persona(margine, [Persona A], [«Ti evito perché mi rispondi male»])
  #persona(destra, [Persona B], [«Ti rispondo male perché mi eviti»])
  #let y = altezza-box/2
  #place(top + left, curve(stroke: 2pt + grigio,
    curve.move((margine + larghezza-box, y)), curve.line((destra - 4pt, y)),
    curve.move((centro-b, altezza-box)), curve.line((centro-b, 114pt)),
    curve.line((centro-a, 114pt)), curve.line((centro-a, altezza-box + 4pt)),
  ))
  #place(top + left, polygon(fill: grigio, stroke: none, (destra, y), (destra - 10pt, y - 5pt), (destra - 10pt, y + 5pt)))
  #place(top + left, polygon(fill: grigio, stroke: none, (centro-a, altezza-box), (centro-a - 5pt, altezza-box + 10pt), (centro-a + 5pt, altezza-box + 10pt)))
  #place(top + center, dy: 132pt, text(size: 22pt)[Entrambi interpretano il proprio gesto come una reazione])
]

Questa diversa interpretazione della sequenza degli scambi è chiamata _punteggiatura della comunicazione_.
]

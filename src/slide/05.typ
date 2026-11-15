#import "/styles/slides.typ": *

#slide([Gli elementi del processo comunicativo])[
#block(width: 864pt, height: 392pt)[
  #place(top + left, dy: 0pt)[#text(size: 17pt, fill: grigio)[Percorso lineare di trasmissione]]
  // Il contesto racchiude trasmissione e risposta, senza confondersi con il canale.
  #place(top + left, dy: 32pt)[#block(width: 864pt, height: 312pt, stroke: (paint: rosso, dash: "dashed"))[]]
  #place(top + left, dx: 155pt, dy: 45pt)[#text(size: 20pt)[*Codice:* sistema di segni utilizzato.]]
  #place(top + left, dx: 20pt, dy: 90pt)[
    #grid(columns: (112pt, 30pt, 112pt, 30pt, 112pt, 30pt, 112pt, 30pt, 112pt, 30pt, 112pt), align: horizon,
      ..([Mittente], [Codifica], [Messaggio], [Canale], [Decodifica], [Destinatario]).enumerate().map(((i, n)) => {
        let box = block(width: 112pt, height: 66pt, fill: white, stroke: 1pt + grigio)[#align(center + horizon)[#text(size: 19pt, weight: "bold")[#n]]]
        if i < 5 { (box, align(center, text(size: 26pt)[→])) } else { (box,) }
      }).flatten()
    )
  ]
  #place(top + left, dx: 452pt, dy: 158pt)[#text(size: 24pt, fill: grigio)[↑]]
  #place(top + left, dx: 290pt, dy: 191pt)[#text(size: 20pt)[*Rumore:* interferenze nella trasmissione.]]
  // Ritorno del feedback, dal destinatario al mittente.
  #place(top + left, dx: 786pt, dy: 156pt)[#line(length: 99pt, angle: 90deg, stroke: 1.8pt + rosso)]
  #place(top + left, dx: 76pt, dy: 255pt)[#line(length: 710pt, stroke: 1.8pt + rosso)]
  #place(top + left, dx: 76pt, dy: 173pt)[#line(length: 82pt, angle: 90deg, stroke: 1.8pt + rosso)]
  #place(top + left, dx: 67pt, dy: 157pt)[#text(size: 27pt, fill: rosso)[↑]]
  #place(top + left, dx: 50pt, dy: 273pt)[#text(size: 20pt, fill: rosso)[*Mittente*]]
  #place(top + right, dx: -30pt, dy: 273pt)[#text(size: 20pt, fill: rosso)[*Destinatario*]]
  #place(top + center, dy: 242pt)[#box(fill: white, inset: (x: 12pt, y: 3pt))[#text(size: 23pt, fill: rosso)[← *Feedback:* risposta]]]
  #place(top + center, dy: 309pt)[#box(fill: white, inset: (x: 10pt, y: 3pt))[#text(size: 21pt, fill: rosso)[*Contesto:* situazione in cui avviene la comunicazione.]]]
  #place(top + left, dy: 358pt)[#text(size: 17pt, fill: rosso)[Elementi per descrivere la comunicazione umana]]
  #place(top + right, dy: 358pt)[#text(size: 21pt)[*Effetti:* risultati della comunicazione.]]
]
]

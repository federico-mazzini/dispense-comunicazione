#import "/styles/slides.typ": *

#slide([Dalla comunicazione lineare a quella circolare])[
#colonne[
*Comunicazione lineare:* il messaggio procede dal mittente al destinatario.

*Comunicazione circolare:* il destinatario può rispondere e influenzare la comunicazione successiva.

I ruoli di mittente e destinatario possono alternarsi.

#grid(columns: (auto, 1fr, auto), align: horizon, gutter: 8pt,
  [*Mittente*],
  align(center)[#text(size: 18pt, fill: rosso)[Messaggio →]#linebreak()#text(size: 18pt, fill: rosso)[← Feedback]],
  [*Destinatario*])
][
#esempio[
Insegnante: «Domani portate il computer».

Studente: «Va bene anche il tablet?».

Insegnante: «No, serve un computer portatile».

Il feedback permette di chiarire un messaggio ambiguo.
]
]
]

#import "/styles/slides.typ": *

#let impatto = riferimento(
  "https://newsroom.spotify.com/2025-03-12/making-an-impact-one-note-one-voice-one-idea-at-a-time/",
  [Rapporto d’impatto],
)
#let messaggio-dipendenti = riferimento(
  "https://newsroom.spotify.com/2023-12-04/an-update-on-december-2023-organizational-changes/",
  [Nota ai dipendenti],
)
#let premium = riferimento("https://www.spotify.com/it/premium/", [Offerta Premium])
#let risultati = riferimento(
  "https://s29.q4cdn.com/175625835/files/doc_financials/2024/q4/Q4-2024-Shareholder-Deck-FINAL.pdf",
  [Risultati trimestrali],
)

#slide([Dai destinatari agli obiettivi])[
  #colonne(
    voce([Comunicazione interna], [Si rivolge a chi partecipa alle attività
      e agli obiettivi dell’impresa.]),
    voce([Comunicazione esterna], [Si rivolge a persone e organizzazioni
      al di fuori dell’impresa.]),
  )

  #v(14pt)
  La stessa persona può avere più ruoli. Un dipendente può essere
  anche cliente dell’impresa.

  #domanda(titolo: "Per distinguere le aree della comunicazione")[
    Perché comunichiamo? Che cosa comunichiamo?
  ]
]

#slide([Istituzionale e gestionale])[
  #colonne(
    voce([Istituzionale], [
      *Perché?*

      Rafforzare la fiducia verso l’impresa.

      *Che cosa?*

      Identità e valori dell’impresa.
    ]),
    voce([Gestionale], [
      *Perché?*

      Organizzare il lavoro e coinvolgere le persone.

      *Che cosa?*

      Informazioni, conoscenze e cultura aziendale.
    ]),
  )
]

#slide([Commerciale ed economico-finanziaria])[
  #colonne(
    voce([Commerciale], [
      *Perché?*

      Migliorare i rapporti con il mercato.

      *Che cosa?*

      Prodotti, servizi e differenze rispetto ai concorrenti.
    ]),
    voce([Economico-finanziaria], [
      *Perché?*

      Costruire rapporti con chi può fornire risorse economiche.

      *Che cosa?*

      Risultati, patrimonio e risorse finanziarie.
    ]),
  )
]

#slide([Quattro messaggi di Spotify])[
  #grid(columns: (1fr, 1fr), column-gutter: 32pt, row-gutter: 24pt,
    voce([A · #premium], [La pagina italiana presenta i vantaggi e i piani dell’abbonamento.]),
    voce([B · #messaggio-dipendenti], [Il CEO spiega la riorganizzazione del 2023 e indica i passaggi successivi.]),
    voce([C · #risultati], [Spotify presenta ricavi e risultati del quarto trimestre 2024.]),
    voce([D · #impatto], [Spotify racconta le proprie iniziative su inclusione, cultura aziendale e ambiente.]),
  )

  #v(14pt)
  #domanda(titolo: "Abbinate ogni messaggio a un’area")[
    A chi si rivolge? Che cosa vuole ottenere Spotify?
  ]
]

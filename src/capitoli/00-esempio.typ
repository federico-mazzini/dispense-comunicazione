#import "/styles/template.typ": definizione, esempio, caso-reale, domande, figura

= Documento dimostrativo

*Esempio tecnico da sostituire.* Questa pagina verifica la struttura del progetto;
non contiene una lezione. I materiali originali sono conservati in #raw("materiali/").

== Componenti riutilizzabili

#definizione(titolo: "Concetto · segnaposto")[Inserire qui una definizione tratta dai materiali di riferimento.]

#esempio[Inserire qui un esempio pratico.]

#caso-reale("Segnaposto", fonte: "https://example.org")[Inserire qui un caso verificato e il collegamento alla fonte effettiva.]

#domande[Inserire qui una domanda di riflessione.]

// Il percorso parte sempre dalla radice, anche se il capitolo viene spostato.
#figura(
  "/assets/svg/confezioni.svg",
  [SVG del pacchetto originale, usato esclusivamente per verificare l'inserimento delle figure.],
  larghezza: 55%,
  alt: "Due confezioni del materiale originale: decorativa ed essenziale",
)

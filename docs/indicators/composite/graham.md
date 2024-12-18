# Formula di Graham (Vg)

**Formula di Graham (Vg)** è un metodo di valutazione sviluppato da Benjamin Graham per stimare il valore intrinseco di un'azione in base agli utili per azione (EPS) e al tasso di crescita atteso (g). Viene utilizzata dagli investitori orientati al valore per identificare potenziali opportunità di investimento.

\[
V_g = \text{EPS} \times (8.5 + 2g)
\]

## Componenti

- **EPS** = Earnings Per Share (Utile per Azione) – `Income Statement`
- **g** = Expected Growth Rate (Tasso di Crescita Atteso) – `Stima di mercato`

### Coefficienti Standard

- **8.5**: Valore fisso indicante il rapporto P/E di un'azienda senza crescita.
- **2g**: Adjusted Growth Factor (Fattore di Crescita Aggiunto), dove \( g \) è espresso in percentuale.

## Versione Aggiornata (Formula di Graham Moderna)

Una versione modificata della formula tiene conto del tasso di inflazione:

\[
V_g = \frac{\text{EPS} \times (8.5 + 2g) \times 4.4}{\text{Y}}
\]

Dove:

- **Y** = Tasso di rendimento dei titoli di Stato a 20 anni (US Treasury Yield)
- **4.4** = Valore fisso corrispondente al rendimento medio storico dei titoli di Stato negli Stati Uniti.

## Interpretazione

- **Vg > P:** L'azione può essere sottovalutata.
- **Vg = P:** L'azione è correttamente valutata.
- **Vg < P:** L'azione può essere sopravvalutata.

## Scenari Teorici

- **Capitalizzazione ottimale:** Aziende di **media** e **grande** capitalizzazione con utili stabili.
- **Settori Ottimali:** Settori maturi con crescita prevedibile come utility, finanza, beni di consumo e produzione industriale.
- **Range tipico:** Variabile in base a EPS e crescita prevista.
- **Range ottimale:** \( V_g > P \) per identificare azioni sottovalutate.

## Limitazioni

- **Previsioni di crescita:** La precisione dipende dalla stima accurata del tasso di crescita.
- **Inflazione e tassi di interesse:** Il valore può cambiare rapidamente in contesti economici instabili.
- **Settori con crescita irregolare:** Non è adatta a settori volatili come tecnologia o startup.
- **Dati storici:** La formula si basa su metriche storiche che potrebbero non riflettere il potenziale futuro.

**Presente nei dati calcolati:** Se la metrica "`grahamNumber`" è disponibile

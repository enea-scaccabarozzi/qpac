# Naming Conventions

## Indicatori Finanziari

Questa sezione definisce le convenzioni di denominazione utilizzate nella raccolta degli indicatori finanziari descritti nel progetto

### Struttura Generale

#### Formato delle Sezioni

- Nome Completo dell'Indicatore (Abbreviazione)
- Descrizione Generale
- Formula Matematica
- Componenti (Metriche di Base e Metriche Composite)
- Interpretazione
- Scenari Teorici
- Limitazioni
- Presenza nei Dati Calcolati

---

### Convenzioni Specifiche

#### 1. Nomi degli Indicatori

- Ogni indicatore è presentato usando il suo nome completo seguito dall'abbreviazione tra parentesi.
- Esempio: `Price-to-Earnings (P/E)`

#### 2. Formule Matematiche

- Tutte le formule matematiche seguono il formato LaTeX.
- Ogni variabile è rappresentata da un nome breve descrittivo:
  - `P`: Price (Prezzo)
  - `EPS`: Earnings Per Share (Utili per Azione)
  - `NI`: Net Income (Utile Netto)
  - ecc...

#### 3. Metriche di Base

- Variabili direttamente derivate dai bilanci finanziari.
- Esempi:
  - `CA`: Current Assets (Attività Correnti) – `Balance Sheet`
  - `NI`: Net Income (Utile Netto) – `Income Statement`
  - `CF` = Operating Cash Flow (Flusso di Cassa Operativo) – `Cash Flow Statement`
  - ecc...

#### 4. Metriche Composite

- Variabili calcolate utilizzando metriche di base.
- Formato: `Nome Composto = Formula Calcolata`
- Esempi:
  - BVPS = \(\frac{TSE}{TOS}\) (Book Value per Share = Patrimonio Netto / Azioni Totali in Circolazione)
  - ecc...

#### 5. Interpretazione

- Ogni indicatore è interpretato attraverso intervalli di valori tipici e ottimali.
- Formato:
  - **Basso:** Significato specifico
  - **Medio:** Significato specifico
  - **Alto:** Significato specifico

#### 6. Scenari Teorici

- **Capitalizzazione Ottimale:** Specifica la categoria di aziende per cui l'indicatore è più utile.
- **Settori Ottimali:** Descrive i settori in cui l'indicatore è più applicabile.
- **Range tipico:** \(X\% - Y\%\)
- **Range ottimale:** \(> Y\%\)

#### 7. Limitazioni

- Elenco puntato delle limitazioni principali legate all'uso di ciascun indicatore.

---

### Esempio Applicativo

**Esempio:** Price-to-Earnings (P/E)

```markdown
## Price-to-Earnings (P/E)

**Price-to-Earnings Ratio (P/E)** è un indicatore che misura il rapporto tra il prezzo di mercato di un'azione e il suo utile per azione.

\[ P/E = \frac{P}{EPS} \]

### Componenti
- **P** = Price (Prezzo per Azione) – Mercato
- **EPS** = Earnings Per Share (Utili per Azione) – Income Statement

### Interpretazione
- **P/E < 10:** Potenziale sottovalutazione
- **P/E = 10-20:** Valutazione media
- **P/E > 20:** Potenziale sopravvalutazione

### Scenari Teorici
- **Capitalizzazione Ottimale:** Media e grande capitalizzazione
- **Settori Ottimali:** Settori stabili e a crescita moderata

### Limitazioni
- Stime di crescita incerte
- Settori con utili volatili
- Manipolazione contabile

```

---

Seguendo queste convenzioni, ogni indicatore sarà descritto in modo uniforme e facilmente comprensibile.

## Altro

> TO BE DONE

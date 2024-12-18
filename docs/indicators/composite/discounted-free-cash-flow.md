# Discounted Free Cash Flow (DFCF)

**Discounted Free Cash Flow (DFCF)** è un metodo di valutazione che stima il valore intrinseco di un'azienda calcolando il valore attuale dei flussi di cassa futuri previsti, scontati a un tasso di interesse appropriato (WACC - Weighted Average Cost of Capital). Serve a determinare il valore attuale netto (NPV) di un'azienda basato sui flussi di cassa generati dalle sue operazioni.

## Formula Generale

\[
V_{\text{DCF}} = \sum_{t=1}^{n} \frac{FCF_t}{(1 + WACC)^t} + \frac{TV}{(1 + WACC)^n}
\]

## Componenti

- **\( V_{\text{DCF}} \)** = Valore attuale dell'azienda
- **\( FCF_t \)** = Free Cash Flow (Flusso di Cassa Libero) per l'anno \( t \) – `Cash Flow Statement`
- **\( WACC \)** = Weighted Average Cost of Capital (Costo Medio Ponderato del Capitale)
- **\( t \)** = Anno futuro (1, 2, ..., n)
- **\( TV \)** = Terminal Value (Valore Terminale), stimato attraverso il modello di crescita perpetua o il multiplo di uscita:

\[
TV = \frac{FCF_{n+1}}{(r - g)}
\]

Dove:

- **\( r \)** = Tasso di sconto (WACC)
- **\( g \)** = Tasso di crescita perpetua

## Interpretazione

- **Valore Intrinseco > Prezzo di Mercato:** L'azione può essere sottovalutata.
- **Valore Intrinseco = Prezzo di Mercato:** L'azione è correttamente valutata.
- **Valore Intrinseco < Prezzo di Mercato:** L'azione può essere sopravvalutata.

## Scenari Teorici

- **Capitalizzazione Ottimale:** Applicabile ad aziende di **media** e **grande** capitalizzazione.
- **Settori Ottimali:** Settori con flussi di cassa stabili e prevedibili, come utility, beni di consumo, telecomunicazioni e sanità.
- **Range Tipico:** Variabile in base alla crescita e al rischio specifico.

## Limitazioni

- **Stime future:** Fortemente dipendente dalle proiezioni dei flussi di cassa futuri.
- **Tasso di sconto soggettivo:** Il WACC può essere difficile da stimare con precisione.
- **Tasso di crescita incerto:** Piccole variazioni nei tassi di crescita perpetua possono influire significativamente sul valore terminale.
- **Dati storici:** Basato su dati storici che potrebbero non riflettere le condizioni future.
- **Settori non stabili:** Poco applicabile a settori con flussi di cassa irregolari come tecnologia emergente e startup.

**Presente nei dati calcolati:** `freeCashFlow` e `wacc`

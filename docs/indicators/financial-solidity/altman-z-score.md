# Altman Z-Score (Z)

**Altman Z-Score (Z)** è un indicatore finanziario che misura la probabilità di fallimento di un'azienda in un orizzonte temporale di due anni. Utilizza una combinazione di metriche finanziarie per valutare la salute economica di un'azienda. È ampiamente utilizzato per prevedere l'insolvenza di aziende manifatturiere quotate in borsa.

\[
Z = 1.2X_1 + 1.4X_2 + 3.3X_3 + 0.6X_4 + 0.999X_5
\]

## Componenti

- **\(X_1\)** = Working Capital / Total Assets (Capitale Circolante / Attività Totali) – `Balance Sheet`
- **\(X_2\)** = Retained Earnings / Total Assets (Utile Accantonato / Attività Totali) – `Balance Sheet`
- **\(X_3\)** = EBIT / Total Assets (Utile Operativo / Attività Totali) – `Income Statement` & `Balance Sheet`
- **\(X_4\)** = Market Value of Equity / Total Liabilities (Valore di Mercato del Capitale / Passività Totali) – `Market Data` & `Balance Sheet`
- **\(X_5\)** = Sales / Total Assets (Vendite / Attività Totali) – `Income Statement` & `Balance Sheet`

## Interpretazione

- **Z < 1.8:** Alto rischio di fallimento.
- **Z = 1.8-3.0:** Area di incertezza, potenziale rischio moderato.
- **Z > 3.0:** Basso rischio di fallimento, l'azienda è considerata stabile.

## Scenari Teorici

- **Capitalizzazione ottimale:** Aziende di **media** e **grande** capitalizzazione.
- **Settori Ottimali:** Settori manifatturieri e industriali con asset tangibili significativi.
- **Range tipico:** \(1.5 - 4.0\)
- **Range ottimale:** \(> 3.0\) per aziende finanziariamente solide.

## Limitazioni

- **Non applicabile a tutti i settori:** L’indicatore è stato originariamente sviluppato per aziende manifatturiere quotate.
- **Asset intangibili:** Aziende con asset intangibili significativi possono avere punteggi distorti.
- **Dati di mercato richiesti:** Richiede il valore di mercato del capitale, non sempre disponibile per aziende private.
- **Stati finanziari aggiornati:** L’affidabilità dipende dalla frequenza di aggiornamento dei bilanci e dalla loro accuratezza.

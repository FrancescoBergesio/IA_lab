# COMMENTO
% commento la riga

# COMPILAZIONE
- prompt di Anaconda
- sistemati nella cartella
- clingo nome_file.cl [0]
- lo 0 al fondo dovrebbe regolare il numero di soluzione mostrate

# ABBREVIAIZONE
persona(a).
persona(b).
persona(c).
Lo puoi scrivere come: persona(a;b;c).

# BUONA REGOLA
Compila dopo ogni nuovo inserimento

# DESCRIZIONE VINCOLI
Se so quali sono i vincoli in positivo posso scrivere cos�:
goal: vincolo1, vincolo2.
:- not goal.

# AGGREGAZIONE
Per dire che non ho un limite massimo, basta non scrivere nulla

# AZIONI IN PARALLELO
1{rimuovi(scorta,bagagliaio,S); rimuovi(bucata,asse,S); monta(scorta,asse,S)} :- livello(S).
(� il ;)

# PROGETTO
L'argomento non � stretto per lasciar fare a noi. Nel documento dovrai poi scrivere 
:- initialization main.

main :- consult(['././a_star/a_star.pl']),
  consult(['././a_star/../azioni.pl']),
  consult(['././a_star/../data/labirinto_con_sol_30.pl']),
  consult(['././a_star/../heuristics/manhattan_distance.pl']),
  a_star(X, 1),
  atomic_list_concat(X, ', ', A),
  atom_string(A, S),
  format("Solution = "),
  format(S),
  format(".\n"),
  halt.

main :- format("Solution = "),
  format("false.\n"),
  halt.

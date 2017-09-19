(Other
  "$ jbuilder build bench_patterns.exe\
 \n    ocamldep bench_patterns.depends.ocamldep-output\
 \n      ocamlc bench_patterns.{cmi,cmo,cmt}\
 \n    ocamlopt bench_patterns.{cmx,o}\
 \n    ocamlopt bench_patterns.exe\
 \n$ ./_build/default/bench_patterns.exe -ascii -quota 0.25\
 \nEstimated testing time 750ms (3 benchmarks x 250ms). Change using -quota SECS.\
 \n                                                      \
 \n  Name                         Time/Run   Percentage  \
 \n ---------------------------- ---------- ------------ \
 \n  Polymorphic pattern           21.88ns      100.00%  \
 \n  Monomorphic larger pattern    15.52ns       70.94%  \
 \n  Monomorphic small pattern      9.09ns       41.56%  \
 \n                                                      \
 \n")

(Other
  "$ jbuilder build exn_cost.exe\
 \n    ocamldep exn_cost.depends.ocamldep-output\
 \n      ocamlc exn_cost.{cmi,cmo,cmt}\
 \n    ocamlopt exn_cost.{cmx,o}\
 \n    ocamlopt exn_cost.exe\
 \n$ ./_build/default/exn_cost.exe -ascii cycles -quota 1\
 \nEstimated testing time 4s (4 benchmarks x 1s). Change using -quota SECS.\
 \n                                                                              \
 \n  Name                           Time/Run   Cycls/Run   mWd/Run   Percentage  \
 \n ------------------------------ ---------- ----------- --------- ------------ \
 \n  simple computation             249.97ns     699.73c    84.00w       89.97%  \
 \n  simple computation w/handler   272.49ns     762.80c    84.00w       98.08%  \
 \n  end with exn                   277.83ns     777.71c    84.00w      100.00%  \
 \n  end with exn notrace           252.88ns     707.89c    84.00w       91.02%  \
 \n                                                                              \
 \n")

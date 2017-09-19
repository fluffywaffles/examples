(OCaml_toplevel
 ((parts
   (((name "")
     (chunks
      (((ocaml_code "#use \"topfind\";;")
        (toplevel_responses
         ((OCaml "- : unit = ()")
          (Raw
            "\
           \nFindlib has been successfully loaded. Additional directives:\
           \n  #require \"package\";;      to load a package\
           \n  #list;;                   to list the available packages\
           \n  #camlp4o;;                to load camlp4 (standard syntax)\
           \n  #camlp4r;;                to load camlp4 (revised syntax)\
           \n  #predicates \"p,q,...\";;   to set these predicates\
           \n  Topfind.reset();;         to force that packages will be reloaded\
           \n  #thread;;                 to enable threads\
           \n\
           \n")
          (OCaml "- : unit = ()"))))
       ((ocaml_code "#thread;;")
        (toplevel_responses
         ((Raw
            "\
           \n/Users/yminsky/.opam/4.04.2/lib/ocaml/threads: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ocaml/threads/threads.cma: loaded\
           \n"))))
       ((ocaml_code "#camlp4o;;")
        (toplevel_responses
         ((Raw
            "\
           \n/Users/yminsky/.opam/4.04.2/lib/ocaml/dynlink.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/ocaml/camlp4: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ocaml/camlp4/camlp4o.cma: loaded\
           \n"))))
       ((ocaml_code "#require \"core\";;")
        (toplevel_responses
         ((Raw
            "\
           \n/Users/yminsky/.opam/4.04.2/lib/base/caml: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/base/caml/caml.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/base/shadow_stdlib: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/base/shadow_stdlib/shadow_stdlib.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/sexplib/0: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/base: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/base/base.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/fieldslib: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/fieldslib/fieldslib.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_compare/runtime-lib: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_compare/runtime-lib/ppx_compare_lib.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/sexplib: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/variantslib: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/variantslib/variantslib.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/bin_prot/shape: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/bin_prot/shape/bin_shape_lib.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/bin_prot: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/bin_prot/bin_prot.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_hash/runtime-lib: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_hash/runtime-lib/ppx_hash_lib.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_inline_test/config: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_inline_test/config/inline_test_config.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_inline_test/runtime-lib: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_inline_test/runtime-lib/ppx_inline_test_lib.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/core_kernel/base_for_tests: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/core_kernel/base_for_tests/base_for_tests.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/jane-street-headers: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/jane-street-headers/jane_street_headers.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/ocaml/nums.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/num-top: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/num-top/num_top.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/num: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_assert/runtime-lib: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_assert/runtime-lib/ppx_assert_lib.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_bench/runtime-lib: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_bench/runtime-lib/ppx_bench_lib.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_expect/common: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_expect/common/expect_test_common.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_expect/config: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_expect/config/expect_test_config.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_expect/collector: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_expect/collector/expect_test_collector.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/stdio: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/stdio/stdio.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/typerep: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/typerep/typerep_lib.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/core_kernel: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/core_kernel/core_kernel.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/sexplib/unix: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/sexplib/unix/sexplib_unix.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/spawn: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/spawn/spawn.cma: loaded\
           \n/Users/yminsky/.opam/4.04.2/lib/core: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/core/core.cma: loaded\
           \n"))))
       ((ocaml_code "#require \"ppx_jane\";;")
        (toplevel_responses
         ((Raw
            "\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_jane: added to search path\
           \n/Users/yminsky/.opam/4.04.2/lib/ppx_jane/./ppx.exe --as-ppx: activated\
           \n")))))))
    ((name 1)
     (chunks
      (((ocaml_code "open Core;;") (toplevel_responses ()))
       ((ocaml_code "Command.basic ;;")
        (toplevel_responses
         ((OCaml "- : ('main, unit) Command.basic_command = <fun>"))))
       ((ocaml_code "Command.group ;;")
        (toplevel_responses
         ((OCaml
            "\
           \n- : summary:string ->\
           \n    ?readme:(unit -> string) ->\
           \n    ?preserve_subcommand_order:unit ->\
           \n    ?body:(path:string list -> unit) ->\
           \n    (string * Command.t) list -> Command.t\
           \n= <fun>\
           \n")))))))))
  (matched true)))

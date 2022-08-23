(* TS: these are answers for the C-to-Isabelle parser to my knowledge, where I can understand Peter's questions, possibly ignoring recent upgrades, definitely ignoring other Isabelle-based work. *)

open Types;;
let data = [

    (* question (don't edit these)                                                "short answer", "long answer notes" *)
H("integer arithmetic");
  Q("usual arithmetic conversions",                                                 "Y         ", "");
  Q("arithmetic UBs",                                                               "Y         ", "");
  Q("ABI variants",                                                                 "?      ", "");
H("floats");
  Q("floating types",                                                               "n         ", "");
H("characters and strings");
  Q("string literals (incl. potential aliasing)",                                   "n         ", "");
  Q("C11 character-set features",                                                   "n      ", "");
H("structured data");
  Q("basic structs",                                                                "Y         ", "");
  Q("basic enums",                                                                  "Y         ", "");
  Q("basic unions",                                                                 "n         ", "");
  Q("struct-as-value memory accesses and arguments/returns",                        "Y         ", "");
  Q("union-as-value memory accesses and arguments/returns",                         "n         ", "");
  Q("compound type initialisers",                                                   "some         ", "");
  Q("bitfields",                                                                    "n         ", "");
  Q("flexible array members",                                                       "n      ", "??");
  Q("variable length arrays",                                                       "Y      ", "");
H("control flow");
  Q("C loose ISO specification of evaluation order",                                "n         ", "");
  Q("loops (for, while, do, break, continue)",                                      "Y         ", "");
  Q("switch (structured)",                                                          "Y         ", "");
  Q("switch (general)",                                                             "n         ", "");
  Q("C goto within a block",                                                        "n         ", "");
  Q("C goto leaving a block",                                                       "n         ", "");
  Q("C goto entering a block",                                                      "n         ", "");
  Q("function pointers",                                                            "very limited ", "");
  Q("non-local jumps (setjump.h)",                                                  "n         ", "");
  Q("signal handling (signal.h)",                                                   "n         ", "");
H("function calls");
  Q("mutable function parameters",                                                  "Y         ", "");
  Q("variadic arguments",                                                           "n         ", "");
  Q("function parameters of array type with \"static\" or *",                       "Y         ", "");
H("lifetime");
  Q("block lifetimes (precise or lifted to function scope)",                        "n/a    ", "");
  Q("thread-local storage",                                                         "n         ", "");
H("memory object model");
  Q("basic model (fully concrete/fully abstract/CompCert block+offset/PNVI-ae-udi/whatever)", "Tuch UMM model", "");
  Q("passing addresses of locals in function calls",                                "n         ", "");
  Q("storing addresses of locals (e.g. in globals)",                                "n         ", "");
  Q("pointer/integer casts (incl. arith on unused/unused bits)",                    "Y         ", "");
  Q("pointer arithmetic using offset-of",                                           "Y, I think", "");
  Q("subobject provenance",                                                         "n         ", "");
  Q("effective types",                                                              "?         ", "");
  Q("uninitialised reads",                                                          "n         ", "");
  Q("restrict",                                                                     "n         ", "");
  Q("register",                                                                     "n         ", "");
H("concurrency");
  Q("unsequenced races",                                                            "n         ", "");
  Q("idealised SC concurrency",                                                     "n         ", "");
  Q("C/C++11",                                                                      "n         ", "");
  Q("Linux-kernel",                                                                 "n         ", "");
  Q("volatile",                                                                     "n         ", "");
H("other");
  Q("C11 generic selection",                                                        "          ", "");
  Q("multiple compilation units",                                                   "          ", "");
  Q("standard library",                                                             "          ", "");
  Q("common (GCC/Clang) non-ISO extensions",                                        "          ", "");
  ]

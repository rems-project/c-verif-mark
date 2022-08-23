(*PS: these are answers for VST from my reading of Andrew's slide  - he had bold/crossed-out/non-bold; I've interpreted non-bold as "some" but that might not be right*)

open Types;;
let data = [

    (* question (don't edit these)                                                "short answer", "long answer notes" *)
H("integer arithmetic");
  Q("usual arithmetic conversions",                                                 "Y         ", "");
  Q("arithmetic UBs",                                                               "Y         ", "");
  Q("ABI variants",                                                                 "some      ", "");
H("floats");
  Q("floating types",                                                               "Y         ", "");
H("characters and strings");
  Q("string literals (incl. potential aliasing)",                                   "Y         ", "");
  Q("C11 character-set features",                                                   "some      ", "");
H("structured data");
  Q("basic structs",                                                                "Y         ", "");
  Q("basic enums",                                                                  "Y         ", "");
  Q("basic unions",                                                                 "Y         ", "");
  Q("struct-as-value memory accesses and arguments/returns",                        "n         ", "");
  Q("union-as-value memory accesses and arguments/returns",                         "n         ", "");
  Q("compound type initialisers",                                                   "Y         ", "");
  Q("bitfields",                                                                    "n         ", "");
  Q("flexible array members",                                                       "some      ", "");
  Q("variable length arrays",                                                       "some      ", "");
H("control flow");
  Q("C loose ISO specification of evaluation order",                                "Y         ", "PS: really?");
  Q("loops (for, while, do, break, continue)",                                      "Y         ", "");
  Q("switch (structured)",                                                          "Y         ", "");
  Q("switch (general)",                                                             "n         ", "");
  Q("C goto within a block",                                                        "n         ", "");
  Q("C goto leaving a block",                                                       "n         ", "");
  Q("C goto entering a block",                                                      "n         ", "");
  Q("function pointers",                                                            "Y         ", "");
  Q("non-local jumps (setjump.h)",                                                  "n         ", "");
  Q("signal handling (signal.h)",                                                   "some      ", "");
H("function calls");
  Q("mutable function parameters",                                                  "Y         ", "");
  Q("variadic arguments",                                                           "some      ", "");
  Q("function parameters of array type with \"static\" or *",                       "Y         ", "");
H("lifetime");
  Q("block lifetimes (precise or lifted to function scope)",                        "lifted    ", "");
  Q("thread-local storage",                                                         "n         ", "");
H("memory object model");
  Q("basic model (fully concrete/fully abstract/CompCert block+offset/PNVI-ae-udi/whatever)", "CompCert block+offset (PS:?)", "");
  Q("passing addresses of locals in function calls",                                "Y         ", "");
  Q("storing addresses of locals (e.g. in globals)",                                "Y         ", "");
  Q("pointer/integer casts (incl. arith on unused/unused bits)",                    "n         ", "");
  Q("pointer arithmetic using offset-of",                                           "some?     ", "");
  Q("subobject provenance",                                                         "some?     ", "");
  Q("effective types",                                                              "Y         ", "");
  Q("uninitialised reads",                                                          "n         ", "");
  Q("restrict",                                                                     "some      ", "");
  Q("register",                                                                     "some      ", "");
H("concurrency");
  Q("unsequenced races",                                                            "some      ", "");
  Q("idealised SC concurrency",                                                     "          ", "");
  Q("C/C++11",                                                                      "          ", "");
  Q("Linux-kernel",                                                                 "yes(?)    ", "");
  Q("volatile",                                                                     "          ", "");
H("other");
  Q("C11 generic selection",                                                        "          ", "");
  Q("multiple compilation units",                                                   "          ", "");
  Q("standard library",                                                             "          ", "");
  Q("common (GCC/Clang) non-ISO extensions",                                        "          ", "");
  ]

#  C features and idioms

Here's a fairly ad hoc list, off the top of my head, that one might improve and then use for comparison of tools.  The aim is to be discriminating while not being too long.  Some answers might need comments, not just yes/no - in many cases a tool might partially implement something (e.g. compound type initialisers) but not fully implement the ISO notion. However, it would be good to keep this short enough that most of the data can be presented in a single table for comparison between tools.

This needs a lightweight format so that that table can be auto-generated from sources that can be separately (and easily) edited for each tool. The questions are defined in `template.ml` and the answers should be in files like `answers_VST.ml`.  Take care not to edit the question text in the latter. For each answer, there are two strings: one that should be short and appears in the generated table, and another that appears as a template. To regenerate the markdown table, just `make` (with OCaml installed). 




| |VST|
|-|-|
| **integer arithmetic** |
|usual arithmetic conversions|Y         |
|arithmetic UBs|Y         |
|ABI variants|some      |
| **floats** |
|floating types|Y         |
| **characters and strings** |
|string literals (incl. potential aliasing)|Y         |
|C11 character-set features|some      |
| **structured data** |
|basic structs|Y         |
|basic enums|Y         |
|basic unions|Y         |
|struct-as-value memory accesses and arguments/returns|n         |
|union-as-value memory accesses and arguments/returns|n         |
|compound type initialisers|Y         |
|bitfields|n         |
|flexible array members|some      |
|variable length arrays|some      |
| **control flow** |
|C loose ISO specification of evaluation order| [Y         ](. "PS: really?")|
|loops (for, while, do, break, continue)|Y         |
|switch (structured)|Y         |
|switch (general)|n         |
|C goto within a block|n         |
|C goto leaving a block|n         |
|C goto entering a block|n         |
|function pointers|Y         |
|non-local jumps (setjump.h)|n         |
|signal handling (signal.h)|some      |
| **function calls** |
|mutable function parameters|Y         |
|variadic arguments|some      |
|function parameters of array type with "static" or *|Y         |
| **lifetime** |
|block lifetimes (precise or lifted to function scope)|lifted    |
|thread-local storage|n         |
| **memory object model** |
|basic model (fully concrete/fully abstract/CompCert block+offset/PNVI-ae-udi/whatever)|CompCert block+offset (PS:?)|
|passing addresses of locals in function calls|Y         |
|storing addresses of locals (e.g. in globals)|Y         |
|pointer/integer casts (incl. arith on unused/unused bits)|n         |
|pointer arithmetic using offset-of|some?     |
|subobject provenance|some?     |
|effective types|Y         |
|uninitialised reads|n         |
|restrict|some      |
|register|some      |
| **concurrency** |
|unsequenced races|some      |
|idealised SC concurrency|          |
|C/C++11|          |
|Linux-kernel|yes(?)    |
|volatile|          |
| **other** |
|C11 generic selection|          |
|multiple compilation units|          |
|standard library|          |
|common (GCC/Clang) non-ISO extensions|          |

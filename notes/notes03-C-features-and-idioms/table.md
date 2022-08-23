| |VST|
|-|-|
| integer arithmetic |
|usual arithmetic conversions|Y         ()|
|arithmetic UBs|Y         ()|
|ABI variants|some      ()|
| floats |
|floating types|Y         ()|
| characters and strings |
|string literals (incl. potential aliasing)|Y         ()|
|C11 character-set features|some      ()|
| structured data |
|basic structs|Y         ()|
|basic enums|Y         ()|
|basic unions|Y         ()|
|struct-as-value memory accesses and arguments/returns|n         ()|
|union-as-value memory accesses and arguments/returns|n         ()|
|compound type initialisers|Y         ()|
|bitfields|n         ()|
|flexible array members|some      ()|
|variable length arrays|some      ()|
| control flow |
|C loose ISO specification of evaluation order|Y         (PS: really?)|
|loops (for, while, do, break, continue)|Y         ()|
|switch (structured)|Y         ()|
|switch (general)|n         ()|
|C goto within a block|n         ()|
|C goto leaving a block|n         ()|
|C goto entering a block|n         ()|
|function pointers|Y         ()|
|non-local jumps (setjump.h)|n         ()|
|signal handling (signal.h)|some      ()|
| function calls |
|mutable function parameters|Y         ()|
|variadic arguments|some      ()|
|function parameters of array type with "static" or *|Y         ()|
| lifetime |
|block lifetimes (precise or lifted to function scope)|lifted    ()|
|thread-local storage|n         ()|
| memory object model |
|basic model (fully concrete/fully abstract/CompCert block+offset/PNVI-ae-udi/whatever)|CompCert block+offset (PS:?)()|
|passing addresses of locals in function calls|Y         ()|
|storing addresses of locals (e.g. in globals)|Y         ()|
|pointer/integer casts (incl. arith on unused/unused bits)|n         ()|
|pointer arithmetic using offset-of|some?     ()|
|subobject provenance|some?     ()|
|effective types|Y         ()|
|uninitialised reads|n         ()|
|restrict|some      ()|
|register|some      ()|
| concurrency |
|unsequenced races|some      ()|
|idealised SC concurrency|          ()|
|C/C++11|          ()|
|Linux-kernel|yes(?)    ()|
|volatile|          ()|
| other |
|C11 generic selection|          ()|
|multiple compilation units|          ()|
|standard library|          ()|
|common (GCC/Clang) non-ISO extensions|          ()|

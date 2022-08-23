#  C features and idioms

Here's a fairly ad hoc list, off the top of my head, that one might improve and then use for comparison of tools.  The aim is to be discriminating while not being too long.  Some answers might need comments, not just yes/no - in many cases a tool might partially implement something (e.g. compound type initialisers) but not fully implement the ISO notion. However, it would be good to keep this short enough that most of the data can be presented in a single table for comparison between tools.  We should fix a format so that that table can be auto-generated from sources that can be separately edited for each tool. 

- integer arithmetic
    - usual arithmetic conversions
    - arithmetic UBs
    - ABI variants
- floats
    - floating types
- characters and strings
    - string literals (incl. potential aliasing)
    - C11 character-set features
- structured data
    - basic structs
    - basic enums
    - basic unions
    - struct-as-value memory accesses and arguments/returns
    - union-as-value memory accesses and arguments/returns
    - compound type initialisers
    - bitfields
    - flexible array members
    - variable length arrays
- control flow 
    - C loose ISO specification of evaluation order
    - loops (for, while, do, break, continue)
    - switch (incl. structured vs general)
    - C goto within a block
    - C goto leaving a block
    - C goto entering a block
    - function pointers
    - non-local jumps (setjump.h)
    - signal handling (signal.h)
- function calls
    - mutable function parameters
    - variadic arguments
    - function parameters of array type with "static" or *
- lifetime
    - block lifetimes (precise or lifted to function scope)
    - thread-local storage
- memory object model
    - basic model (fully concrete/fully abstract/CompCert block+offset/PNVI-ae-udi/whatever)
    - passing addresses of locals in function calls
    - storing addresses of locals (e.g. in globals)
    - pointer/integer casts (incl. arith on unused/unused bits)
    - pointer arithmetic using offset-of 
    - subobject provenance
    - effective types
    - uninitialised reads
    - restrict
    - register
- unsequenced races
- concurrency
    - idealised SC concurrency
    - C/C++11 
    - Linux-kernel 
    - volatile
- C11 generic selection
- multiple compilation units 
- standard library
- common (GCC/Clang) non-ISO extensions




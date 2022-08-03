# c-verif-mark

This arose from discussions with people at the Isaac Newton Institute [Verified Software](https://www.newton.ac.uk/event/vso2/) programme.


Verifying functional correctness of C code remains a critically important challenge, especially for the systems code that aims to enforce security. 
Looking at the many approaches and tools for C verification, it's not always easy to understand their strengths and limitations, and, while many have supported impressive verifications, none are as easy to use and as flexible as one might want.   There are almost as many approaches as there are verification projects.  It would be good as a community to develop a shared understanding of the key issues and best approaches to them, and of the state of the art of the various tools, to drive future progress. 

Automated verification has benefited from various competitions (see [Alastair Reid's summary](https://alastairreid.github.io/verification-competitions/).  For interactive verification, comparison is harder, but it would be worthwhile to collect a modest-size set of small examples, each involving some interesting language feature and/or programming idiom, and inviting tool authors (and others) to submit model solutions for them - preferably with detailed explanations of what's going on under the hood, at least for selected examples.  In some cases it might be worth having multiple solutions, e.g. if automation means that the easiest solution isn't the most instructive, or not representative of what one would have to do in a bigger verification.

One could also collect a longer simple list of C features and idioms and ask whether (or to what extent) each tool handles them, maybe with code examples, but (to avoid making contributions overwhelming) without requiring example solutions for all those.

The aim is for something quite lightweight, broadly along the lines of our long-ago [POPLmark](https://www.seas.upenn.edu/~plclub/poplmark/) - e.g., after collecting some agreed set of examples and questions, just having a shared github repo that tool authors could add solutions and answers to.  The idea would be simply to expose a clear comparison in this highly multidimensional space, not to have a competition (no judging, scores, or winners).

One could focus just on verifying C code as-is, or also cover the various approaches out there that verify something else and then generate C from that, or consider all verification at roughly the C level of abstraction. 

## Schedule

We'll have an initial meeting on Wednesday 3 August 2022, 2pm - 5pm UK time (BST=UTC+1), which is 3-6pm Central Europe (CEST=UTC+2), 9am-12noon East-coast USA (EDT=UTC-4), 6am-9am West-coast USA (PDT=UTC-7), 10pm-1am Seoul (KST=UTC+9), 11pm-2am Sydney (AEST=UTC+10).  This can be in person for those in Cambridge, in Room 2 of the INI, or by zoom with a link TBA. 

We'll have short status-update/lessons-learned/limitations/future-plan talks (15 minutes each) for several of the existing approaches (though by no means all). 

- 2.00 - 2.15 Peter Sewell (University of Cambridge), Introduction
- 2.15 - 2.30 Andrew Appel/Lennart Beringer (Princeton), VST
- 2.40 - 2.55 Bart Jacobs (KU Leuven), VeriFast
- 3.05 - 3.20 Michael Sammler (MPI-SWS), RefinedC
- 3.30 - 3.45 Gregory Malecha (BedRock Systems Inc.), BedRock
- 3.55 - 4.10 Thomas Sewell (University of Cambridge), seL4 approaches
- 4.20 - 4.35 Zhong Shao (Yale), CertiKOS approach
- ...  - 5.00 Discussion (and in the gaps)


In the gaps, and at the end, we'll discuss the accumulation of:

- key verification tool design issues and solutions
- examples to use to explain and compare how existing tools work
- C features and idioms to assess tool coverage


## Previous functional-correctness verification comparisons 

There have been several previous comparisons over the years, but I don't see anything that exactly hits the above goals.

- [A benchmark for C program verification](https://www.cs.ru.nl/~freek/cbench/cbench.pdf)  (cbench [repo](https://github.com/cverified/cbench/)), 2019. Marko van Eekelen, Daniil Frumin, Herman Geuvers, Léon Gondelman, Robbert Krebbers, Marc Schoolderman, Sjaak Smetsers, Freek Verbeek, Benoı̂t Viguier, Freek Wiedijk
- [lets-prove-leftpad](https://github.com/hwayne/lets-prove-leftpad). Hillel Wayne
- [VerifyThis](https://www.pm.inf.ethz.ch/research/verifythis.html), 2011-2021. Marie Farrell, Peter Lammich. 
- [The 2nd Verified Software Competition: Experience Report](https://hal.inria.fr/hal-00798777/document), 2011. Jean-Christophe Filliâtre, Andrei Paskevich, Aaron Stump
- [The 1st Verified Software Competition: Extended Experience Report](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/12/krml214.pdf), 2010/2011.  Vladimir Klebanov, Peter Müller, Natarajan Shankar, Gary T. Leavens, Valentin Wüstholz, Eyad Alkassar, Rob Arthan, Derek Bronish, Rod Chapman, Ernie Cohen, Mark Hillebrand, Bart Jacobs, K. Rustan M. Leino, Rosemary Monahan, Frank Piessens, Nadia Polikarpova, Tom Ridge, Jan Smans, Stephan Tobies, Thomas Tuerk, Mattias Ulbrich, and Benjamin Weiß

Of these, cbench and lets-prove-leftpad are perhaps the closest, but several of those examples are rather complex, and they don't exactly target the language features and idioms that arise in systems code. . 


## Automated verification competitions

There are suites for automated-tool competitions such as SV-COMP https://gitlab.com/sosy-lab/benchmarking/sv-benchmarks - far too many examples there for interactive tools, but one might pull some out, or it might be interesting to compare with the fully automated tools for simple properties.

## Other existing sets of examples

Several tools have suites of small and large examples that have been done in that system, e.g.:

- the VST [catalog of (small and large) examples](https://github.com/PrincetonUniversity/VST/blob/master/doc/catalog-of-examples.md)
- the VeriFast [examples](https://github.com/verifast/verifast/tree/master/examples)
- the Frama-C [tutorials](https://frama-c.com/html/tutorials.html)
- the Viper [online examples](http://viper.ethz.ch/examples/binary-search-array.html)   (not C)




## Candidate examples

Starting very simple, so that one can really explain what the tool is doing:

- some straight-line simple arithmetic, composing statements
- a function taking an `int *p` and returning `p+1`
- simple array update
- the `cbench` factorial examples 2.1 - 2.4
- the VST sum-of-array example
- ...



##  Candidate C feature/idiom list

Here's a fairly ad hoc list that one might improve and then use for comparison of tools.  The aim is to be discriminating while not being too long.  Some answers might need text to explain what semantics the tool assumes, not just yes/no, though it would be good to be compact enough so that the results can be presented as a (large) table. 

- integer arithmetic
    - usual arithmetic conversions
    - arithmetic UBs
    - ABI variants
- floats
    - floating types
- characters and strings
    - string literals (incl. their potential aliasing)
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
    - C evaluation order
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
    - block lifetimes
    - thread-local storage
- memory object model
    - basic model (fully concrete/fully abstract/PNVI-*/whatever)
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
- concurrency   (C/C++11 or Linux-kernel fragments)
    - volatile
- C11 generic selection
- standard library


...and various ownership idioms.


## Previous Comparisons

### Previous functional-correctness verification comparisons 


- [A benchmark for C program verification](https://www.cs.ru.nl/~freek/cbench/cbench.pdf)  (cbench [repo](https://github.com/cverified/cbench/)), 2019. Marko van Eekelen, Daniil Frumin, Herman Geuvers, Léon Gondelman, Robbert Krebbers, Marc Schoolderman, Sjaak Smetsers, Freek Verbeek, Benoı̂t Viguier, Freek Wiedijk
- [lets-prove-leftpad](https://github.com/hwayne/lets-prove-leftpad). Hillel Wayne
- [VerifyThis](https://www.pm.inf.ethz.ch/research/verifythis.html), 2011-2021. Marie Farrell, Peter Lammich. 
- [The 2nd Verified Software Competition: Experience Report](https://hal.inria.fr/hal-00798777/document), 2011. Jean-Christophe Filliâtre, Andrei Paskevich, Aaron Stump
- [The 1st Verified Software Competition: Extended Experience Report](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/12/krml214.pdf), 2010/2011.  Vladimir Klebanov, Peter Müller, Natarajan Shankar, Gary T. Leavens, Valentin Wüstholz, Eyad Alkassar, Rob Arthan, Derek Bronish, Rod Chapman, Ernie Cohen, Mark Hillebrand, Bart Jacobs, K. Rustan M. Leino, Rosemary Monahan, Frank Piessens, Nadia Polikarpova, Tom Ridge, Jan Smans, Stephan Tobies, Thomas Tuerk, Mattias Ulbrich, and Benjamin Weiß

Of these, cbench and lets-prove-leftpad are perhaps the closest, but several of those examples are rather complex, and they don't exactly target the language features and idioms that arise in systems code.


### Automated verification competitions

There are suites for automated-tool competitions such as SV-COMP (10k "verification tasks")  https://gitlab.com/sosy-lab/benchmarking/sv-benchmarks - far too many examples there for interactive tools, but one might pull some out, or it might be interesting to compare with the fully automated tools for simple properties.

### Other existing sets of examples

Several tools have suites of small and large examples that have been done in that system, e.g.:

- [VST catalog of examples](https://github.com/PrincetonUniversity/VST/blob/master/doc/catalog-of-examples.md) (small examples at the end of that page)
- the VeriFast [examples](https://github.com/verifast/verifast/tree/master/examples)
- the Frama-C [tutorials](https://frama-c.com/html/tutorials.html)
- the Viper [online examples](http://viper.ethz.ch/examples/binary-search-array.html)   (not C)



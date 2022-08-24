# c-verif-mark

This arose from discussions with people at the Isaac Newton Institute [Verified Software](https://www.newton.ac.uk/event/vso2/) programme.


Verifying functional correctness of C code remains a critically important challenge, especially for the systems code that aims to enforce security. 
Looking at the many approaches and tools for C verification, it's not always easy to understand their strengths and limitations, and, while many have supported impressive verifications, none are as easy to use and as flexible as one might want.   There are almost as many approaches as there are verification projects.  It would be good as a community to develop a shared understanding of the key issues and best approaches to them, and of the state of the art of the various tools, to help drive future progress. 

Automated verification has benefited from various competitions (see [Alastair Reid's summary](https://alastairreid.github.io/verification-competitions/).  For interactive verification, comparison is harder, but it would be worthwhile to collect a modest-size set of small examples, each involving some interesting language feature and/or programming idiom, and inviting tool authors (and others) to submit model solutions for them - preferably with detailed explanations of what's going on under the hood, at least for selected examples.  In some cases it might be worth having multiple solutions, e.g. if automation means that the easiest solution isn't the most instructive, or not representative of what one would have to do in a bigger verification.

We can also collect a longer simple list of C features and idioms and ask whether (or to what extent) each tool handles them, maybe with code examples, but (to avoid making contributions overwhelming) without requiring example solutions for all those.

The aim is for something quite lightweight, broadly along the lines of our long-ago [POPLmark](https://www.seas.upenn.edu/~plclub/poplmark/) - e.g., after collecting some agreed set of examples and questions, just having a shared github repo that tool authors could add solutions and answers to.  The idea would be simply to expose a clear comparison and better understanding of this highly multidimensional space, not to have a competition (no judging, scores, or winners).



One could focus just on verifying C code as-is, or also cover the various approaches out there that verify something else and then generate C from that, or consider all verification at roughly the C level of abstraction.  All those are interesting and relevant - so far we've focussed mostly on the first, but for the other two one could ask for solutions that are essentially the same as the C examples. 


## Initial meeting talks

We had an initial meeting on Wednesday 3 August 2022, at the Isaac Newton Institute and online, as part of the [VSO2](https://www.newton.ac.uk/event/vso2/) programme.  This had 
short status-update/lessons-learned/limitations/future-plan talks (15 minutes each) for several of the existing approaches.  This is just a selection limited by availability and the schedule; it's missing several major approaches.  The videos and most slides are available:

- 2.00 - 2.15 [Peter Sewell (University of Cambridge), Introduction](https://www.newton.ac.uk/seminar/36483)   [Slides](notes/notes02-2022-08-03-INI-all-slides/Peter_Sewell_Intro.pdf)
- 2.15 - 2.30 [Andrew Appel/Lennart Beringer (Princeton), VST](https://www.newton.ac.uk/seminar/36847)   [Slides](notes/notes02-2022-08-03-INI-all-slides/Andrew_Appel_VST.pdf)
- 2.40 - 2.55 [Bart Jacobs (KU Leuven), VeriFast](https://www.newton.ac.uk/seminar/36848)   [Slides](notes/notes02-2022-08-03-INI-all-slides/Bart_Jacobs_VeriFast.pptx)
- 3.05 - 3.20 [Michael Sammler (MPI-SWS), RefinedC](https://www.newton.ac.uk/seminar/36849)   [Slides](notes/notes02-2022-08-03-INI-all-slides/Michael_Sammler_RefinedC.pdf)
- 3.30 - 3.45 [Gregory Malecha (BedRock Systems Inc.), BedRock](https://www.newton.ac.uk/seminar/36851)
- 3.55 - 4.10 [Thomas Sewell (University of Cambridge), seL4 approaches](https://www.newton.ac.uk/seminar/36850)   [Slides](notes/notes02-2022-08-03-INI-all-slides/Thomas_Sewell_seL4.pdf)
- 4.20 - 4.35 [Zhong Shao (Yale), CertiKOS approach](https://www.newton.ac.uk/seminar/36852)   [Slides](notes/notes02-2022-08-03-INI-all-slides/Zhong_Shao_CertiKOS.pdf)
- ...  - 5.00 Discussion (and in the gaps)

    Discussion of 

    - key verification tool design issues and solutions
    - examples to use to explain and compare how existing tools work
    - C features and idioms to assess tool coverage






## Previous work

There have been several previous comparisons over the years, but I don't see anything that exactly hits the above goals.  [See the links to previous comparisons here](notes/notes05-previous-comparisons.md)



##  Candidate C feature/idiom list

See [here](notes/notes03-C-features-and-idioms/README.md)

## Candidate examples

See [here](notes/notes04-examples/README.md)

## Generic questions for each approach

- web links for tool, explanation, tutorial, existing examples
- how it works overview
- what C front-end
- what connection to binary verification, if any
- success highlights
- limitations
- future plans
- licensing status




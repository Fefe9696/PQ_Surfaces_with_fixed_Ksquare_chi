# Classification_Product-Quotient_surfaces_with_fixed_Ksquare_and_chi

A [Magma](http://magma.maths.usyd.edu.au/magma/) program which gives in input a pair of natural integers Ksquare and chi and returns all regular surfaces S of general type with Ksequare(S)=Ksquare and chi(S)=chi, which are Product-Quotient surfaces.

The algorithm is explained in Section 4.8 of 

[PhDThesis] F. Fallucca, [On the degree of the canonical map of surfaces of general type](https://fefe9696.github.io/federico.fallucca.github.io/Files/PhDThesis.pdf)

The algorithm uses also a database of topological types of Galois coverings of the projective line, which can be found here: [TipiTopo](https://mate.unipv.it/ghigi/tipitopo/)

The algorithm to produce the database of topological types is explained here

[CGP] D. Conti, A. Ghigi, R. Pignatelli. Topological types of actions on curves [arXiv:2207.00981](http://arxiv.org/abs/2207.00981)

[CGP2] D. Conti, A. Ghigi, R. Pignatelli. Some evidence for the Coleman-Oort conjecture. [arXiv:2102.12349](http://arxiv.org/abs/2102.12349)

and it is available here: [gulliinbursti](https://github.com/diego-conti/gullinbursti)

If you use these codes in your research, please quote our works!

### Main Magma scripts
The program contains four main Magma scripts:

###Ciao

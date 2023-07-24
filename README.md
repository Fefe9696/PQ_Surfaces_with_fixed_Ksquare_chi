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
The program contains five main Magma scripts:

### FindSurfaces_with_fixed_Ksquare_chi.txt
Produce the list of all regular Product-Quotinet surfaces as pairs of spherical systems of generators having prescribed invariants Ksquare and chi. 

This script works by using the following main secondary scripts:
1. List_of_types_compatible_with_basket_with_fixed_Ksquare_and_chi <!--It produces a list, for given Ksquare and chi, of all possible baskets and for each basket all possible signatures. The list produced as is passed to the next script.-->
2. Existing_Surfaces_with_fixed_Ksquare_chi.txt <!--For given Ksquare and chi, it produces a list of triples (basket, pairoftypes, group) such that
   a) basket is compatible with Ksquare and chi;
   b) the signatures pairoftypes are compatible with the basket;
   c) group has order (K^2+k)/(2*Theta_1*Theta_2) (see Prop. 4.6.4.b) and it admits at least one pair of spherical systems of generators        that are compatible with pairoftypes and give Prodcut-Quotient surfaces whose quotient model has basket as basket of singularities.
In this way, each Product-Quotient surface S of the family given by the pair of spherical systems of generators has Ksquare(S)=Ksquare and chi(S)=chi (see Prop. 4.6.4)-->

<!--The main function "FindSurfaces_with_Fixed_Ksquare_chi" of the script takes in input a list of triples (basket, pairoftypes, group) and returns all families of regular Product-Quotinet surfaces as pairs of spherical systems of generators of group which are comapatible with the pair of signatures pairoftypes, and whose quotient model has basket as basket of singularities. -->

### ExSphSyst.txt
The main function of this script is "ExSphSyst", which takes in input a group G and a signature M and returns true if there exists at least one spherical system of generators of G compatible with that signature, and false otherwise. 

### CountingPQ_from_pair_top_typ_SSG.txt
This script is the main result of Chapter 4 of my thesis. It takes in input a pair of spherical systems V1 and V2 of a group G
and produces the set of pairwise distinct families of Product-Quotient surfaces given by the pair of topological types of G-coverings of V1 and V2. 

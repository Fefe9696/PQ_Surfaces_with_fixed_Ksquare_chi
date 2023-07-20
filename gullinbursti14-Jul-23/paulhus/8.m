// Magma CODE FOR SEARCH RESULTS

// The results are stored in a list of records called 'data'

RecFormat:=recformat<group,gp_id, signature,gen_vectors,conj_classes,genus,dimension,r,g0, passport_label,gen_vect_label, is_hyperelliptic, hyp_involution, is_cyclic_trigonal,cyc_auto,full_auto, full_sign,topological_class,braid_class>;

data:=[];

// label = 8.20-2.0.5-20-20
// Create group as a permutation group and initialize signature information.
gp_id:=[20,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,5,20,20];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 13, 14, 15, 16, 17, 18, 19, 20, 11, 12], [13, 14, 15, 16, 17, 18, 19, 20, 11, 12, 4, 3, 6, 5, 8, 7, 10, 9, 2, 1], [18, 17, 20, 19, 12, 11, 14, 13, 16, 15, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6]];
cc:=[5,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 13, 14, 15, 16, 17, 18, 19, 20, 11, 12], [16, 15, 18, 17, 20, 19, 12, 11, 14, 13, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4], [15, 16, 17, 18, 19, 20, 11, 12, 13, 14, 6, 5, 8, 7, 10, 9, 2, 1, 4, 3]];
cc:=[5,15,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 13, 14, 15, 16, 17, 18, 19, 20, 11, 12], [14, 13, 16, 15, 18, 17, 20, 19, 12, 11, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2], [17, 18, 19, 20, 11, 12, 13, 14, 15, 16, 8, 7, 10, 9, 2, 1, 4, 3, 6, 5]];
cc:=[5,17,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 15, 16, 17, 18, 19, 20, 11, 12, 13, 14], [13, 14, 15, 16, 17, 18, 19, 20, 11, 12, 4, 3, 6, 5, 8, 7, 10, 9, 2, 1], [16, 15, 18, 17, 20, 19, 12, 11, 14, 13, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4]];
cc:=[6,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 15, 16, 17, 18, 19, 20, 11, 12, 13, 14], [19, 20, 11, 12, 13, 14, 15, 16, 17, 18, 10, 9, 2, 1, 4, 3, 6, 5, 8, 7], [20, 19, 12, 11, 14, 13, 16, 15, 18, 17, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[6,16,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 15, 16, 17, 18, 19, 20, 11, 12, 13, 14], [14, 13, 16, 15, 18, 17, 20, 19, 12, 11, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2], [15, 16, 17, 18, 19, 20, 11, 12, 13, 14, 6, 5, 8, 7, 10, 9, 2, 1, 4, 3]];
cc:=[6,17,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 17, 18, 19, 20, 11, 12, 13, 14, 15, 16], [13, 14, 15, 16, 17, 18, 19, 20, 11, 12, 4, 3, 6, 5, 8, 7, 10, 9, 2, 1], [14, 13, 16, 15, 18, 17, 20, 19, 12, 11, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2]];
cc:=[7,13,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 17, 18, 19, 20, 11, 12, 13, 14, 15, 16], [18, 17, 20, 19, 12, 11, 14, 13, 16, 15, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6], [19, 20, 11, 12, 13, 14, 15, 16, 17, 18, 10, 9, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[7,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 17, 18, 19, 20, 11, 12, 13, 14, 15, 16], [17, 18, 19, 20, 11, 12, 13, 14, 15, 16, 8, 7, 10, 9, 2, 1, 4, 3, 6, 5], [20, 19, 12, 11, 14, 13, 16, 15, 18, 17, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[7,18,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 19, 20, 11, 12, 13, 14, 15, 16, 17, 18], [18, 17, 20, 19, 12, 11, 14, 13, 16, 15, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6], [17, 18, 19, 20, 11, 12, 13, 14, 15, 16, 8, 7, 10, 9, 2, 1, 4, 3, 6, 5]];
cc:=[8,14,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 19, 20, 11, 12, 13, 14, 15, 16, 17, 18], [16, 15, 18, 17, 20, 19, 12, 11, 14, 13, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4], [19, 20, 11, 12, 13, 14, 15, 16, 17, 18, 10, 9, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[8,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 19, 20, 11, 12, 13, 14, 15, 16, 17, 18], [15, 16, 17, 18, 19, 20, 11, 12, 13, 14, 6, 5, 8, 7, 10, 9, 2, 1, 4, 3], [20, 19, 12, 11, 14, 13, 16, 15, 18, 17, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[8,19,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.48-17.0.2-8-12
// Create group as a permutation group and initialize signature information.
gp_id:=[48,17];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,8,12];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [39, 38, 37, 42, 41, 40, 45, 44, 43, 48, 47, 46, 33, 32, 31, 36, 35, 34, 30, 29, 28, 27, 26, 25, 15, 14, 13, 18, 17, 16, 21, 20, 19, 24, 23, 22, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [17, 18, 16, 14, 15, 13, 20, 21, 19, 23, 24, 22, 2, 3, 1, 5, 6, 4, 11, 12, 10, 8, 9, 7, 41, 42, 40, 38, 39, 37, 44, 45, 43, 47, 48, 46, 26, 27, 25, 29, 30, 28, 35, 36, 34, 32, 33, 31]];
cc:=[3,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [38, 37, 39, 41, 40, 42, 44, 43, 45, 47, 46, 48, 32, 31, 33, 35, 34, 36, 29, 28, 30, 26, 25, 27, 14, 13, 15, 17, 16, 18, 20, 19, 21, 23, 22, 24, 8, 7, 9, 11, 10, 12, 5, 4, 6, 2, 1, 3], [18, 16, 17, 15, 13, 14, 21, 19, 20, 24, 22, 23, 3, 1, 2, 6, 4, 5, 12, 10, 11, 9, 7, 8, 42, 40, 41, 39, 37, 38, 45, 43, 44, 48, 46, 47, 27, 25, 26, 30, 28, 29, 36, 34, 35, 33, 31, 32]];
cc:=[3,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [42, 41, 40, 39, 38, 37, 48, 47, 46, 45, 44, 43, 36, 35, 34, 33, 32, 31, 27, 26, 25, 30, 29, 28, 18, 17, 16, 15, 14, 13, 24, 23, 22, 21, 20, 19, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4], [14, 15, 13, 17, 18, 16, 23, 24, 22, 20, 21, 19, 5, 6, 4, 2, 3, 1, 8, 9, 7, 11, 12, 10, 38, 39, 37, 41, 42, 40, 47, 48, 46, 44, 45, 43, 29, 30, 28, 26, 27, 25, 32, 33, 31, 35, 36, 34]];
cc:=[3,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [41, 40, 42, 38, 37, 39, 47, 46, 48, 44, 43, 45, 35, 34, 36, 32, 31, 33, 26, 25, 27, 29, 28, 30, 17, 16, 18, 14, 13, 15, 23, 22, 24, 20, 19, 21, 11, 10, 12, 8, 7, 9, 2, 1, 3, 5, 4, 6], [15, 13, 14, 18, 16, 17, 24, 22, 23, 21, 19, 20, 6, 4, 5, 3, 1, 2, 9, 7, 8, 12, 10, 11, 39, 37, 38, 42, 40, 41, 48, 46, 47, 45, 43, 44, 30, 28, 29, 27, 25, 26, 33, 31, 32, 36, 34, 35]];
cc:=[3,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.34-2.0.2-17-34
// Create group as a permutation group and initialize signature information.
gp_id:=[34,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,17,34];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18], [34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]];
cc:=[2,3,34];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19], [33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]];
cc:=[2,4,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20], [32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]];
cc:=[2,5,33];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21], [31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]];
cc:=[2,6,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22], [30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[2,7,32];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23], [29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]];
cc:=[2,8,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24], [28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[2,9,31];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25], [27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[2,10,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26], [26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,11,30];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27], [25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7]];
cc:=[2,12,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28], [24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6]];
cc:=[2,13,29];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], [23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 22, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5]];
cc:=[2,14,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 31, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30], [22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 21, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4]];
cc:=[2,15,28];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 32, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31], [21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 20, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3]];
cc:=[2,16,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 33, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32], [20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 19, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2]];
cc:=[2,17,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 34, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33], [19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 18, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1]];
cc:=[2,18,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.40-10.0.2-10-20
// Create group as a permutation group and initialize signature information.
gp_id:=[40,10];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,10,20];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30], [23, 24, 25, 26, 27, 28, 29, 30, 21, 22, 34, 33, 36, 35, 38, 37, 40, 39, 32, 31, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 14, 13, 16, 15, 18, 17, 20, 19, 12, 11], [39, 40, 31, 32, 33, 34, 35, 36, 37, 38, 30, 29, 22, 21, 24, 23, 26, 25, 28, 27, 19, 20, 11, 12, 13, 14, 15, 16, 17, 18, 10, 9, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[3,18,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30], [27, 28, 29, 30, 21, 22, 23, 24, 25, 26, 38, 37, 40, 39, 32, 31, 34, 33, 36, 35, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 18, 17, 20, 19, 12, 11, 14, 13, 16, 15], [35, 36, 37, 38, 39, 40, 31, 32, 33, 34, 26, 25, 28, 27, 30, 29, 22, 21, 24, 23, 15, 16, 17, 18, 19, 20, 11, 12, 13, 14, 6, 5, 8, 7, 10, 9, 2, 1, 4, 3]];
cc:=[3,19,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30], [25, 26, 27, 28, 29, 30, 21, 22, 23, 24, 36, 35, 38, 37, 40, 39, 32, 31, 34, 33, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 16, 15, 18, 17, 20, 19, 12, 11, 14, 13], [37, 38, 39, 40, 31, 32, 33, 34, 35, 36, 28, 27, 30, 29, 22, 21, 24, 23, 26, 25, 17, 18, 19, 20, 11, 12, 13, 14, 15, 16, 8, 7, 10, 9, 2, 1, 4, 3, 6, 5]];
cc:=[3,20,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30], [29, 30, 21, 22, 23, 24, 25, 26, 27, 28, 40, 39, 32, 31, 34, 33, 36, 35, 38, 37, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 20, 19, 12, 11, 14, 13, 16, 15, 18, 17], [33, 34, 35, 36, 37, 38, 39, 40, 31, 32, 24, 23, 26, 25, 28, 27, 30, 29, 22, 21, 13, 14, 15, 16, 17, 18, 19, 20, 11, 12, 4, 3, 6, 5, 8, 7, 10, 9, 2, 1]];
cc:=[3,21,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19], [13, 14, 15, 16, 17, 18, 19, 20, 11, 12, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 33, 34, 35, 36, 37, 38, 39, 40, 31, 32, 23, 24, 25, 26, 27, 28, 29, 30, 21, 22], [40, 39, 32, 31, 34, 33, 36, 35, 38, 37, 29, 30, 21, 22, 23, 24, 25, 26, 27, 28, 20, 19, 12, 11, 14, 13, 16, 15, 18, 17, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[4,14,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19], [17, 18, 19, 20, 11, 12, 13, 14, 15, 16, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 37, 38, 39, 40, 31, 32, 33, 34, 35, 36, 27, 28, 29, 30, 21, 22, 23, 24, 25, 26], [36, 35, 38, 37, 40, 39, 32, 31, 34, 33, 25, 26, 27, 28, 29, 30, 21, 22, 23, 24, 16, 15, 18, 17, 20, 19, 12, 11, 14, 13, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4]];
cc:=[4,15,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19], [15, 16, 17, 18, 19, 20, 11, 12, 13, 14, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 35, 36, 37, 38, 39, 40, 31, 32, 33, 34, 25, 26, 27, 28, 29, 30, 21, 22, 23, 24], [38, 37, 40, 39, 32, 31, 34, 33, 36, 35, 27, 28, 29, 30, 21, 22, 23, 24, 25, 26, 18, 17, 20, 19, 12, 11, 14, 13, 16, 15, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6]];
cc:=[4,16,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19], [19, 20, 11, 12, 13, 14, 15, 16, 17, 18, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 39, 40, 31, 32, 33, 34, 35, 36, 37, 38, 29, 30, 21, 22, 23, 24, 25, 26, 27, 28], [34, 33, 36, 35, 38, 37, 40, 39, 32, 31, 23, 24, 25, 26, 27, 28, 29, 30, 21, 22, 14, 13, 16, 15, 18, 17, 20, 19, 12, 11, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2]];
cc:=[4,17,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.60-8.0.2-6-10
// Create group as a permutation group and initialize signature information.
gp_id:=[60,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,10];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[46, 50, 49, 48, 47, 56, 60, 59, 58, 57, 51, 55, 54, 53, 52, 31, 35, 34, 33, 32, 41, 45, 44, 43, 42, 36, 40, 39, 38, 37, 16, 20, 19, 18, 17, 26, 30, 29, 28, 27, 21, 25, 24, 23, 22, 1, 5, 4, 3, 2, 11, 15, 14, 13, 12, 6, 10, 9, 8, 7], [40, 39, 38, 37, 36, 45, 44, 43, 42, 41, 35, 34, 33, 32, 31, 55, 54, 53, 52, 51, 60, 59, 58, 57, 56, 50, 49, 48, 47, 46, 10, 9, 8, 7, 6, 15, 14, 13, 12, 11, 5, 4, 3, 2, 1, 25, 24, 23, 22, 21, 30, 29, 28, 27, 26, 20, 19, 18, 17, 16], [22, 23, 24, 25, 21, 17, 18, 19, 20, 16, 27, 28, 29, 30, 26, 7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 12, 13, 14, 15, 11, 52, 53, 54, 55, 51, 47, 48, 49, 50, 46, 57, 58, 59, 60, 56, 37, 38, 39, 40, 36, 32, 33, 34, 35, 31, 42, 43, 44, 45, 41]];
cc:=[4,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 16, 17, 18, 19, 20, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 31, 32, 33, 34, 35, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 46, 47, 48, 49, 50];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[46, 50, 49, 48, 47, 56, 60, 59, 58, 57, 51, 55, 54, 53, 52, 31, 35, 34, 33, 32, 41, 45, 44, 43, 42, 36, 40, 39, 38, 37, 16, 20, 19, 18, 17, 26, 30, 29, 28, 27, 21, 25, 24, 23, 22, 1, 5, 4, 3, 2, 11, 15, 14, 13, 12, 6, 10, 9, 8, 7], [38, 37, 36, 40, 39, 43, 42, 41, 45, 44, 33, 32, 31, 35, 34, 53, 52, 51, 55, 54, 58, 57, 56, 60, 59, 48, 47, 46, 50, 49, 8, 7, 6, 10, 9, 13, 12, 11, 15, 14, 3, 2, 1, 5, 4, 23, 22, 21, 25, 24, 28, 27, 26, 30, 29, 18, 17, 16, 20, 19], [24, 25, 21, 22, 23, 19, 20, 16, 17, 18, 29, 30, 26, 27, 28, 9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 14, 15, 11, 12, 13, 54, 55, 51, 52, 53, 49, 50, 46, 47, 48, 59, 60, 56, 57, 58, 39, 40, 36, 37, 38, 34, 35, 31, 32, 33, 44, 45, 41, 42, 43]];
cc:=[4,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 16, 17, 18, 19, 20, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 31, 32, 33, 34, 35, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 46, 47, 48, 49, 50];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.64-53.0.2-4-32
// Create group as a permutation group and initialize signature information.
gp_id:=[64,53];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,32];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 23, 24, 21, 22, 29, 30, 32, 31, 25, 26, 28, 27, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11, 49, 50, 52, 51, 55, 56, 53, 54, 61, 62, 64, 63, 57, 58, 60, 59, 33, 34, 36, 35, 39, 40, 37, 38, 45, 46, 48, 47, 41, 42, 44, 43], [34, 33, 35, 36, 40, 39, 38, 37, 46, 45, 47, 48, 42, 41, 43, 44, 58, 57, 59, 60, 64, 63, 62, 61, 50, 49, 51, 52, 56, 55, 54, 53, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11, 25, 26, 28, 27, 31, 32, 29, 30, 17, 18, 20, 19, 23, 24, 21, 22], [49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 45, 46, 47, 48, 44, 43, 41, 42, 33, 34, 35, 36, 37, 38, 39, 40, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 14, 13, 16, 15, 11, 12, 10, 9, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[3,5,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 23, 24, 21, 22, 29, 30, 32, 31, 25, 26, 28, 27, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11, 49, 50, 52, 51, 55, 56, 53, 54, 61, 62, 64, 63, 57, 58, 60, 59, 33, 34, 36, 35, 39, 40, 37, 38, 45, 46, 48, 47, 41, 42, 44, 43], [37, 38, 40, 39, 33, 34, 36, 35, 44, 43, 42, 41, 45, 46, 48, 47, 61, 62, 64, 63, 57, 58, 60, 59, 53, 54, 56, 55, 49, 50, 52, 51, 6, 5, 7, 8, 2, 1, 3, 4, 11, 12, 9, 10, 14, 13, 15, 16, 30, 29, 31, 32, 26, 25, 27, 28, 22, 21, 23, 24, 18, 17, 19, 20], [56, 55, 53, 54, 50, 49, 52, 51, 64, 63, 61, 62, 58, 57, 60, 59, 42, 41, 44, 43, 46, 45, 48, 47, 40, 39, 37, 38, 34, 33, 36, 35, 23, 24, 22, 21, 17, 18, 19, 20, 31, 32, 30, 29, 25, 26, 27, 28, 9, 10, 11, 12, 13, 14, 15, 16, 7, 8, 6, 5, 1, 2, 3, 4]];
cc:=[3,5,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 23, 24, 21, 22, 29, 30, 32, 31, 25, 26, 28, 27, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11, 49, 50, 52, 51, 55, 56, 53, 54, 61, 62, 64, 63, 57, 58, 60, 59, 33, 34, 36, 35, 39, 40, 37, 38, 45, 46, 48, 47, 41, 42, 44, 43], [40, 39, 38, 37, 36, 35, 34, 33, 42, 41, 43, 44, 48, 47, 46, 45, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 7, 8, 5, 6, 3, 4, 1, 2, 9, 10, 12, 11, 15, 16, 13, 14, 31, 32, 29, 30, 27, 28, 25, 26, 23, 24, 21, 22, 19, 20, 17, 18], [53, 54, 55, 56, 52, 51, 49, 50, 61, 62, 63, 64, 60, 59, 57, 58, 44, 43, 41, 42, 48, 47, 45, 46, 37, 38, 39, 40, 36, 35, 33, 34, 22, 21, 24, 23, 19, 20, 18, 17, 30, 29, 32, 31, 27, 28, 26, 25, 11, 12, 10, 9, 15, 16, 14, 13, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[3,5,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 23, 24, 21, 22, 29, 30, 32, 31, 25, 26, 28, 27, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11, 49, 50, 52, 51, 55, 56, 53, 54, 61, 62, 64, 63, 57, 58, 60, 59, 33, 34, 36, 35, 39, 40, 37, 38, 45, 46, 48, 47, 41, 42, 44, 43], [36, 35, 34, 33, 37, 38, 40, 39, 48, 47, 46, 45, 44, 43, 42, 41, 60, 59, 58, 57, 61, 62, 64, 63, 52, 51, 50, 49, 53, 54, 56, 55, 3, 4, 1, 2, 6, 5, 7, 8, 15, 16, 13, 14, 11, 12, 9, 10, 27, 28, 25, 26, 30, 29, 31, 32, 19, 20, 17, 18, 22, 21, 23, 24], [52, 51, 49, 50, 56, 55, 53, 54, 60, 59, 57, 58, 64, 63, 61, 62, 48, 47, 45, 46, 42, 41, 44, 43, 36, 35, 33, 34, 40, 39, 37, 38, 19, 20, 18, 17, 23, 24, 22, 21, 27, 28, 26, 25, 31, 32, 30, 29, 15, 16, 14, 13, 9, 10, 11, 12, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[3,5,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 23, 24, 21, 22, 29, 30, 32, 31, 25, 26, 28, 27, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11, 49, 50, 52, 51, 55, 56, 53, 54, 61, 62, 64, 63, 57, 58, 60, 59, 33, 34, 36, 35, 39, 40, 37, 38, 45, 46, 48, 47, 41, 42, 44, 43], [33, 34, 36, 35, 39, 40, 37, 38, 45, 46, 48, 47, 41, 42, 44, 43, 57, 58, 60, 59, 63, 64, 61, 62, 49, 50, 52, 51, 55, 56, 53, 54, 2, 1, 3, 4, 8, 7, 6, 5, 14, 13, 15, 16, 10, 9, 11, 12, 26, 25, 27, 28, 32, 31, 30, 29, 18, 17, 19, 20, 24, 23, 22, 21], [50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63, 46, 45, 48, 47, 43, 44, 42, 41, 34, 33, 36, 35, 38, 37, 40, 39, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 13, 14, 15, 16, 12, 11, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[3,5,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 23, 24, 21, 22, 29, 30, 32, 31, 25, 26, 28, 27, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11, 49, 50, 52, 51, 55, 56, 53, 54, 61, 62, 64, 63, 57, 58, 60, 59, 33, 34, 36, 35, 39, 40, 37, 38, 45, 46, 48, 47, 41, 42, 44, 43], [38, 37, 39, 40, 34, 33, 35, 36, 43, 44, 41, 42, 46, 45, 47, 48, 62, 61, 63, 64, 58, 57, 59, 60, 54, 53, 55, 56, 50, 49, 51, 52, 5, 6, 8, 7, 1, 2, 4, 3, 12, 11, 10, 9, 13, 14, 16, 15, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [55, 56, 54, 53, 49, 50, 51, 52, 63, 64, 62, 61, 57, 58, 59, 60, 41, 42, 43, 44, 45, 46, 47, 48, 39, 40, 38, 37, 33, 34, 35, 36, 24, 23, 21, 22, 18, 17, 20, 19, 32, 31, 29, 30, 26, 25, 28, 27, 10, 9, 12, 11, 14, 13, 16, 15, 8, 7, 5, 6, 2, 1, 4, 3]];
cc:=[3,5,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 23, 24, 21, 22, 29, 30, 32, 31, 25, 26, 28, 27, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11, 49, 50, 52, 51, 55, 56, 53, 54, 61, 62, 64, 63, 57, 58, 60, 59, 33, 34, 36, 35, 39, 40, 37, 38, 45, 46, 48, 47, 41, 42, 44, 43], [39, 40, 37, 38, 35, 36, 33, 34, 41, 42, 44, 43, 47, 48, 45, 46, 63, 64, 61, 62, 59, 60, 57, 58, 55, 56, 53, 54, 51, 52, 49, 50, 8, 7, 6, 5, 4, 3, 2, 1, 10, 9, 11, 12, 16, 15, 14, 13, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17], [54, 53, 56, 55, 51, 52, 50, 49, 62, 61, 64, 63, 59, 60, 58, 57, 43, 44, 42, 41, 47, 48, 46, 45, 38, 37, 40, 39, 35, 36, 34, 33, 21, 22, 23, 24, 20, 19, 17, 18, 29, 30, 31, 32, 28, 27, 25, 26, 12, 11, 9, 10, 16, 15, 13, 14, 5, 6, 7, 8, 4, 3, 1, 2]];
cc:=[3,5,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 23, 24, 21, 22, 29, 30, 32, 31, 25, 26, 28, 27, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11, 49, 50, 52, 51, 55, 56, 53, 54, 61, 62, 64, 63, 57, 58, 60, 59, 33, 34, 36, 35, 39, 40, 37, 38, 45, 46, 48, 47, 41, 42, 44, 43], [35, 36, 33, 34, 38, 37, 39, 40, 47, 48, 45, 46, 43, 44, 41, 42, 59, 60, 57, 58, 62, 61, 63, 64, 51, 52, 49, 50, 54, 53, 55, 56, 4, 3, 2, 1, 5, 6, 8, 7, 16, 15, 14, 13, 12, 11, 10, 9, 28, 27, 26, 25, 29, 30, 32, 31, 20, 19, 18, 17, 21, 22, 24, 23], [51, 52, 50, 49, 55, 56, 54, 53, 59, 60, 58, 57, 63, 64, 62, 61, 47, 48, 46, 45, 41, 42, 43, 44, 35, 36, 34, 33, 39, 40, 38, 37, 20, 19, 17, 18, 24, 23, 21, 22, 28, 27, 25, 26, 32, 31, 29, 30, 16, 15, 13, 14, 10, 9, 12, 11, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[3,5,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.72-8.0.2-4-18
// Create group as a permutation group and initialize signature information.
gp_id:=[72,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,18];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 64, 66, 65, 71, 70, 72, 68, 67, 69, 55, 57, 56, 62, 61, 63, 59, 58, 60, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 28, 30, 29, 35, 34, 36, 32, 31, 33, 19, 21, 20, 26, 25, 27, 23, 22, 24], [62, 61, 63, 59, 58, 60, 56, 55, 57, 71, 70, 72, 68, 67, 69, 65, 64, 66, 53, 52, 54, 50, 49, 51, 47, 46, 48, 44, 43, 45, 41, 40, 42, 38, 37, 39, 26, 25, 27, 23, 22, 24, 20, 19, 21, 35, 34, 36, 32, 31, 33, 29, 28, 30, 17, 16, 18, 14, 13, 15, 11, 10, 12, 8, 7, 9, 5, 4, 6, 2, 1, 3], [22, 23, 24, 25, 26, 27, 21, 19, 20, 31, 32, 33, 34, 35, 36, 30, 28, 29, 4, 5, 6, 7, 8, 9, 3, 1, 2, 13, 14, 15, 16, 17, 18, 12, 10, 11, 58, 59, 60, 61, 62, 63, 57, 55, 56, 67, 68, 69, 70, 71, 72, 66, 64, 65, 40, 41, 42, 43, 44, 45, 39, 37, 38, 49, 50, 51, 52, 53, 54, 48, 46, 47]];
cc:=[4,6,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 46, 47, 48, 49, 50, 51, 52, 53, 54, 37, 38, 39, 40, 41, 42, 43, 44, 45, 64, 65, 66, 67, 68, 69, 70, 71, 72, 55, 56, 57, 58, 59, 60, 61, 62, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 64, 66, 65, 71, 70, 72, 68, 67, 69, 55, 57, 56, 62, 61, 63, 59, 58, 60, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 28, 30, 29, 35, 34, 36, 32, 31, 33, 19, 21, 20, 26, 25, 27, 23, 22, 24], [60, 59, 58, 57, 56, 55, 61, 63, 62, 69, 68, 67, 66, 65, 64, 70, 72, 71, 51, 50, 49, 48, 47, 46, 52, 54, 53, 42, 41, 40, 39, 38, 37, 43, 45, 44, 24, 23, 22, 21, 20, 19, 25, 27, 26, 33, 32, 31, 30, 29, 28, 34, 36, 35, 15, 14, 13, 12, 11, 10, 16, 18, 17, 6, 5, 4, 3, 2, 1, 7, 9, 8], [27, 25, 26, 20, 21, 19, 23, 24, 22, 36, 34, 35, 29, 30, 28, 32, 33, 31, 9, 7, 8, 2, 3, 1, 5, 6, 4, 18, 16, 17, 11, 12, 10, 14, 15, 13, 63, 61, 62, 56, 57, 55, 59, 60, 58, 72, 70, 71, 65, 66, 64, 68, 69, 67, 45, 43, 44, 38, 39, 37, 41, 42, 40, 54, 52, 53, 47, 48, 46, 50, 51, 49]];
cc:=[4,6,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 46, 47, 48, 49, 50, 51, 52, 53, 54, 37, 38, 39, 40, 41, 42, 43, 44, 45, 64, 65, 66, 67, 68, 69, 70, 71, 72, 55, 56, 57, 58, 59, 60, 61, 62, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 64, 66, 65, 71, 70, 72, 68, 67, 69, 55, 57, 56, 62, 61, 63, 59, 58, 60, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 28, 30, 29, 35, 34, 36, 32, 31, 33, 19, 21, 20, 26, 25, 27, 23, 22, 24], [61, 63, 62, 58, 60, 59, 55, 57, 56, 70, 72, 71, 67, 69, 68, 64, 66, 65, 52, 54, 53, 49, 51, 50, 46, 48, 47, 43, 45, 44, 40, 42, 41, 37, 39, 38, 25, 27, 26, 22, 24, 23, 19, 21, 20, 34, 36, 35, 31, 33, 32, 28, 30, 29, 16, 18, 17, 13, 15, 14, 10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [23, 24, 22, 26, 27, 25, 19, 20, 21, 32, 33, 31, 35, 36, 34, 28, 29, 30, 5, 6, 4, 8, 9, 7, 1, 2, 3, 14, 15, 13, 17, 18, 16, 10, 11, 12, 59, 60, 58, 62, 63, 61, 55, 56, 57, 68, 69, 67, 71, 72, 70, 64, 65, 66, 41, 42, 40, 44, 45, 43, 37, 38, 39, 50, 51, 49, 53, 54, 52, 46, 47, 48]];
cc:=[4,6,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 46, 47, 48, 49, 50, 51, 52, 53, 54, 37, 38, 39, 40, 41, 42, 43, 44, 45, 64, 65, 66, 67, 68, 69, 70, 71, 72, 55, 56, 57, 58, 59, 60, 61, 62, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 64, 66, 65, 71, 70, 72, 68, 67, 69, 55, 57, 56, 62, 61, 63, 59, 58, 60, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 28, 30, 29, 35, 34, 36, 32, 31, 33, 19, 21, 20, 26, 25, 27, 23, 22, 24], [59, 58, 60, 56, 55, 57, 63, 62, 61, 68, 67, 69, 65, 64, 66, 72, 71, 70, 50, 49, 51, 47, 46, 48, 54, 53, 52, 41, 40, 42, 38, 37, 39, 45, 44, 43, 23, 22, 24, 20, 19, 21, 27, 26, 25, 32, 31, 33, 29, 28, 30, 36, 35, 34, 14, 13, 15, 11, 10, 12, 18, 17, 16, 5, 4, 6, 2, 1, 3, 9, 8, 7], [25, 26, 27, 21, 19, 20, 24, 22, 23, 34, 35, 36, 30, 28, 29, 33, 31, 32, 7, 8, 9, 3, 1, 2, 6, 4, 5, 16, 17, 18, 12, 10, 11, 15, 13, 14, 61, 62, 63, 57, 55, 56, 60, 58, 59, 70, 71, 72, 66, 64, 65, 69, 67, 68, 43, 44, 45, 39, 37, 38, 42, 40, 41, 52, 53, 54, 48, 46, 47, 51, 49, 50]];
cc:=[4,6,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 46, 47, 48, 49, 50, 51, 52, 53, 54, 37, 38, 39, 40, 41, 42, 43, 44, 45, 64, 65, 66, 67, 68, 69, 70, 71, 72, 55, 56, 57, 58, 59, 60, 61, 62, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 64, 66, 65, 71, 70, 72, 68, 67, 69, 55, 57, 56, 62, 61, 63, 59, 58, 60, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 28, 30, 29, 35, 34, 36, 32, 31, 33, 19, 21, 20, 26, 25, 27, 23, 22, 24], [63, 62, 61, 60, 59, 58, 57, 56, 55, 72, 71, 70, 69, 68, 67, 66, 65, 64, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 27, 26, 25, 24, 23, 22, 21, 20, 19, 36, 35, 34, 33, 32, 31, 30, 29, 28, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [24, 22, 23, 27, 25, 26, 20, 21, 19, 33, 31, 32, 36, 34, 35, 29, 30, 28, 6, 4, 5, 9, 7, 8, 2, 3, 1, 15, 13, 14, 18, 16, 17, 11, 12, 10, 60, 58, 59, 63, 61, 62, 56, 57, 55, 69, 67, 68, 72, 70, 71, 65, 66, 64, 42, 40, 41, 45, 43, 44, 38, 39, 37, 51, 49, 50, 54, 52, 53, 47, 48, 46]];
cc:=[4,6,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 46, 47, 48, 49, 50, 51, 52, 53, 54, 37, 38, 39, 40, 41, 42, 43, 44, 45, 64, 65, 66, 67, 68, 69, 70, 71, 72, 55, 56, 57, 58, 59, 60, 61, 62, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 64, 66, 65, 71, 70, 72, 68, 67, 69, 55, 57, 56, 62, 61, 63, 59, 58, 60, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 28, 30, 29, 35, 34, 36, 32, 31, 33, 19, 21, 20, 26, 25, 27, 23, 22, 24], [58, 60, 59, 55, 57, 56, 62, 61, 63, 67, 69, 68, 64, 66, 65, 71, 70, 72, 49, 51, 50, 46, 48, 47, 53, 52, 54, 40, 42, 41, 37, 39, 38, 44, 43, 45, 22, 24, 23, 19, 21, 20, 26, 25, 27, 31, 33, 32, 28, 30, 29, 35, 34, 36, 13, 15, 14, 10, 12, 11, 17, 16, 18, 4, 6, 5, 1, 3, 2, 8, 7, 9], [26, 27, 25, 19, 20, 21, 22, 23, 24, 35, 36, 34, 28, 29, 30, 31, 32, 33, 8, 9, 7, 1, 2, 3, 4, 5, 6, 17, 18, 16, 10, 11, 12, 13, 14, 15, 62, 63, 61, 55, 56, 57, 58, 59, 60, 71, 72, 70, 64, 65, 66, 67, 68, 69, 44, 45, 43, 37, 38, 39, 40, 41, 42, 53, 54, 52, 46, 47, 48, 49, 50, 51]];
cc:=[4,6,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 46, 47, 48, 49, 50, 51, 52, 53, 54, 37, 38, 39, 40, 41, 42, 43, 44, 45, 64, 65, 66, 67, 68, 69, 70, 71, 72, 55, 56, 57, 58, 59, 60, 61, 62, 63];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.84-7.0.2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[84,7];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[43, 49, 48, 47, 46, 45, 44, 50, 56, 55, 54, 53, 52, 51, 57, 63, 62, 61, 60, 59, 58, 64, 70, 69, 68, 67, 66, 65, 71, 77, 76, 75, 74, 73, 72, 78, 84, 83, 82, 81, 80, 79, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37], [33, 30, 34, 31, 35, 32, 29, 40, 37, 41, 38, 42, 39, 36, 26, 23, 27, 24, 28, 25, 22, 12, 9, 13, 10, 14, 11, 8, 19, 16, 20, 17, 21, 18, 15, 5, 2, 6, 3, 7, 4, 1, 75, 72, 76, 73, 77, 74, 71, 82, 79, 83, 80, 84, 81, 78, 68, 65, 69, 66, 70, 67, 64, 54, 51, 55, 52, 56, 53, 50, 61, 58, 62, 59, 63, 60, 57, 47, 44, 48, 45, 49, 46, 43], [79, 84, 82, 80, 78, 83, 81, 65, 70, 68, 66, 64, 69, 67, 72, 77, 75, 73, 71, 76, 74, 58, 63, 61, 59, 57, 62, 60, 44, 49, 47, 45, 43, 48, 46, 51, 56, 54, 52, 50, 55, 53, 37, 42, 40, 38, 36, 41, 39, 23, 28, 26, 24, 22, 27, 25, 30, 35, 33, 31, 29, 34, 32, 16, 21, 19, 17, 15, 20, 18, 2, 7, 5, 3, 1, 6, 4, 9, 14, 12, 10, 8, 13, 11]];
cc:=[3,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[43, 49, 48, 47, 46, 45, 44, 50, 56, 55, 54, 53, 52, 51, 57, 63, 62, 61, 60, 59, 58, 64, 70, 69, 68, 67, 66, 65, 71, 77, 76, 75, 74, 73, 72, 78, 84, 83, 82, 81, 80, 79, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37], [42, 37, 39, 41, 36, 38, 40, 28, 23, 25, 27, 22, 24, 26, 35, 30, 32, 34, 29, 31, 33, 21, 16, 18, 20, 15, 17, 19, 7, 2, 4, 6, 1, 3, 5, 14, 9, 11, 13, 8, 10, 12, 84, 79, 81, 83, 78, 80, 82, 70, 65, 67, 69, 64, 66, 68, 77, 72, 74, 76, 71, 73, 75, 63, 58, 60, 62, 57, 59, 61, 49, 44, 46, 48, 43, 45, 47, 56, 51, 53, 55, 50, 52, 54], [74, 77, 73, 76, 72, 75, 71, 81, 84, 80, 83, 79, 82, 78, 67, 70, 66, 69, 65, 68, 64, 53, 56, 52, 55, 51, 54, 50, 60, 63, 59, 62, 58, 61, 57, 46, 49, 45, 48, 44, 47, 43, 32, 35, 31, 34, 30, 33, 29, 39, 42, 38, 41, 37, 40, 36, 25, 28, 24, 27, 23, 26, 22, 11, 14, 10, 13, 9, 12, 8, 18, 21, 17, 20, 16, 19, 15, 4, 7, 3, 6, 2, 5, 1]];
cc:=[3,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[64, 70, 69, 68, 67, 66, 65, 71, 77, 76, 75, 74, 73, 72, 78, 84, 83, 82, 81, 80, 79, 43, 49, 48, 47, 46, 45, 44, 50, 56, 55, 54, 53, 52, 51, 57, 63, 62, 61, 60, 59, 58, 22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16], [33, 30, 34, 31, 35, 32, 29, 40, 37, 41, 38, 42, 39, 36, 26, 23, 27, 24, 28, 25, 22, 12, 9, 13, 10, 14, 11, 8, 19, 16, 20, 17, 21, 18, 15, 5, 2, 6, 3, 7, 4, 1, 75, 72, 76, 73, 77, 74, 71, 82, 79, 83, 80, 84, 81, 78, 68, 65, 69, 66, 70, 67, 64, 54, 51, 55, 52, 56, 53, 50, 61, 58, 62, 59, 63, 60, 57, 47, 44, 48, 45, 49, 46, 43], [58, 63, 61, 59, 57, 62, 60, 44, 49, 47, 45, 43, 48, 46, 51, 56, 54, 52, 50, 55, 53, 79, 84, 82, 80, 78, 83, 81, 65, 70, 68, 66, 64, 69, 67, 72, 77, 75, 73, 71, 76, 74, 16, 21, 19, 17, 15, 20, 18, 2, 7, 5, 3, 1, 6, 4, 9, 14, 12, 10, 8, 13, 11, 37, 42, 40, 38, 36, 41, 39, 23, 28, 26, 24, 22, 27, 25, 30, 35, 33, 31, 29, 34, 32]];
cc:=[4,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[64, 70, 69, 68, 67, 66, 65, 71, 77, 76, 75, 74, 73, 72, 78, 84, 83, 82, 81, 80, 79, 43, 49, 48, 47, 46, 45, 44, 50, 56, 55, 54, 53, 52, 51, 57, 63, 62, 61, 60, 59, 58, 22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16], [42, 37, 39, 41, 36, 38, 40, 28, 23, 25, 27, 22, 24, 26, 35, 30, 32, 34, 29, 31, 33, 21, 16, 18, 20, 15, 17, 19, 7, 2, 4, 6, 1, 3, 5, 14, 9, 11, 13, 8, 10, 12, 84, 79, 81, 83, 78, 80, 82, 70, 65, 67, 69, 64, 66, 68, 77, 72, 74, 76, 71, 73, 75, 63, 58, 60, 62, 57, 59, 61, 49, 44, 46, 48, 43, 45, 47, 56, 51, 53, 55, 50, 52, 54], [53, 56, 52, 55, 51, 54, 50, 60, 63, 59, 62, 58, 61, 57, 46, 49, 45, 48, 44, 47, 43, 74, 77, 73, 76, 72, 75, 71, 81, 84, 80, 83, 79, 82, 78, 67, 70, 66, 69, 65, 68, 64, 11, 14, 10, 13, 9, 12, 8, 18, 21, 17, 20, 16, 19, 15, 4, 7, 3, 6, 2, 5, 1, 32, 35, 31, 34, 30, 33, 29, 39, 42, 38, 41, 37, 40, 36, 25, 28, 24, 27, 23, 26, 22]];
cc:=[4,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.336-208.0.2-3-8
// Create group as a permutation group and initialize signature information.
gp_id:=[336,208];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,8];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[199, 259, 186, 284, 174, 229, 273, 296, 207, 267, 194, 300, 214, 261, 249, 288, 191, 227, 210, 292, 222, 253, 241, 312, 183, 235, 202, 316, 190, 269, 225, 304, 215, 251, 170, 308, 182, 277, 233, 328, 223, 243, 178, 332, 198, 237, 257, 320, 175, 275, 218, 324, 206, 245, 265, 336, 255, 315, 242, 172, 230, 285, 329, 184, 263, 323, 250, 188, 270, 317, 305, 176, 247, 283, 266, 180, 278, 309, 297, 200, 239, 291, 258, 204, 246, 325, 281, 192, 271, 307, 226, 196, 238, 333, 289, 216, 279, 299, 234, 220, 254, 293, 313, 208, 231, 331, 274, 212, 262, 301, 321, 224, 311, 203, 298, 228, 286, 173, 217, 240, 319, 211, 306, 244, 326, 205, 193, 232, 303, 171, 322, 236, 334, 197, 185, 256, 295, 179, 314, 260, 302, 213, 169, 248, 327, 195, 282, 252, 294, 221, 177, 272, 335, 187, 290, 276, 310, 181, 201, 264, 287, 219, 330, 268, 318, 189, 209, 280, 143, 35, 130, 60, 118, 5, 49, 72, 151, 43, 138, 76, 158, 37, 25, 64, 135, 3, 154, 68, 166, 29, 17, 88, 127, 11, 146, 92, 134, 45, 1, 80, 159, 27, 114, 84, 126, 53, 9, 104, 167, 19, 122, 108, 142, 13, 33, 96, 119, 51, 162, 100, 150, 21, 41, 112, 31, 91, 18, 116, 6, 61, 105, 128, 39, 99, 26, 132, 46, 93, 81, 120, 23, 59, 42, 124, 54, 85, 73, 144, 15, 67, 34, 148, 22, 101, 57, 136, 47, 83, 2, 140, 14, 109, 65, 160, 55, 75, 10, 164, 30, 69, 89, 152, 7, 107, 50, 156, 38, 77, 97, 168, 87, 147, 74, 4, 62, 117, 161, 16, 95, 155, 82, 20, 102, 149, 137, 8, 79, 115, 98, 12, 110, 141, 129, 32, 71, 123, 90, 36, 78, 157, 113, 24, 103, 139, 58, 28, 70, 165, 121, 48, 111, 131, 66, 52, 86, 125, 145, 40, 63, 163, 106, 44, 94, 133, 153, 56], [261, 114, 209, 312, 11, 110, 164, 191, 269, 138, 185, 296, 27, 70, 132, 199, 229, 146, 169, 328, 3, 62, 140, 215, 237, 162, 193, 288, 43, 94, 124, 207, 253, 154, 217, 336, 19, 102, 116, 175, 245, 130, 201, 304, 51, 86, 156, 183, 277, 122, 177, 320, 35, 78, 148, 223, 317, 2, 265, 200, 67, 166, 52, 247, 325, 26, 241, 184, 83, 126, 20, 255, 285, 34, 225, 216, 59, 118, 28, 271, 293, 50, 249, 176, 99, 150, 12, 263, 309, 42, 273, 224, 75, 158, 4, 231, 301, 18, 257, 192, 107, 142, 44, 239, 333, 10, 233, 208, 91, 134, 36, 279, 205, 58, 321, 256, 123, 54, 108, 303, 213, 82, 297, 240, 139, 14, 76, 311, 173, 90, 281, 272, 115, 6, 84, 327, 181, 106, 305, 232, 155, 38, 68, 319, 197, 98, 329, 280, 131, 46, 60, 287, 189, 74, 313, 248, 163, 30, 100, 295, 221, 66, 289, 264, 147, 22, 92, 335, 37, 282, 153, 88, 179, 278, 332, 135, 45, 306, 129, 72, 195, 238, 300, 143, 5, 314, 113, 104, 171, 230, 308, 159, 13, 330, 137, 64, 211, 262, 292, 151, 29, 322, 161, 112, 187, 270, 284, 119, 21, 298, 145, 80, 219, 254, 324, 127, 53, 290, 121, 96, 203, 246, 316, 167, 93, 170, 41, 144, 235, 334, 220, 23, 101, 194, 17, 128, 251, 294, 188, 31, 61, 202, 1, 160, 227, 286, 196, 47, 69, 218, 25, 120, 267, 318, 180, 39, 85, 210, 49, 168, 243, 326, 172, 7, 77, 186, 33, 136, 275, 310, 212, 15, 109, 178, 9, 152, 259, 302, 204, 55, 149, 226, 97, 32, 291, 222, 276, 79, 157, 250, 73, 16, 307, 182, 244, 87, 117, 258, 57, 48, 283, 174, 252, 103, 125, 274, 81, 8, 323, 206, 236, 95, 141, 266, 105, 56, 299, 214, 228, 63, 133, 242, 89, 24, 331, 198, 268, 71, 165, 234, 65, 40, 315, 190, 260, 111], [42, 315, 222, 289, 135, 197, 160, 36, 50, 331, 174, 281, 127, 205, 152, 20, 26, 299, 182, 305, 167, 189, 128, 52, 34, 323, 214, 297, 159, 181, 120, 4, 10, 283, 206, 321, 143, 213, 136, 44, 18, 307, 190, 313, 151, 221, 144, 12, 2, 291, 198, 329, 119, 173, 168, 28, 98, 203, 278, 177, 23, 253, 48, 92, 106, 219, 230, 169, 15, 261, 40, 76, 82, 187, 238, 193, 55, 245, 16, 108, 90, 211, 270, 185, 47, 237, 8, 60, 66, 171, 262, 209, 31, 269, 24, 100, 74, 195, 246, 201, 39, 277, 32, 68, 58, 179, 254, 217, 7, 229, 56, 84, 154, 259, 334, 233, 79, 309, 104, 148, 162, 275, 286, 225, 71, 317, 96, 132, 138, 243, 294, 249, 111, 301, 72, 164, 146, 267, 326, 241, 103, 293, 64, 116, 122, 227, 318, 265, 87, 325, 80, 156, 130, 251, 302, 257, 95, 333, 88, 124, 114, 235, 310, 273, 63, 285, 112, 140, 210, 91, 166, 65, 303, 141, 328, 204, 218, 107, 118, 57, 295, 149, 320, 188, 194, 75, 126, 81, 335, 133, 296, 220, 202, 99, 158, 73, 327, 125, 288, 172, 178, 59, 150, 97, 311, 157, 304, 212, 186, 83, 134, 89, 319, 165, 312, 180, 170, 67, 142, 105, 287, 117, 336, 196, 266, 147, 54, 121, 191, 29, 216, 260, 274, 163, 6, 113, 183, 37, 208, 244, 250, 131, 14, 137, 223, 21, 184, 276, 258, 155, 46, 129, 215, 13, 176, 228, 234, 115, 38, 153, 199, 45, 192, 268, 242, 139, 22, 145, 207, 53, 200, 236, 226, 123, 30, 161, 175, 5, 224, 252, 322, 35, 110, 9, 247, 85, 272, 316, 330, 51, 62, 1, 239, 93, 264, 300, 306, 19, 70, 25, 279, 77, 240, 332, 314, 43, 102, 17, 271, 69, 232, 284, 290, 3, 94, 41, 255, 101, 248, 324, 298, 27, 78, 33, 263, 109, 256, 292, 282, 11, 86, 49, 231, 61, 280, 308]];
cc:=[3,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[199, 259, 186, 284, 174, 229, 273, 296, 207, 267, 194, 300, 214, 261, 249, 288, 191, 227, 210, 292, 222, 253, 241, 312, 183, 235, 202, 316, 190, 269, 225, 304, 215, 251, 170, 308, 182, 277, 233, 328, 223, 243, 178, 332, 198, 237, 257, 320, 175, 275, 218, 324, 206, 245, 265, 336, 255, 315, 242, 172, 230, 285, 329, 184, 263, 323, 250, 188, 270, 317, 305, 176, 247, 283, 266, 180, 278, 309, 297, 200, 239, 291, 258, 204, 246, 325, 281, 192, 271, 307, 226, 196, 238, 333, 289, 216, 279, 299, 234, 220, 254, 293, 313, 208, 231, 331, 274, 212, 262, 301, 321, 224, 311, 203, 298, 228, 286, 173, 217, 240, 319, 211, 306, 244, 326, 205, 193, 232, 303, 171, 322, 236, 334, 197, 185, 256, 295, 179, 314, 260, 302, 213, 169, 248, 327, 195, 282, 252, 294, 221, 177, 272, 335, 187, 290, 276, 310, 181, 201, 264, 287, 219, 330, 268, 318, 189, 209, 280, 143, 35, 130, 60, 118, 5, 49, 72, 151, 43, 138, 76, 158, 37, 25, 64, 135, 3, 154, 68, 166, 29, 17, 88, 127, 11, 146, 92, 134, 45, 1, 80, 159, 27, 114, 84, 126, 53, 9, 104, 167, 19, 122, 108, 142, 13, 33, 96, 119, 51, 162, 100, 150, 21, 41, 112, 31, 91, 18, 116, 6, 61, 105, 128, 39, 99, 26, 132, 46, 93, 81, 120, 23, 59, 42, 124, 54, 85, 73, 144, 15, 67, 34, 148, 22, 101, 57, 136, 47, 83, 2, 140, 14, 109, 65, 160, 55, 75, 10, 164, 30, 69, 89, 152, 7, 107, 50, 156, 38, 77, 97, 168, 87, 147, 74, 4, 62, 117, 161, 16, 95, 155, 82, 20, 102, 149, 137, 8, 79, 115, 98, 12, 110, 141, 129, 32, 71, 123, 90, 36, 78, 157, 113, 24, 103, 139, 58, 28, 70, 165, 121, 48, 111, 131, 66, 52, 86, 125, 145, 40, 63, 163, 106, 44, 94, 133, 153, 56], [113, 86, 204, 63, 85, 112, 211, 66, 137, 78, 180, 111, 77, 72, 187, 90, 145, 94, 196, 103, 93, 64, 171, 106, 161, 102, 220, 71, 101, 96, 195, 82, 153, 70, 188, 79, 69, 104, 219, 58, 129, 62, 172, 95, 61, 88, 203, 74, 121, 110, 212, 87, 109, 80, 179, 98, 1, 142, 260, 119, 141, 168, 267, 122, 25, 134, 236, 167, 133, 128, 243, 146, 33, 150, 252, 159, 149, 120, 227, 162, 49, 158, 276, 127, 157, 152, 251, 138, 41, 126, 244, 135, 125, 160, 275, 114, 17, 118, 228, 151, 117, 144, 259, 130, 9, 166, 268, 143, 165, 136, 235, 154, 57, 30, 316, 7, 29, 56, 323, 10, 81, 22, 292, 55, 21, 16, 299, 34, 89, 38, 308, 47, 37, 8, 283, 50, 105, 46, 332, 15, 45, 40, 307, 26, 97, 14, 300, 23, 13, 48, 331, 2, 73, 6, 284, 39, 5, 32, 315, 18, 65, 54, 324, 31, 53, 24, 291, 42, 281, 254, 148, 231, 253, 280, 155, 234, 305, 246, 124, 279, 245, 240, 131, 258, 313, 262, 140, 271, 261, 232, 115, 274, 329, 270, 164, 239, 269, 264, 139, 250, 321, 238, 132, 247, 237, 272, 163, 226, 297, 230, 116, 263, 229, 256, 147, 242, 289, 278, 156, 255, 277, 248, 123, 266, 169, 310, 36, 287, 309, 336, 43, 290, 193, 302, 12, 335, 301, 296, 19, 314, 201, 318, 28, 327, 317, 288, 3, 330, 217, 326, 52, 295, 325, 320, 27, 306, 209, 294, 20, 303, 293, 328, 51, 282, 185, 286, 4, 319, 285, 312, 35, 298, 177, 334, 44, 311, 333, 304, 11, 322, 225, 198, 92, 175, 197, 224, 99, 178, 249, 190, 68, 223, 189, 184, 75, 202, 257, 206, 84, 215, 205, 176, 59, 218, 273, 214, 108, 183, 213, 208, 83, 194, 265, 182, 76, 191, 181, 216, 107, 170, 241, 174, 60, 207, 173, 200, 91, 186, 233, 222, 100, 199, 221, 192, 67, 210], [255, 272, 73, 10, 310, 187, 228, 197, 231, 240, 97, 26, 294, 195, 260, 205, 279, 264, 81, 2, 326, 211, 252, 189, 263, 248, 57, 42, 286, 203, 268, 181, 247, 232, 89, 18, 334, 171, 276, 213, 271, 280, 105, 50, 302, 179, 236, 221, 239, 256, 65, 34, 318, 219, 244, 173, 311, 328, 129, 66, 198, 243, 284, 253, 287, 296, 153, 82, 182, 251, 316, 261, 335, 320, 137, 58, 214, 267, 308, 245, 319, 304, 113, 98, 174, 259, 324, 237, 303, 288, 145, 74, 222, 227, 332, 269, 327, 336, 161, 106, 190, 235, 292, 277, 295, 312, 121, 90, 206, 275, 300, 229, 199, 216, 17, 122, 254, 299, 172, 309, 175, 184, 41, 138, 238, 307, 204, 317, 223, 208, 25, 114, 270, 323, 196, 301, 207, 192, 1, 154, 230, 315, 212, 293, 191, 176, 33, 130, 278, 283, 220, 325, 215, 224, 49, 162, 246, 291, 180, 333, 183, 200, 9, 146, 262, 331, 188, 285, 31, 48, 241, 178, 86, 131, 4, 141, 7, 16, 265, 194, 70, 139, 36, 149, 55, 40, 249, 170, 102, 155, 28, 133, 39, 24, 225, 210, 62, 147, 44, 125, 23, 8, 257, 186, 110, 115, 52, 157, 47, 56, 273, 218, 78, 123, 12, 165, 15, 32, 233, 202, 94, 163, 20, 117, 87, 104, 297, 234, 142, 19, 60, 29, 63, 72, 321, 250, 126, 27, 92, 37, 111, 96, 305, 226, 158, 43, 84, 21, 95, 80, 281, 266, 118, 35, 100, 13, 79, 64, 313, 242, 166, 3, 108, 45, 103, 112, 329, 274, 134, 11, 68, 53, 71, 88, 289, 258, 150, 51, 76, 5, 143, 160, 185, 290, 30, 75, 116, 85, 119, 128, 209, 306, 14, 83, 148, 93, 167, 152, 193, 282, 46, 99, 140, 77, 151, 136, 169, 322, 6, 91, 156, 69, 135, 120, 201, 298, 54, 59, 164, 101, 159, 168, 217, 330, 22, 67, 124, 109, 127, 144, 177, 314, 38, 107, 132, 61]];
cc:=[3,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.17-1.0.17-17-17
// Create group as a permutation group and initialize signature information.
gp_id:=[17,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,17,17,17];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1], [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1], [16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]];
cc:=[2,2,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1], [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2], [15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]];
cc:=[2,3,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1], [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3], [14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]];
cc:=[2,4,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1], [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4], [13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[2,5,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5], [12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]];
cc:=[2,6,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1], [7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6], [11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[2,7,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1], [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7], [10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[2,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1], [9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8], [9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2], [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2], [14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]];
cc:=[3,3,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2], [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3], [13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[3,4,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2], [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4], [12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]];
cc:=[3,5,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5], [11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[3,6,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2], [7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6], [10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[3,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2], [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7], [9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[3,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2], [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]];
cc:=[3,17,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3], [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3], [12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]];
cc:=[4,4,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3], [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4], [11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[4,5,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5], [10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[4,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3], [7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6], [9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[4,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3], [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7]];
cc:=[4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3], [16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]];
cc:=[4,16,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4], [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4], [10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[5,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5], [9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[5,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4], [7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6], [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7]];
cc:=[5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4], [15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]];
cc:=[5,15,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4], [16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]];
cc:=[5,16,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5], [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7]];
cc:=[6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5], [7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6]];
cc:=[6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5], [14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]];
cc:=[6,14,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=29;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5], [15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]];
cc:=[6,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=30;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6], [13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]];
cc:=[7,13,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=31;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6], [14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]];
cc:=[7,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=32;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6], [15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]];
cc:=[7,15,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=33;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7], [12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]];
cc:=[8,12,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=34;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7], [13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]];
cc:=[8,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=35;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7], [14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]];
cc:=[8,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=36;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]];
cc:=[9,11,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=37;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8], [12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]];
cc:=[9,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=38;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]];
cc:=[9,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=39;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8], [14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]];
cc:=[9,14,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=40;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9], [10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9], [17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]];
cc:=[10,10,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=41;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9], [11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]];
cc:=[10,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=42;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9], [12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]];
cc:=[10,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=43;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9], [13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]];
cc:=[10,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=44;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]];
cc:=[11,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=45;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]];
cc:=[11,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=46;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[11,13,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=47;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [12, 13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [13, 14, 15, 16, 17, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[12,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=48;
gen_vect_label:=1;
full_auto:=[34,2];
full_sign:=[0,2,17,34];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.18-2.0.9-18-18
// Create group as a permutation group and initialize signature information.
gp_id:=[18,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,9,18,18];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 2, 3, 1, 13, 14, 15, 16, 17, 18, 11, 12, 10], [13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1], [15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[7,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 2, 3, 1, 13, 14, 15, 16, 17, 18, 11, 12, 10], [14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2], [14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[7,17,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 2, 3, 1, 5, 6, 4, 16, 17, 18, 11, 12, 10, 14, 15, 13], [17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5], [16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4]];
cc:=[8,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 2, 3, 1, 5, 6, 4, 16, 17, 18, 11, 12, 10, 14, 15, 13], [18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6], [18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[8,18,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 3, 1, 2, 14, 15, 13, 17, 18, 16, 12, 10, 11], [13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1], [14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[9,13,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 3, 1, 2, 14, 15, 13, 17, 18, 16, 12, 10, 11], [15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3], [15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[9,15,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 3, 1, 2, 6, 4, 5, 17, 18, 16, 12, 10, 11, 15, 13, 14], [17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5], [18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[10,14,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 3, 1, 2, 6, 4, 5, 17, 18, 16, 12, 10, 11, 15, 13, 14], [16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4], [16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4]];
cc:=[10,16,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 1, 2, 3, 15, 13, 14, 18, 16, 17, 10, 11, 12], [13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1], [13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1]];
cc:=[11,13,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 1, 2, 3, 15, 13, 14, 18, 16, 17, 10, 11, 12], [15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3], [14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[11,15,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 1, 2, 3, 4, 5, 6, 18, 16, 17, 10, 11, 12, 13, 14, 15], [17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5], [17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[12,14,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 1, 2, 3, 4, 5, 6, 18, 16, 17, 10, 11, 12, 13, 14, 15], [16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4], [18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[12,16,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.30-2.0.5-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[30,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,5,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 27, 28, 29, 30, 26], [21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 16, 20, 19, 18, 17, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 1, 5, 4, 3, 2], [30, 29, 28, 27, 26, 20, 19, 18, 17, 16, 25, 24, 23, 22, 21, 15, 14, 13, 12, 11, 5, 4, 3, 2, 1, 10, 9, 8, 7, 6]];
cc:=[5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[60,8];
full_sign:=[0,2,6,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 28, 29, 30, 26, 27], [21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 16, 20, 19, 18, 17, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 1, 5, 4, 3, 2], [29, 28, 27, 26, 30, 19, 18, 17, 16, 20, 24, 23, 22, 21, 25, 14, 13, 12, 11, 15, 4, 3, 2, 1, 5, 9, 8, 7, 6, 10]];
cc:=[6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[60,8];
full_sign:=[0,2,6,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.30-1.0.3-10-10
// Create group as a permutation group and initialize signature information.
gp_id:=[30,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,10,10];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 29, 30, 28], [19, 21, 20, 22, 24, 23, 25, 27, 26, 28, 30, 29, 16, 18, 17, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14, 1, 3, 2], [30, 29, 28, 18, 17, 16, 21, 20, 19, 24, 23, 22, 27, 26, 25, 15, 14, 13, 3, 2, 1, 6, 5, 4, 9, 8, 7, 12, 11, 10]];
cc:=[3,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[60,8];
full_sign:=[0,2,6,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 29, 30, 28], [25, 27, 26, 28, 30, 29, 16, 18, 17, 19, 21, 20, 22, 24, 23, 10, 12, 11, 13, 15, 14, 1, 3, 2, 4, 6, 5, 7, 9, 8], [24, 23, 22, 27, 26, 25, 30, 29, 28, 18, 17, 16, 21, 20, 19, 9, 8, 7, 12, 11, 10, 15, 14, 13, 3, 2, 1, 6, 5, 4]];
cc:=[3,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[60,8];
full_sign:=[0,2,6,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.32-20.0.4-4-16
// Create group as a permutation group and initialize signature information.
gp_id:=[32,20];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,16];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 15, 16, 13, 14, 2, 1, 3, 4, 8, 7, 6, 5, 25, 26, 28, 27, 31, 32, 29, 30, 18, 17, 19, 20, 24, 23, 22, 21], [17, 18, 20, 19, 23, 24, 21, 22, 29, 30, 32, 31, 25, 26, 28, 27, 2, 1, 3, 4, 8, 7, 6, 5, 14, 13, 15, 16, 10, 9, 11, 12], [25, 26, 27, 28, 29, 30, 31, 32, 24, 23, 21, 22, 18, 17, 20, 19, 10, 9, 12, 11, 14, 13, 16, 15, 7, 8, 6, 5, 1, 2, 3, 4]];
cc:=[4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 15, 16, 13, 14, 2, 1, 3, 4, 8, 7, 6, 5, 25, 26, 28, 27, 31, 32, 29, 30, 18, 17, 19, 20, 24, 23, 22, 21], [19, 20, 17, 18, 22, 21, 23, 24, 31, 32, 29, 30, 27, 28, 25, 26, 4, 3, 2, 1, 5, 6, 8, 7, 16, 15, 14, 13, 12, 11, 10, 9], [28, 27, 25, 26, 32, 31, 29, 30, 22, 21, 24, 23, 19, 20, 18, 17, 11, 12, 10, 9, 15, 16, 14, 13, 5, 6, 7, 8, 4, 3, 1, 2]];
cc:=[4,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 15, 16, 13, 14, 2, 1, 3, 4, 8, 7, 6, 5, 25, 26, 28, 27, 31, 32, 29, 30, 18, 17, 19, 20, 24, 23, 22, 21], [20, 19, 18, 17, 21, 22, 24, 23, 32, 31, 30, 29, 28, 27, 26, 25, 3, 4, 1, 2, 6, 5, 7, 8, 15, 16, 13, 14, 11, 12, 9, 10], [27, 28, 26, 25, 31, 32, 30, 29, 21, 22, 23, 24, 20, 19, 17, 18, 12, 11, 9, 10, 16, 15, 13, 14, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[4,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 15, 16, 13, 14, 2, 1, 3, 4, 8, 7, 6, 5, 25, 26, 28, 27, 31, 32, 29, 30, 18, 17, 19, 20, 24, 23, 22, 21], [18, 17, 19, 20, 24, 23, 22, 21, 30, 29, 31, 32, 26, 25, 27, 28, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11], [26, 25, 28, 27, 30, 29, 32, 31, 23, 24, 22, 21, 17, 18, 19, 20, 9, 10, 11, 12, 13, 14, 15, 16, 8, 7, 5, 6, 2, 1, 4, 3]];
cc:=[4,5,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.32-1.0.2-32-32
// Create group as a permutation group and initialize signature information.
gp_id:=[32,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,32,32];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 3, 4, 2, 1], [31, 32, 30, 29, 26, 25, 28, 27, 18, 17, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15]];
cc:=[2,17,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [25, 26, 27, 28, 29, 30, 31, 32, 21, 22, 23, 24, 19, 20, 18, 17, 5, 6, 7, 8, 3, 4, 2, 1, 13, 14, 15, 16, 11, 12, 10, 9], [23, 24, 22, 21, 18, 17, 20, 19, 31, 32, 30, 29, 26, 25, 28, 27, 15, 16, 14, 13, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[2,18,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [21, 22, 23, 24, 19, 20, 18, 17, 29, 30, 31, 32, 27, 28, 26, 25, 13, 14, 15, 16, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5], [27, 28, 26, 25, 31, 32, 30, 29, 23, 24, 22, 21, 18, 17, 20, 19, 7, 8, 6, 5, 2, 1, 4, 3, 15, 16, 14, 13, 10, 9, 12, 11]];
cc:=[2,19,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [29, 30, 31, 32, 27, 28, 26, 25, 19, 20, 18, 17, 23, 24, 22, 21, 3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [19, 20, 18, 17, 23, 24, 22, 21, 27, 28, 26, 25, 31, 32, 30, 29, 11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[2,20,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 4, 3, 1, 2], [32, 31, 29, 30, 25, 26, 27, 28, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]];
cc:=[2,25,32];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [26, 25, 28, 27, 30, 29, 32, 31, 22, 21, 24, 23, 20, 19, 17, 18, 6, 5, 8, 7, 4, 3, 1, 2, 14, 13, 16, 15, 12, 11, 9, 10], [24, 23, 21, 22, 17, 18, 19, 20, 32, 31, 29, 30, 25, 26, 27, 28, 16, 15, 13, 14, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,26,31];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [22, 21, 24, 23, 20, 19, 17, 18, 30, 29, 32, 31, 28, 27, 25, 26, 14, 13, 16, 15, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6], [28, 27, 25, 26, 32, 31, 29, 30, 24, 23, 21, 22, 17, 18, 19, 20, 8, 7, 5, 6, 1, 2, 3, 4, 16, 15, 13, 14, 9, 10, 11, 12]];
cc:=[2,27,30];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [30, 29, 32, 31, 28, 27, 25, 26, 20, 19, 17, 18, 24, 23, 21, 22, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14], [20, 19, 17, 18, 24, 23, 21, 22, 28, 27, 25, 26, 32, 31, 29, 30, 12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,28,29];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[64,53];
full_sign:=[0,2,4,32];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.36-1.0.4-4-9
// Create group as a permutation group and initialize signature information.
gp_id:=[36,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,9];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[19, 21, 20, 26, 25, 27, 23, 22, 24, 28, 30, 29, 35, 34, 36, 32, 31, 33, 10, 12, 11, 17, 16, 18, 14, 13, 15, 1, 3, 2, 8, 7, 9, 5, 4, 6], [35, 34, 36, 32, 31, 33, 29, 28, 30, 26, 25, 27, 23, 22, 24, 20, 19, 21, 8, 7, 9, 5, 4, 6, 2, 1, 3, 17, 16, 18, 14, 13, 15, 11, 10, 12], [4, 5, 6, 7, 8, 9, 3, 1, 2, 13, 14, 15, 16, 17, 18, 12, 10, 11, 22, 23, 24, 25, 26, 27, 21, 19, 20, 31, 32, 33, 34, 35, 36, 30, 28, 29]];
cc:=[4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 21, 20, 26, 25, 27, 23, 22, 24, 28, 30, 29, 35, 34, 36, 32, 31, 33, 10, 12, 11, 17, 16, 18, 14, 13, 15, 1, 3, 2, 8, 7, 9, 5, 4, 6], [34, 36, 35, 31, 33, 32, 28, 30, 29, 25, 27, 26, 22, 24, 23, 19, 21, 20, 7, 9, 8, 4, 6, 5, 1, 3, 2, 16, 18, 17, 13, 15, 14, 10, 12, 11], [5, 6, 4, 8, 9, 7, 1, 2, 3, 14, 15, 13, 17, 18, 16, 10, 11, 12, 23, 24, 22, 26, 27, 25, 19, 20, 21, 32, 33, 31, 35, 36, 34, 28, 29, 30]];
cc:=[4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 21, 20, 26, 25, 27, 23, 22, 24, 28, 30, 29, 35, 34, 36, 32, 31, 33, 10, 12, 11, 17, 16, 18, 14, 13, 15, 1, 3, 2, 8, 7, 9, 5, 4, 6], [36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 9, 8, 7, 6, 5, 4, 3, 2, 1, 18, 17, 16, 15, 14, 13, 12, 11, 10], [6, 4, 5, 9, 7, 8, 2, 3, 1, 15, 13, 14, 18, 16, 17, 11, 12, 10, 24, 22, 23, 27, 25, 26, 20, 21, 19, 33, 31, 32, 36, 34, 35, 29, 30, 28]];
cc:=[4,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.36-5.0.2-18-18
// Create group as a permutation group and initialize signature information.
gp_id:=[36,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,18,18];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27], [22, 23, 24, 25, 26, 27, 20, 21, 19, 31, 32, 33, 34, 35, 36, 29, 30, 28, 4, 5, 6, 7, 8, 9, 2, 3, 1, 13, 14, 15, 16, 17, 18, 11, 12, 10], [36, 34, 35, 28, 29, 30, 31, 32, 33, 27, 25, 26, 19, 20, 21, 22, 23, 24, 18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[2,25,36];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27], [26, 27, 25, 21, 19, 20, 24, 22, 23, 35, 36, 34, 30, 28, 29, 33, 31, 32, 8, 9, 7, 3, 1, 2, 6, 4, 5, 17, 18, 16, 12, 10, 11, 15, 13, 14], [32, 33, 31, 35, 36, 34, 30, 28, 29, 23, 24, 22, 26, 27, 25, 21, 19, 20, 14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[2,26,35];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27], [24, 22, 23, 27, 25, 26, 19, 20, 21, 33, 31, 32, 36, 34, 35, 28, 29, 30, 6, 4, 5, 9, 7, 8, 1, 2, 3, 15, 13, 14, 18, 16, 17, 10, 11, 12], [34, 35, 36, 29, 30, 28, 32, 33, 31, 25, 26, 27, 20, 21, 19, 23, 24, 22, 16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4]];
cc:=[2,27,34];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27], [25, 26, 27, 20, 21, 19, 23, 24, 22, 34, 35, 36, 29, 30, 28, 32, 33, 31, 7, 8, 9, 2, 3, 1, 5, 6, 4, 16, 17, 18, 11, 12, 10, 14, 15, 13], [33, 31, 32, 36, 34, 35, 28, 29, 30, 24, 22, 23, 27, 25, 26, 19, 20, 21, 15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[2,28,33];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27], [23, 24, 22, 26, 27, 25, 21, 19, 20, 32, 33, 31, 35, 36, 34, 30, 28, 29, 5, 6, 4, 8, 9, 7, 3, 1, 2, 14, 15, 13, 17, 18, 16, 12, 10, 11], [35, 36, 34, 30, 28, 29, 33, 31, 32, 26, 27, 25, 21, 19, 20, 24, 22, 23, 17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[2,29,32];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27], [27, 25, 26, 19, 20, 21, 22, 23, 24, 36, 34, 35, 28, 29, 30, 31, 32, 33, 9, 7, 8, 1, 2, 3, 4, 5, 6, 18, 16, 17, 10, 11, 12, 13, 14, 15], [31, 32, 33, 34, 35, 36, 29, 30, 28, 22, 23, 24, 25, 26, 27, 20, 21, 19, 13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1]];
cc:=[2,30,31];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1, 31, 32, 33, 34, 35, 36, 29, 30, 28, 22, 23, 24, 25, 26, 27, 20, 21, 19], [36, 34, 35, 28, 29, 30, 31, 32, 33, 27, 25, 26, 19, 20, 21, 22, 23, 24, 18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[3,19,36];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5, 35, 36, 34, 30, 28, 29, 33, 31, 32, 26, 27, 25, 21, 19, 20, 24, 22, 23], [32, 33, 31, 35, 36, 34, 30, 28, 29, 23, 24, 22, 26, 27, 25, 21, 19, 20, 14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[3,20,35];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3, 33, 31, 32, 36, 34, 35, 28, 29, 30, 24, 22, 23, 27, 25, 26, 19, 20, 21], [34, 35, 36, 29, 30, 28, 32, 33, 31, 25, 26, 27, 20, 21, 19, 23, 24, 22, 16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4]];
cc:=[3,21,34];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4, 34, 35, 36, 29, 30, 28, 32, 33, 31, 25, 26, 27, 20, 21, 19, 23, 24, 22], [33, 31, 32, 36, 34, 35, 28, 29, 30, 24, 22, 23, 27, 25, 26, 19, 20, 21, 15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[3,22,33];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2, 32, 33, 31, 35, 36, 34, 30, 28, 29, 23, 24, 22, 26, 27, 25, 21, 19, 20], [35, 36, 34, 30, 28, 29, 33, 31, 32, 26, 27, 25, 21, 19, 20, 24, 22, 23, 17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[3,23,32];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6, 36, 34, 35, 28, 29, 30, 31, 32, 33, 27, 25, 26, 19, 20, 21, 22, 23, 24], [31, 32, 33, 34, 35, 36, 29, 30, 28, 22, 23, 24, 25, 26, 27, 20, 21, 19, 13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1]];
cc:=[3,24,31];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1, 31, 32, 33, 34, 35, 36, 29, 30, 28, 22, 23, 24, 25, 26, 27, 20, 21, 19], [27, 25, 26, 19, 20, 21, 22, 23, 24, 36, 34, 35, 28, 29, 30, 31, 32, 33, 9, 7, 8, 1, 2, 3, 4, 5, 6, 18, 16, 17, 10, 11, 12, 13, 14, 15]];
cc:=[4,19,30];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5, 35, 36, 34, 30, 28, 29, 33, 31, 32, 26, 27, 25, 21, 19, 20, 24, 22, 23], [23, 24, 22, 26, 27, 25, 21, 19, 20, 32, 33, 31, 35, 36, 34, 30, 28, 29, 5, 6, 4, 8, 9, 7, 3, 1, 2, 14, 15, 13, 17, 18, 16, 12, 10, 11]];
cc:=[4,20,29];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3, 33, 31, 32, 36, 34, 35, 28, 29, 30, 24, 22, 23, 27, 25, 26, 19, 20, 21], [25, 26, 27, 20, 21, 19, 23, 24, 22, 34, 35, 36, 29, 30, 28, 32, 33, 31, 7, 8, 9, 2, 3, 1, 5, 6, 4, 16, 17, 18, 11, 12, 10, 14, 15, 13]];
cc:=[4,21,28];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4, 34, 35, 36, 29, 30, 28, 32, 33, 31, 25, 26, 27, 20, 21, 19, 23, 24, 22], [24, 22, 23, 27, 25, 26, 19, 20, 21, 33, 31, 32, 36, 34, 35, 28, 29, 30, 6, 4, 5, 9, 7, 8, 1, 2, 3, 15, 13, 14, 18, 16, 17, 10, 11, 12]];
cc:=[4,22,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2, 32, 33, 31, 35, 36, 34, 30, 28, 29, 23, 24, 22, 26, 27, 25, 21, 19, 20], [26, 27, 25, 21, 19, 20, 24, 22, 23, 35, 36, 34, 30, 28, 29, 33, 31, 32, 8, 9, 7, 3, 1, 2, 6, 4, 5, 17, 18, 16, 12, 10, 11, 15, 13, 14]];
cc:=[4,23,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27, 10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6, 36, 34, 35, 28, 29, 30, 31, 32, 33, 27, 25, 26, 19, 20, 21, 22, 23, 24], [22, 23, 24, 25, 26, 27, 20, 21, 19, 31, 32, 33, 34, 35, 36, 29, 30, 28, 4, 5, 6, 7, 8, 9, 2, 3, 1, 13, 14, 15, 16, 17, 18, 11, 12, 10]];
cc:=[4,24,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[72,8];
full_sign:=[0,2,4,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.42-1.0.3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[42,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 10, 12, 14, 9, 11, 13, 15, 17, 19, 21, 16, 18, 20, 1, 3, 5, 7, 2, 4, 6, 29, 31, 33, 35, 30, 32, 34, 36, 38, 40, 42, 37, 39, 41, 22, 24, 26, 28, 23, 25, 27], [32, 30, 35, 33, 31, 29, 34, 39, 37, 42, 40, 38, 36, 41, 25, 23, 28, 26, 24, 22, 27, 11, 9, 14, 12, 10, 8, 13, 18, 16, 21, 19, 17, 15, 20, 4, 2, 7, 5, 3, 1, 6], [35, 33, 31, 29, 34, 32, 30, 42, 40, 38, 36, 41, 39, 37, 28, 26, 24, 22, 27, 25, 23, 14, 12, 10, 8, 13, 11, 9, 21, 19, 17, 15, 20, 18, 16, 7, 5, 3, 1, 6, 4, 2]];
cc:=[3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[84,7];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 19, 16, 20, 17, 21, 18, 1, 5, 2, 6, 3, 7, 4, 8, 12, 9, 13, 10, 14, 11, 36, 40, 37, 41, 38, 42, 39, 22, 26, 23, 27, 24, 28, 25, 29, 33, 30, 34, 31, 35, 32], [41, 37, 40, 36, 39, 42, 38, 27, 23, 26, 22, 25, 28, 24, 34, 30, 33, 29, 32, 35, 31, 20, 16, 19, 15, 18, 21, 17, 6, 2, 5, 1, 4, 7, 3, 13, 9, 12, 8, 11, 14, 10], [42, 38, 41, 37, 40, 36, 39, 28, 24, 27, 23, 26, 22, 25, 35, 31, 34, 30, 33, 29, 32, 21, 17, 20, 16, 19, 15, 18, 7, 3, 6, 2, 5, 1, 4, 14, 10, 13, 9, 12, 8, 11]];
cc:=[4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[84,7];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.42-2.0.3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[42,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 10, 12, 14, 9, 11, 13, 15, 17, 19, 21, 16, 18, 20, 1, 3, 5, 7, 2, 4, 6, 29, 31, 33, 35, 30, 32, 34, 36, 38, 40, 42, 37, 39, 41, 22, 24, 26, 28, 23, 25, 27], [35, 30, 32, 34, 29, 31, 33, 42, 37, 39, 41, 36, 38, 40, 28, 23, 25, 27, 22, 24, 26, 14, 9, 11, 13, 8, 10, 12, 21, 16, 18, 20, 15, 17, 19, 7, 2, 4, 6, 1, 3, 5], [31, 33, 35, 30, 32, 34, 29, 38, 40, 42, 37, 39, 41, 36, 24, 26, 28, 23, 25, 27, 22, 10, 12, 14, 9, 11, 13, 8, 17, 19, 21, 16, 18, 20, 15, 3, 5, 7, 2, 4, 6, 1]];
cc:=[3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[84,7];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 19, 16, 20, 17, 21, 18, 1, 5, 2, 6, 3, 7, 4, 8, 12, 9, 13, 10, 14, 11, 36, 40, 37, 41, 38, 42, 39, 22, 26, 23, 27, 24, 28, 25, 29, 33, 30, 34, 31, 35, 32], [40, 37, 41, 38, 42, 39, 36, 26, 23, 27, 24, 28, 25, 22, 33, 30, 34, 31, 35, 32, 29, 19, 16, 20, 17, 21, 18, 15, 5, 2, 6, 3, 7, 4, 1, 12, 9, 13, 10, 14, 11, 8], [41, 38, 42, 39, 36, 40, 37, 27, 24, 28, 25, 22, 26, 23, 34, 31, 35, 32, 29, 33, 30, 20, 17, 21, 18, 15, 19, 16, 6, 3, 7, 4, 1, 5, 2, 13, 10, 14, 11, 8, 12, 9]];
cc:=[4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[84,7];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.168-42.0.3-3-4
// Create group as a permutation group and initialize signature information.
gp_id:=[168,42];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,4];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 77, 9, 10, 8, 12, 13, 11, 154, 16, 17, 15, 19, 20, 18, 91, 23, 24, 22, 26, 27, 25, 84, 30, 31, 29, 33, 34, 32, 147, 37, 38, 36, 40, 41, 39, 98, 44, 45, 43, 47, 48, 46, 35, 51, 52, 50, 54, 55, 53, 112, 58, 59, 57, 61, 62, 60, 133, 65, 66, 64, 68, 69, 67, 42, 72, 73, 71, 75, 76, 74, 105, 79, 80, 78, 82, 83, 81, 140, 86, 87, 85, 89, 90, 88, 161, 93, 94, 92, 96, 97, 95, 70, 100, 101, 99, 103, 104, 102, 7, 107, 108, 106, 110, 111, 109, 168, 114, 115, 113, 117, 118, 116, 63, 121, 122, 120, 124, 125, 123, 14, 128, 129, 127, 131, 132, 130, 119, 135, 136, 134, 138, 139, 137, 28, 142, 143, 141, 145, 146, 144, 49, 149, 150, 148, 152, 153, 151, 126, 156, 157, 155, 159, 160, 158, 21, 163, 164, 162, 166, 167, 165, 56], [121, 69, 136, 63, 151, 162, 33, 100, 62, 164, 70, 74, 134, 89, 135, 55, 115, 49, 81, 99, 152, 156, 48, 101, 56, 88, 113, 40, 128, 76, 24, 161, 60, 106, 96, 107, 83, 3, 126, 53, 127, 145, 163, 27, 94, 21, 109, 120, 75, 142, 20, 122, 28, 32, 92, 131, 93, 13, 157, 7, 39, 141, 110, 114, 6, 143, 14, 130, 155, 82, 86, 34, 66, 119, 18, 148, 138, 149, 41, 45, 168, 11, 85, 103, 37, 153, 52, 147, 67, 78, 117, 16, 146, 80, 154, 158, 50, 5, 51, 139, 31, 133, 165, 15, 68, 72, 132, 17, 140, 4, 29, 124, 44, 160, 108, 77, 144, 22, 12, 23, 167, 87, 42, 137, 43, 61, 79, 111, 10, 105, 25, 36, 159, 58, 104, 38, 112, 116, 8, 47, 9, 97, 73, 91, 123, 57, 26, 30, 90, 59, 98, 46, 71, 166, 2, 118, 150, 35, 102, 64, 54, 65, 125, 129, 84, 95, 1, 19], [166, 157, 37, 109, 42, 64, 62, 138, 143, 128, 81, 133, 57, 69, 103, 94, 107, 74, 112, 50, 48, 117, 122, 30, 130, 35, 43, 55, 110, 150, 100, 53, 105, 71, 160, 131, 87, 135, 60, 140, 78, 125, 124, 115, 79, 151, 84, 22, 20, 96, 101, 86, 39, 91, 15, 27, 145, 136, 149, 32, 154, 8, 6, 159, 164, 72, 88, 77, 1, 13, 152, 108, 142, 11, 147, 29, 118, 89, 129, 93, 18, 98, 36, 167, 82, 73, 121, 25, 126, 148, 146, 54, 59, 44, 165, 49, 141, 153, 19, 10, 23, 158, 28, 134, 132, 33, 38, 114, 46, 119, 127, 139, 26, 66, 16, 137, 21, 155, 76, 47, 3, 51, 144, 56, 162, 41, 40, 31, 163, 67, 168, 106, 104, 12, 17, 2, 123, 7, 99, 111, 61, 52, 65, 116, 70, 92, 90, 75, 80, 156, 4, 161, 85, 97, 68, 24, 58, 95, 63, 113, 34, 5, 45, 9, 102, 14, 120, 83]];
cc:=[3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[336,208];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.24-1.0.6-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[24,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,6,8,8];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7, 17, 18, 16, 14, 15, 13, 23, 24, 22, 20, 21, 19], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 6, 5, 4, 3, 2, 1, 12, 11, 10, 9, 8, 7]];
cc:=[6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,17];
full_sign:=[0,2,8,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7, 17, 18, 16, 14, 15, 13, 23, 24, 22, 20, 21, 19], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 10, 12, 11, 7, 9, 8, 1, 3, 2, 4, 6, 5], [24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 3, 2, 1, 6, 5, 4, 9, 8, 7, 12, 11, 10]];
cc:=[6,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,17];
full_sign:=[0,2,8,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.24-10.0.6-6-12
// Create group as a permutation group and initialize signature information.
gp_id:=[24,10];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,6,6,12];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2, 21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14], [15, 16, 17, 18, 13, 14, 22, 21, 24, 23, 20, 19, 3, 4, 5, 6, 1, 2, 10, 9, 12, 11, 8, 7], [21, 22, 23, 24, 19, 20, 16, 15, 18, 17, 14, 13, 9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1]];
cc:=[10,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,25];
full_sign:=[0,2,6,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4, 23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16], [17, 18, 13, 14, 15, 16, 24, 23, 20, 19, 22, 21, 5, 6, 1, 2, 3, 4, 12, 11, 8, 7, 10, 9], [23, 24, 19, 20, 21, 22, 18, 17, 14, 13, 16, 15, 11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[11,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,25];
full_sign:=[0,2,6,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.24-11.0.4-12-12
// Create group as a permutation group and initialize signature information.
gp_id:=[24,11];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,12,12];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5, 19, 20, 21, 22, 23, 24, 14, 13, 16, 15, 18, 17], [15, 16, 17, 18, 13, 14, 22, 21, 24, 23, 20, 19, 4, 3, 6, 5, 2, 1, 9, 10, 11, 12, 7, 8], [23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16, 12, 11, 8, 7, 10, 9, 6, 5, 2, 1, 4, 3]];
cc:=[5,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,17];
full_sign:=[0,2,8,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5, 19, 20, 21, 22, 23, 24, 14, 13, 16, 15, 18, 17], [17, 18, 13, 14, 15, 16, 24, 23, 20, 19, 22, 21, 6, 5, 2, 1, 4, 3, 11, 12, 7, 8, 9, 10], [21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14, 10, 9, 12, 11, 8, 7, 4, 3, 6, 5, 2, 1]];
cc:=[5,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,17];
full_sign:=[0,2,8,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 16, 17, 18, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 7, 8, 9, 10, 11, 12], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1, 21, 22, 23, 24, 19, 20, 16, 15, 18, 17, 14, 13], [24, 23, 20, 19, 22, 21, 18, 17, 14, 13, 16, 15, 11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4]];
cc:=[6,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[48,17];
full_sign:=[0,2,8,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 16, 17, 18, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 7, 8, 9, 10, 11, 12], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3, 23, 24, 19, 20, 21, 22, 18, 17, 14, 13, 16, 15], [22, 21, 24, 23, 20, 19, 16, 15, 18, 17, 14, 13, 9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2]];
cc:=[6,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[48,17];
full_sign:=[0,2,8,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 8, 7, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1, 21, 22, 23, 24, 19, 20, 16, 15, 18, 17, 14, 13], [17, 18, 13, 14, 15, 16, 24, 23, 20, 19, 22, 21, 6, 5, 2, 1, 4, 3, 11, 12, 7, 8, 9, 10]];
cc:=[7,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[48,17];
full_sign:=[0,2,8,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 8, 7, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3, 23, 24, 19, 20, 21, 22, 18, 17, 14, 13, 16, 15], [15, 16, 17, 18, 13, 14, 22, 21, 24, 23, 20, 19, 4, 3, 6, 5, 2, 1, 9, 10, 11, 12, 7, 8]];
cc:=[7,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[48,17];
full_sign:=[0,2,8,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.24-2.0.3-24-24
// Create group as a permutation group and initialize signature information.
gp_id:=[24,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,24,24];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16], [17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 7, 8, 6, 5, 11, 12, 10, 9, 3, 4, 2, 1], [20, 19, 17, 18, 24, 23, 21, 22, 16, 15, 13, 14, 5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4]];
cc:=[3,17,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,25];
full_sign:=[0,2,6,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16], [18, 17, 20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 8, 7, 5, 6, 12, 11, 9, 10, 4, 3, 1, 2], [19, 20, 18, 17, 23, 24, 22, 21, 15, 16, 14, 13, 6, 5, 8, 7, 10, 9, 12, 11, 2, 1, 4, 3]];
cc:=[3,21,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,25];
full_sign:=[0,2,6,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 19, 20], [22, 21, 24, 23, 14, 13, 16, 15, 18, 17, 20, 19, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6], [23, 24, 22, 21, 15, 16, 14, 13, 19, 20, 18, 17, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[4,18,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[48,25];
full_sign:=[0,2,6,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 19, 20], [21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 19, 20, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5], [24, 23, 21, 22, 16, 15, 13, 14, 20, 19, 17, 18, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[4,22,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[48,25];
full_sign:=[0,2,6,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.48-25.0.2-6-24
// Create group as a permutation group and initialize signature information.
gp_id:=[48,25];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,24];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 14, 16, 15, 17, 18, 20, 19, 21, 22, 24, 23, 1, 2, 4, 3, 5, 6, 8, 7, 9, 10, 12, 11, 37, 38, 40, 39, 41, 42, 44, 43, 45, 46, 48, 47, 25, 26, 28, 27, 29, 30, 32, 31, 33, 34, 36, 35], [30, 29, 31, 32, 34, 33, 35, 36, 26, 25, 27, 28, 44, 43, 42, 41, 48, 47, 46, 45, 40, 39, 38, 37, 6, 5, 7, 8, 10, 9, 11, 12, 2, 1, 3, 4, 20, 19, 18, 17, 24, 23, 22, 21, 16, 15, 14, 13], [46, 45, 48, 47, 38, 37, 40, 39, 42, 41, 44, 43, 35, 36, 34, 33, 27, 28, 26, 25, 31, 32, 30, 29, 22, 21, 24, 23, 14, 13, 16, 15, 18, 17, 20, 19, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[3,12,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[13, 14, 16, 15, 17, 18, 20, 19, 21, 22, 24, 23, 1, 2, 4, 3, 5, 6, 8, 7, 9, 10, 12, 11, 37, 38, 40, 39, 41, 42, 44, 43, 45, 46, 48, 47, 25, 26, 28, 27, 29, 30, 32, 31, 33, 34, 36, 35], [29, 30, 32, 31, 33, 34, 36, 35, 25, 26, 28, 27, 43, 44, 41, 42, 47, 48, 45, 46, 39, 40, 37, 38, 5, 6, 8, 7, 9, 10, 12, 11, 1, 2, 4, 3, 19, 20, 17, 18, 23, 24, 21, 22, 15, 16, 13, 14], [45, 46, 47, 48, 37, 38, 39, 40, 41, 42, 43, 44, 36, 35, 33, 34, 28, 27, 25, 26, 32, 31, 29, 30, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 19, 20, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[3,12,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[13, 14, 16, 15, 17, 18, 20, 19, 21, 22, 24, 23, 1, 2, 4, 3, 5, 6, 8, 7, 9, 10, 12, 11, 37, 38, 40, 39, 41, 42, 44, 43, 45, 46, 48, 47, 25, 26, 28, 27, 29, 30, 32, 31, 33, 34, 36, 35], [33, 34, 36, 35, 25, 26, 28, 27, 29, 30, 32, 31, 47, 48, 45, 46, 39, 40, 37, 38, 43, 44, 41, 42, 9, 10, 12, 11, 1, 2, 4, 3, 5, 6, 8, 7, 23, 24, 21, 22, 15, 16, 13, 14, 19, 20, 17, 18], [41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40, 32, 31, 29, 30, 36, 35, 33, 34, 28, 27, 25, 26, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 8, 7, 5, 6, 12, 11, 9, 10, 4, 3, 1, 2]];
cc:=[3,13,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[13, 14, 16, 15, 17, 18, 20, 19, 21, 22, 24, 23, 1, 2, 4, 3, 5, 6, 8, 7, 9, 10, 12, 11, 37, 38, 40, 39, 41, 42, 44, 43, 45, 46, 48, 47, 25, 26, 28, 27, 29, 30, 32, 31, 33, 34, 36, 35], [34, 33, 35, 36, 26, 25, 27, 28, 30, 29, 31, 32, 48, 47, 46, 45, 40, 39, 38, 37, 44, 43, 42, 41, 10, 9, 11, 12, 2, 1, 3, 4, 6, 5, 7, 8, 24, 23, 22, 21, 16, 15, 14, 13, 20, 19, 18, 17], [42, 41, 44, 43, 46, 45, 48, 47, 38, 37, 40, 39, 31, 32, 30, 29, 35, 36, 34, 33, 27, 28, 26, 25, 18, 17, 20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 7, 8, 6, 5, 11, 12, 10, 9, 3, 4, 2, 1]];
cc:=[3,13,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[25, 26, 28, 27, 29, 30, 32, 31, 33, 34, 36, 35, 39, 40, 37, 38, 43, 44, 41, 42, 47, 48, 45, 46, 1, 2, 4, 3, 5, 6, 8, 7, 9, 10, 12, 11, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22], [18, 17, 19, 20, 22, 21, 23, 24, 14, 13, 15, 16, 6, 5, 7, 8, 10, 9, 11, 12, 2, 1, 3, 4, 42, 41, 43, 44, 46, 45, 47, 48, 38, 37, 39, 40, 30, 29, 31, 32, 34, 33, 35, 36, 26, 25, 27, 28], [48, 47, 45, 46, 40, 39, 37, 38, 44, 43, 41, 42, 34, 33, 36, 35, 26, 25, 28, 27, 30, 29, 32, 31, 24, 23, 21, 22, 16, 15, 13, 14, 20, 19, 17, 18, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[4,10,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[25, 26, 28, 27, 29, 30, 32, 31, 33, 34, 36, 35, 39, 40, 37, 38, 43, 44, 41, 42, 47, 48, 45, 46, 1, 2, 4, 3, 5, 6, 8, 7, 9, 10, 12, 11, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22], [17, 18, 20, 19, 21, 22, 24, 23, 13, 14, 16, 15, 5, 6, 8, 7, 9, 10, 12, 11, 1, 2, 4, 3, 41, 42, 44, 43, 45, 46, 48, 47, 37, 38, 40, 39, 29, 30, 32, 31, 33, 34, 36, 35, 25, 26, 28, 27], [47, 48, 46, 45, 39, 40, 38, 37, 43, 44, 42, 41, 33, 34, 35, 36, 25, 26, 27, 28, 29, 30, 31, 32, 23, 24, 22, 21, 15, 16, 14, 13, 19, 20, 18, 17, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[4,10,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[25, 26, 28, 27, 29, 30, 32, 31, 33, 34, 36, 35, 39, 40, 37, 38, 43, 44, 41, 42, 47, 48, 45, 46, 1, 2, 4, 3, 5, 6, 8, 7, 9, 10, 12, 11, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22], [21, 22, 24, 23, 13, 14, 16, 15, 17, 18, 20, 19, 9, 10, 12, 11, 1, 2, 4, 3, 5, 6, 8, 7, 45, 46, 48, 47, 37, 38, 40, 39, 41, 42, 44, 43, 33, 34, 36, 35, 25, 26, 28, 27, 29, 30, 32, 31], [43, 44, 42, 41, 47, 48, 46, 45, 39, 40, 38, 37, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 19, 20, 18, 17, 23, 24, 22, 21, 15, 16, 14, 13, 5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4]];
cc:=[4,11,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[25, 26, 28, 27, 29, 30, 32, 31, 33, 34, 36, 35, 39, 40, 37, 38, 43, 44, 41, 42, 47, 48, 45, 46, 1, 2, 4, 3, 5, 6, 8, 7, 9, 10, 12, 11, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22], [22, 21, 23, 24, 14, 13, 15, 16, 18, 17, 19, 20, 10, 9, 11, 12, 2, 1, 3, 4, 6, 5, 7, 8, 46, 45, 47, 48, 38, 37, 39, 40, 42, 41, 43, 44, 34, 33, 35, 36, 26, 25, 27, 28, 30, 29, 31, 32], [44, 43, 41, 42, 48, 47, 45, 46, 40, 39, 37, 38, 30, 29, 32, 31, 34, 33, 36, 35, 26, 25, 28, 27, 20, 19, 17, 18, 24, 23, 21, 22, 16, 15, 13, 14, 6, 5, 8, 7, 10, 9, 12, 11, 2, 1, 4, 3]];
cc:=[4,11,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.48-28.0.3-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[48,28];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,8];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 15, 16, 12, 11, 14, 13, 17, 18, 23, 24, 20, 19, 22, 21, 1, 2, 7, 8, 4, 3, 6, 5, 33, 34, 39, 40, 36, 35, 38, 37, 41, 42, 47, 48, 44, 43, 46, 45, 25, 26, 31, 32, 28, 27, 30, 29], [31, 32, 28, 27, 29, 30, 25, 26, 47, 48, 44, 43, 45, 46, 41, 42, 39, 40, 36, 35, 37, 38, 33, 34, 8, 7, 3, 4, 6, 5, 2, 1, 24, 23, 19, 20, 22, 21, 18, 17, 16, 15, 11, 12, 14, 13, 10, 9], [44, 43, 46, 45, 47, 48, 42, 41, 36, 35, 38, 37, 39, 40, 34, 33, 28, 27, 30, 29, 31, 32, 26, 25, 19, 20, 21, 22, 24, 23, 17, 18, 11, 12, 13, 14, 16, 15, 9, 10, 3, 4, 5, 6, 8, 7, 1, 2]];
cc:=[3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 15, 16, 12, 11, 14, 13, 17, 18, 23, 24, 20, 19, 22, 21, 1, 2, 7, 8, 4, 3, 6, 5, 33, 34, 39, 40, 36, 35, 38, 37, 41, 42, 47, 48, 44, 43, 46, 45, 25, 26, 31, 32, 28, 27, 30, 29], [32, 31, 27, 28, 30, 29, 26, 25, 48, 47, 43, 44, 46, 45, 42, 41, 40, 39, 35, 36, 38, 37, 34, 33, 7, 8, 4, 3, 5, 6, 1, 2, 23, 24, 20, 19, 21, 22, 17, 18, 15, 16, 12, 11, 13, 14, 9, 10], [43, 44, 45, 46, 48, 47, 41, 42, 35, 36, 37, 38, 40, 39, 33, 34, 27, 28, 29, 30, 32, 31, 25, 26, 20, 19, 22, 21, 23, 24, 18, 17, 12, 11, 14, 13, 15, 16, 10, 9, 4, 3, 6, 5, 7, 8, 2, 1]];
cc:=[3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.20-5.0.10-10-10
// Create group as a permutation group and initialize signature information.
gp_id:=[20,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,10,10,10];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 17, 18, 19, 20, 16, 12, 13, 14, 15, 11], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [19, 20, 16, 17, 18, 14, 15, 11, 12, 13, 9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[9,13,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 17, 18, 19, 20, 16, 12, 13, 14, 15, 11], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [17, 18, 19, 20, 16, 12, 13, 14, 15, 11, 7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[9,14,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 17, 18, 19, 20, 16, 12, 13, 14, 15, 11], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [18, 19, 20, 16, 17, 13, 14, 15, 11, 12, 8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[9,15,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 19, 20, 16, 17, 18, 14, 15, 11, 12, 13], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [17, 18, 19, 20, 16, 12, 13, 14, 15, 11, 7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[10,13,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 19, 20, 16, 17, 18, 14, 15, 11, 12, 13], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [20, 16, 17, 18, 19, 15, 11, 12, 13, 14, 10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[10,14,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 19, 20, 16, 17, 18, 14, 15, 11, 12, 13], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [19, 20, 16, 17, 18, 14, 15, 11, 12, 13, 9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[10,16,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 6, 7, 3, 4, 5, 1, 2, 18, 19, 20, 16, 17, 13, 14, 15, 11, 12], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [18, 19, 20, 16, 17, 13, 14, 15, 11, 12, 8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[11,13,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 6, 7, 3, 4, 5, 1, 2, 18, 19, 20, 16, 17, 13, 14, 15, 11, 12], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [17, 18, 19, 20, 16, 12, 13, 14, 15, 11, 7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[11,15,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 6, 7, 3, 4, 5, 1, 2, 18, 19, 20, 16, 17, 13, 14, 15, 11, 12], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [20, 16, 17, 18, 19, 15, 11, 12, 13, 14, 10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[11,16,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 6, 7, 8, 9, 5, 1, 2, 3, 4, 20, 16, 17, 18, 19, 15, 11, 12, 13, 14], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [19, 20, 16, 17, 18, 14, 15, 11, 12, 13, 9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[12,14,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 6, 7, 8, 9, 5, 1, 2, 3, 4, 20, 16, 17, 18, 19, 15, 11, 12, 13, 14], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [20, 16, 17, 18, 19, 15, 11, 12, 13, 14, 10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[12,15,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 6, 7, 8, 9, 5, 1, 2, 3, 4, 20, 16, 17, 18, 19, 15, 11, 12, 13, 14], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [18, 19, 20, 16, 17, 13, 14, 15, 11, 12, 8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[12,16,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[40,10];
full_sign:=[0,2,10,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.10-2.0.5-5-10-10
// Create group as a permutation group and initialize signature information.
gp_id:=[10,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,5,5,10,10];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[3,3,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[3,3,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[20,5];
full_sign:=[0,2,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[3,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[3,4,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[3,5,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[3,5,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[3,6,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[3,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[4,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[20,5];
full_sign:=[0,2,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[4,4,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[4,5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[4,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[4,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[4,6,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[5,5,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[20,5];
full_sign:=[0,2,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[5,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[5,6,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[6,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
full_auto:=[20,5];
full_sign:=[0,2,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[6,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.12-2.0.3-4-6-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,6,12];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1]];
cc:=[3,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[3,6,7,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[4,5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[4,6,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.12-2.0.2-6-12-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,12,12];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[2,7,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[2,8,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.16-8.0.2-4-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,8];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [10, 9, 11, 12, 16, 15, 14, 13, 1, 2, 4, 3, 7, 8, 5, 6], [15, 16, 14, 13, 9, 10, 11, 12, 8, 7, 5, 6, 2, 1, 4, 3]];
cc:=[3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [9, 10, 12, 11, 15, 16, 13, 14, 2, 1, 3, 4, 8, 7, 6, 5], [16, 15, 13, 14, 10, 9, 12, 11, 7, 8, 6, 5, 1, 2, 3, 4]];
cc:=[3,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.24-3.0.2-3-3-4
// Create group as a permutation group and initialize signature information.
gp_id:=[24,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,3,4];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6], [24, 23, 19, 20, 17, 18, 22, 21, 8, 7, 3, 4, 1, 2, 6, 5, 16, 15, 11, 12, 9, 10, 14, 13], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10, 24, 23, 22, 21, 19, 20, 17, 18]];
cc:=[2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.24-12.0.2-3-3-4
// Create group as a permutation group and initialize signature information.
gp_id:=[24,12];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,3,4];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15], [8, 5, 7, 6, 12, 9, 11, 10, 4, 1, 3, 2, 20, 17, 19, 18, 24, 21, 23, 22, 16, 13, 15, 14], [22, 23, 24, 21, 18, 19, 20, 17, 14, 15, 16, 13, 10, 11, 12, 9, 6, 7, 8, 5, 2, 3, 4, 1]];
cc:=[3,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.24-6.0.2-2-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [7, 8, 9, 10, 11, 12, 4, 5, 6, 1, 2, 3, 19, 20, 21, 22, 23, 24, 16, 17, 18, 13, 14, 15], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7, 17, 18, 16, 14, 15, 13, 23, 24, 22, 20, 21, 19]];
cc:=[3,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.24-8.0.2-2-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [20, 19, 21, 23, 22, 24, 17, 16, 18, 14, 13, 15, 8, 7, 9, 11, 10, 12, 5, 4, 6, 2, 1, 3], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2, 24, 22, 23, 21, 19, 20, 18, 16, 17, 15, 13, 14]];
cc:=[2,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1, 23, 24, 22, 20, 21, 19, 17, 18, 16, 14, 15, 13]];
cc:=[2,4,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7, 17, 18, 16, 14, 15, 13, 23, 24, 22, 20, 21, 19]];
cc:=[3,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.32-18.0.2-2-2-16
// Create group as a permutation group and initialize signature information.
gp_id:=[32,18];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,16];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6, 25, 26, 28, 27, 31, 32, 29, 30, 17, 18, 20, 19, 23, 24, 21, 22], [18, 17, 19, 20, 24, 23, 22, 21, 30, 29, 31, 32, 26, 25, 27, 28, 2, 1, 3, 4, 8, 7, 6, 5, 14, 13, 15, 16, 10, 9, 11, 12], [25, 26, 27, 28, 29, 30, 31, 32, 23, 24, 22, 21, 17, 18, 19, 20, 9, 10, 11, 12, 13, 14, 15, 16, 7, 8, 6, 5, 1, 2, 3, 4]];
cc:=[2,3,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6, 25, 26, 28, 27, 31, 32, 29, 30, 17, 18, 20, 19, 23, 24, 21, 22], [20, 19, 18, 17, 21, 22, 24, 23, 32, 31, 30, 29, 28, 27, 26, 25, 4, 3, 2, 1, 5, 6, 8, 7, 16, 15, 14, 13, 12, 11, 10, 9], [28, 27, 25, 26, 32, 31, 29, 30, 21, 22, 23, 24, 20, 19, 17, 18, 12, 11, 9, 10, 16, 15, 13, 14, 5, 6, 7, 8, 4, 3, 1, 2]];
cc:=[2,3,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6, 25, 26, 28, 27, 31, 32, 29, 30, 17, 18, 20, 19, 23, 24, 21, 22], [19, 20, 17, 18, 22, 21, 23, 24, 31, 32, 29, 30, 27, 28, 25, 26, 3, 4, 1, 2, 6, 5, 7, 8, 15, 16, 13, 14, 11, 12, 9, 10], [27, 28, 26, 25, 31, 32, 30, 29, 22, 21, 24, 23, 19, 20, 18, 17, 11, 12, 10, 9, 15, 16, 14, 13, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[2,3,4,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6, 25, 26, 28, 27, 31, 32, 29, 30, 17, 18, 20, 19, 23, 24, 21, 22], [17, 18, 20, 19, 23, 24, 21, 22, 29, 30, 32, 31, 25, 26, 28, 27, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11], [26, 25, 28, 27, 30, 29, 32, 31, 24, 23, 21, 22, 18, 17, 20, 19, 10, 9, 12, 11, 14, 13, 16, 15, 8, 7, 5, 6, 2, 1, 4, 3]];
cc:=[2,3,4,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.24-6.0.2-2-3-12
// Create group as a permutation group and initialize signature information.
gp_id:=[24,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,12];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22], [12, 10, 11, 9, 7, 8, 3, 1, 2, 6, 4, 5, 24, 22, 23, 21, 19, 20, 15, 13, 14, 18, 16, 17]];
cc:=[3,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17, 21, 19, 20, 24, 22, 23], [11, 12, 10, 8, 9, 7, 2, 3, 1, 5, 6, 4, 23, 24, 22, 20, 21, 19, 14, 15, 13, 17, 18, 16]];
cc:=[3,4,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.24-10.0.2-2-3-12
// Create group as a permutation group and initialize signature information.
gp_id:=[24,10];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,12];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [13, 14, 15, 16, 17, 18, 20, 19, 22, 21, 24, 23, 1, 2, 3, 4, 5, 6, 8, 7, 10, 9, 12, 11], [3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8, 15, 16, 17, 18, 13, 14, 21, 22, 23, 24, 19, 20], [23, 24, 19, 20, 21, 22, 18, 17, 14, 13, 16, 15, 11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[3,4,5,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8, 15, 16, 17, 18, 13, 14, 21, 22, 23, 24, 19, 20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [13, 14, 15, 16, 17, 18, 20, 19, 22, 21, 24, 23, 1, 2, 3, 4, 5, 6, 8, 7, 10, 9, 12, 11], [5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10, 17, 18, 13, 14, 15, 16, 23, 24, 19, 20, 21, 22], [21, 22, 23, 24, 19, 20, 16, 15, 18, 17, 14, 13, 9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1]];
cc:=[3,4,6,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8, 15, 16, 17, 18, 13, 14, 21, 22, 23, 24, 19, 20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.30-3.0.2-2-3-5
// Create group as a permutation group and initialize signature information.
gp_id:=[30,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,5];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[16, 20, 19, 18, 17, 26, 30, 29, 28, 27, 21, 25, 24, 23, 22, 1, 5, 4, 3, 2, 11, 15, 14, 13, 12, 6, 10, 9, 8, 7], [30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 16, 17, 18, 19, 20], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 27, 28, 29, 30, 26]];
cc:=[2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 16, 17, 18, 19, 20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[16, 20, 19, 18, 17, 26, 30, 29, 28, 27, 21, 25, 24, 23, 22, 1, 5, 4, 3, 2, 11, 15, 14, 13, 12, 6, 10, 9, 8, 7], [28, 27, 26, 30, 29, 23, 22, 21, 25, 24, 18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 16, 17, 18, 19, 20], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 29, 30, 26, 27, 28]];
cc:=[2,2,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 16, 17, 18, 19, 20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.36-4.0.2-2-2-9
// Create group as a permutation group and initialize signature information.
gp_id:=[36,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,9];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27], [19, 21, 20, 26, 25, 27, 23, 22, 24, 28, 30, 29, 35, 34, 36, 32, 31, 33, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15], [35, 34, 36, 32, 31, 33, 29, 28, 30, 26, 25, 27, 23, 22, 24, 20, 19, 21, 17, 16, 18, 14, 13, 15, 11, 10, 12, 8, 7, 9, 5, 4, 6, 2, 1, 3], [4, 5, 6, 7, 8, 9, 3, 1, 2, 13, 14, 15, 16, 17, 18, 12, 10, 11, 22, 23, 24, 25, 26, 27, 21, 19, 20, 31, 32, 33, 34, 35, 36, 30, 28, 29]];
cc:=[2,3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27], [19, 21, 20, 26, 25, 27, 23, 22, 24, 28, 30, 29, 35, 34, 36, 32, 31, 33, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15], [34, 36, 35, 31, 33, 32, 28, 30, 29, 25, 27, 26, 22, 24, 23, 19, 21, 20, 16, 18, 17, 13, 15, 14, 10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [5, 6, 4, 8, 9, 7, 1, 2, 3, 14, 15, 13, 17, 18, 16, 10, 11, 12, 23, 24, 22, 26, 27, 25, 19, 20, 21, 32, 33, 31, 35, 36, 34, 28, 29, 30]];
cc:=[2,3,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27], [19, 21, 20, 26, 25, 27, 23, 22, 24, 28, 30, 29, 35, 34, 36, 32, 31, 33, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15], [36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [6, 4, 5, 9, 7, 8, 2, 3, 1, 15, 13, 14, 18, 16, 17, 11, 12, 10, 24, 22, 23, 27, 25, 26, 20, 21, 19, 33, 31, 32, 36, 34, 35, 29, 30, 28]];
cc:=[2,3,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9, 28, 29, 30, 31, 32, 33, 34, 35, 36, 19, 20, 21, 22, 23, 24, 25, 26, 27];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.42-1.0.2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[42,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16], [22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16], [14, 9, 11, 13, 8, 10, 12, 21, 16, 18, 20, 15, 17, 19, 7, 2, 4, 6, 1, 3, 5, 35, 30, 32, 34, 29, 31, 33, 42, 37, 39, 41, 36, 38, 40, 28, 23, 25, 27, 22, 24, 26], [19, 16, 20, 17, 21, 18, 15, 5, 2, 6, 3, 7, 4, 1, 12, 9, 13, 10, 14, 11, 8, 40, 37, 41, 38, 42, 39, 36, 26, 23, 27, 24, 28, 25, 22, 33, 30, 34, 31, 35, 32, 29]];
cc:=[2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.12-1.0.4-4-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [10, 12, 11, 7, 9, 8, 1, 3, 2, 4, 6, 5], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[4,5,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.12-2.0.4-4-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9]];
cc:=[5,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,6];
full_sign:=[0,2,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.12-2.0.3-3-12-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,12,12];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[3,3,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,10];
full_sign:=[0,2,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[3,4,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[24,6];
full_sign:=[0,2,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[3,4,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[24,6];
full_sign:=[0,2,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[4,4,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[24,10];
full_sign:=[0,2,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.15-1.0.3-3-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[15,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,5,5];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5], [11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14]];
cc:=[2,3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[30,3];
full_sign:=[0,2,2,3,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5], [11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13]];
cc:=[2,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[30,3];
full_sign:=[0,2,2,3,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.16-1.0.2-2-16-16
// Create group as a permutation group and initialize signature information.
gp_id:=[16,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,16,16];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 3, 4, 2, 1], [16, 15, 13, 14, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,2,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,18];
full_sign:=[0,2,2,2,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [13, 14, 15, 16, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5], [12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,2,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,18];
full_sign:=[0,2,2,2,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 2, 1, 4, 3], [14, 13, 16, 15, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[2,2,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,18];
full_sign:=[0,2,2,2,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [15, 16, 14, 13, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7], [10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[2,2,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[32,18];
full_sign:=[0,2,2,2,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.21-1.0.3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[21,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 10, 12, 14, 9, 11, 13, 15, 17, 19, 21, 16, 18, 20, 1, 3, 5, 7, 2, 4, 6], [8, 10, 12, 14, 9, 11, 13, 15, 17, 19, 21, 16, 18, 20, 1, 3, 5, 7, 2, 4, 6], [19, 16, 20, 17, 21, 18, 15, 5, 2, 6, 3, 7, 4, 1, 12, 9, 13, 10, 14, 11, 8], [20, 17, 21, 18, 15, 19, 16, 6, 3, 7, 4, 1, 5, 2, 13, 10, 14, 11, 8, 12, 9]];
cc:=[2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[42,1];
full_sign:=[0,2,2,3,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.9-1.0.9-9-9-9
// Create group as a permutation group and initialize signature information.
gp_id:=[9,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,9,9,9,9];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 2, 3, 1], [4, 5, 6, 7, 8, 9, 2, 3, 1], [7, 8, 9, 2, 3, 1, 5, 6, 4], [8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[4,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 2, 3, 1], [4, 5, 6, 7, 8, 9, 2, 3, 1], [9, 7, 8, 1, 2, 3, 4, 5, 6], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[4,4,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 2, 3, 1], [7, 8, 9, 2, 3, 1, 5, 6, 4], [7, 8, 9, 2, 3, 1, 5, 6, 4], [5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[4,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 2, 3, 1], [7, 8, 9, 2, 3, 1, 5, 6, 4], [6, 4, 5, 9, 7, 8, 1, 2, 3], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[4,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 2, 3, 1], [5, 6, 4, 8, 9, 7, 3, 1, 2], [8, 9, 7, 3, 1, 2, 6, 4, 5], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[4,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 2, 3, 1], [8, 9, 7, 3, 1, 2, 6, 4, 5], [8, 9, 7, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[4,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 2, 3, 1, 5, 6, 4], [7, 8, 9, 2, 3, 1, 5, 6, 4], [6, 4, 5, 9, 7, 8, 1, 2, 3], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[5,5,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 2, 3, 1, 5, 6, 4], [5, 6, 4, 8, 9, 7, 3, 1, 2], [5, 6, 4, 8, 9, 7, 3, 1, 2], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[5,6,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 2, 3, 1, 5, 6, 4], [5, 6, 4, 8, 9, 7, 3, 1, 2], [8, 9, 7, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[5,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 3, 1, 2], [5, 6, 4, 8, 9, 7, 3, 1, 2], [8, 9, 7, 3, 1, 2, 6, 4, 5], [8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[6,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 3, 1, 2], [6, 4, 5, 9, 7, 8, 1, 2, 3], [9, 7, 8, 1, 2, 3, 4, 5, 6], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[6,8,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 1, 2, 3], [6, 4, 5, 9, 7, 8, 1, 2, 3], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[7,8,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.12-5.0.3-6-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,6,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[5,7,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[5,8,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[5,8,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[6,7,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[6,7,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[6,8,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.20-4.0.2-2-5-10
// Create group as a permutation group and initialize signature information.
gp_id:=[20,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,5,10];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [16, 20, 19, 18, 17, 11, 15, 14, 13, 12, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4, 20, 16, 17, 18, 19, 15, 11, 12, 13, 14]];
cc:=[3,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2, 18, 19, 20, 16, 17, 13, 14, 15, 11, 12]];
cc:=[3,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 17, 18, 19, 20, 16, 12, 13, 14, 15, 11]];
cc:=[3,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [16, 20, 19, 18, 17, 11, 15, 14, 13, 12, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 19, 20, 16, 17, 18, 14, 15, 11, 12, 13]];
cc:=[3,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.20-5.0.2-2-5-10
// Create group as a permutation group and initialize signature information.
gp_id:=[20,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,5,10];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16], [20, 16, 17, 18, 19, 15, 11, 12, 13, 14, 10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[2,3,5,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17], [19, 20, 16, 17, 18, 14, 15, 11, 12, 13, 9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[2,3,6,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18], [18, 19, 20, 16, 17, 13, 14, 15, 11, 12, 8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[2,3,7,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [17, 18, 19, 20, 16, 12, 13, 14, 15, 11, 7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[2,3,8,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[2,4,5,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[2,4,6,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7]];
cc:=[2,4,7,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[2,4,8,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4, 20, 16, 17, 18, 19, 15, 11, 12, 13, 14]];
cc:=[3,4,5,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 19, 20, 16, 17, 18, 14, 15, 11, 12, 13]];
cc:=[3,4,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2, 18, 19, 20, 16, 17, 13, 14, 15, 11, 12]];
cc:=[3,4,7,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 17, 18, 19, 20, 16, 12, 13, 14, 15, 11]];
cc:=[3,4,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.18-1.0.2-2-9-9
// Create group as a permutation group and initialize signature information.
gp_id:=[18,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,9,9];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [4, 5, 6, 7, 8, 9, 2, 3, 1, 13, 14, 15, 16, 17, 18, 11, 12, 10], [9, 7, 8, 1, 2, 3, 4, 5, 6, 18, 16, 17, 10, 11, 12, 13, 14, 15]];
cc:=[2,2,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [12, 11, 10, 17, 16, 18, 14, 13, 15, 3, 2, 1, 8, 7, 9, 5, 4, 6], [4, 5, 6, 7, 8, 9, 2, 3, 1, 13, 14, 15, 16, 17, 18, 11, 12, 10], [7, 8, 9, 2, 3, 1, 5, 6, 4, 16, 17, 18, 11, 12, 10, 14, 15, 13]];
cc:=[2,2,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [12, 11, 10, 17, 16, 18, 14, 13, 15, 3, 2, 1, 8, 7, 9, 5, 4, 6], [9, 7, 8, 1, 2, 3, 4, 5, 6, 18, 16, 17, 10, 11, 12, 13, 14, 15], [5, 6, 4, 8, 9, 7, 3, 1, 2, 14, 15, 13, 17, 18, 16, 12, 10, 11]];
cc:=[2,2,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [7, 8, 9, 2, 3, 1, 5, 6, 4, 16, 17, 18, 11, 12, 10, 14, 15, 13], [6, 4, 5, 9, 7, 8, 1, 2, 3, 15, 13, 14, 18, 16, 17, 10, 11, 12]];
cc:=[2,2,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [12, 11, 10, 17, 16, 18, 14, 13, 15, 3, 2, 1, 8, 7, 9, 5, 4, 6], [6, 4, 5, 9, 7, 8, 1, 2, 3, 15, 13, 14, 18, 16, 17, 10, 11, 12], [8, 9, 7, 3, 1, 2, 6, 4, 5, 17, 18, 16, 12, 10, 11, 15, 13, 14]];
cc:=[2,2,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [5, 6, 4, 8, 9, 7, 3, 1, 2, 14, 15, 13, 17, 18, 16, 12, 10, 11], [8, 9, 7, 3, 1, 2, 6, 4, 5, 17, 18, 16, 12, 10, 11, 15, 13, 14]];
cc:=[2,2,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.18-2.0.2-2-9-9
// Create group as a permutation group and initialize signature information.
gp_id:=[18,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,9,9];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [4, 5, 6, 7, 8, 9, 2, 3, 1, 13, 14, 15, 16, 17, 18, 11, 12, 10], [9, 7, 8, 1, 2, 3, 4, 5, 6, 18, 16, 17, 10, 11, 12, 13, 14, 15]];
cc:=[2,2,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [7, 8, 9, 2, 3, 1, 5, 6, 4, 16, 17, 18, 11, 12, 10, 14, 15, 13], [6, 4, 5, 9, 7, 8, 1, 2, 3, 15, 13, 14, 18, 16, 17, 10, 11, 12]];
cc:=[2,2,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [5, 6, 4, 8, 9, 7, 3, 1, 2, 14, 15, 13, 17, 18, 16, 12, 10, 11], [8, 9, 7, 3, 1, 2, 6, 4, 5, 17, 18, 16, 12, 10, 11, 15, 13, 14]];
cc:=[2,2,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[36,4];
full_sign:=[0,2,2,2,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 8.16-9.0.2-4-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,9];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,8];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 8, 7, 2, 1, 3, 4, 13, 14, 16, 15, 10, 9, 11, 12], [10, 9, 11, 12, 16, 15, 14, 13, 1, 2, 4, 3, 7, 8, 5, 6], [13, 14, 15, 16, 11, 12, 10, 9, 6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[2,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 8, 7, 2, 1, 3, 4, 13, 14, 16, 15, 10, 9, 11, 12], [9, 10, 12, 11, 15, 16, 13, 14, 2, 1, 3, 4, 8, 7, 6, 5], [14, 13, 16, 15, 12, 11, 9, 10, 5, 6, 7, 8, 3, 4, 2, 1]];
cc:=[2,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.8-4.0.4-4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,4,4,4];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [3, 4, 2, 1, 7, 8, 6, 5], [3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 8, 7, 2, 1, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,3,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 8, 7, 2, 1, 3, 4], [5, 6, 8, 7, 2, 1, 3, 4], [5, 6, 8, 7, 2, 1, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,4,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 8, 7, 2, 1, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,4,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.8-1.0.2-4-4-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[8,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,8,8];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 7, 8, 3, 4, 2, 1], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,3,3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [3, 4, 2, 1, 7, 8, 6, 5], [7, 8, 6, 5, 2, 1, 4, 3], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[2,3,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [4, 3, 1, 2, 8, 7, 5, 6], [5, 6, 7, 8, 3, 4, 2, 1], [7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[2,3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [4, 3, 1, 2, 8, 7, 5, 6], [6, 5, 8, 7, 4, 3, 1, 2], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,3,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 1, 2, 8, 7, 5, 6], [4, 3, 1, 2, 8, 7, 5, 6], [5, 6, 7, 8, 3, 4, 2, 1], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,4,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 1, 2, 8, 7, 5, 6], [4, 3, 1, 2, 8, 7, 5, 6], [7, 8, 6, 5, 2, 1, 4, 3], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[2,4,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.10-1.0.2-2-5-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[10,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,5,5,5];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[2,2,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[2,2,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7]];
cc:=[2,2,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[2,2,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.10-2.0.2-2-5-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[10,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,5,5,5];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[2,2,3,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7]];
cc:=[2,2,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[2,2,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[2,2,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.12-3.0.2-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[12,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,3,3,3];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6], [10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5]];
cc:=[2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.16-7.0.2-2-2-2-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,7];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,8];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [13, 14, 15, 16, 12, 11, 9, 10, 5, 6, 7, 8, 4, 3, 1, 2]];
cc:=[2,2,3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [10, 9, 11, 12, 16, 15, 14, 13, 2, 1, 3, 4, 8, 7, 6, 5], [14, 13, 16, 15, 11, 12, 10, 9, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[2,2,3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [13, 14, 15, 16, 12, 11, 9, 10, 5, 6, 7, 8, 4, 3, 1, 2]];
cc:=[3,3,3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [10, 9, 11, 12, 16, 15, 14, 13, 2, 1, 3, 4, 8, 7, 6, 5], [14, 13, 16, 15, 11, 12, 10, 9, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[3,3,3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [13, 14, 15, 16, 12, 11, 9, 10, 5, 6, 7, 8, 4, 3, 1, 2]];
cc:=[3,4,4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [10, 9, 11, 12, 16, 15, 14, 13, 2, 1, 3, 4, 8, 7, 6, 5], [14, 13, 16, 15, 11, 12, 10, 9, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[3,4,4,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.28-3.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[28,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [17, 16, 15, 21, 20, 19, 18, 24, 23, 22, 28, 27, 26, 25, 3, 2, 1, 7, 6, 5, 4, 10, 9, 8, 14, 13, 12, 11], [24, 23, 22, 28, 27, 26, 25, 17, 16, 15, 21, 20, 19, 18, 10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4]];
cc:=[2,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [24, 23, 22, 28, 27, 26, 25, 17, 16, 15, 21, 20, 19, 18, 10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4], [24, 23, 22, 28, 27, 26, 25, 17, 16, 15, 21, 20, 19, 18, 10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4]];
cc:=[2,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.12-4.0.2-2-3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[3,4,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.12-1.0.2-2-3-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[12,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,4,4];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[2,2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.12-5.0.2-2-3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[2,3,5,5,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,3,6,6,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[2,4,5,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[2,4,6,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[3,4,5,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[3,4,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.12-5.0.2-2-2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,2,2,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[2,2,2,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,2,3,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[2,2,3,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[2,2,4,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[2,2,4,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,3,3,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[2,3,3,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[2,3,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[2,3,4,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,3,4,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,4,4,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[2,4,4,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[3,3,3,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[3,3,3,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[3,3,4,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[3,3,4,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[3,4,4,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[3,4,4,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[4,4,4,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[4,4,4,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.12-4.0.2-2-2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[2,3,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.5-1.0.5-5-5-5-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[5,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,5,5,5,5,5,5];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [5, 1, 2, 3, 4]];
cc:=[2,2,2,2,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3]];
cc:=[2,2,2,2,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [4, 5, 1, 2, 3]];
cc:=[2,2,2,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[2,2,2,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2]];
cc:=[2,2,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[2,2,3,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4]];
cc:=[2,2,4,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[2,3,3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4]];
cc:=[2,3,3,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3]];
cc:=[2,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[2,4,5,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4]];
cc:=[3,3,3,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3]];
cc:=[3,3,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[3,3,5,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[3,4,4,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[4,4,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.6-2.0.3-3-3-3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[3,3,3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[3,3,3,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2]];
cc:=[3,3,4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[3,4,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[4,4,4,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.6-2.0.2-3-3-6-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,3,6,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2]];
cc:=[2,3,3,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[2,3,4,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[2,3,4,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[2,4,4,5,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.6-2.0.2-2-6-6-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,6,6,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,5,5,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.8-3.0.2-2-2-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4,4,4];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1], [7, 8, 6, 5, 3, 4, 2, 1], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[2,3,4,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.8-4.0.2-2-2-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4,4,4];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 8, 7, 2, 1, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,2,2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.8-1.0.2-2-2-2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[8,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,8,8];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 3, 4, 2, 1], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,2,2,2,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [7, 8, 6, 5, 2, 1, 4, 3], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[2,2,2,2,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.12-4.0.2-2-2-2-2-3
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,3];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10]];
cc:=[2,2,2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10]];
cc:=[2,3,3,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10]];
cc:=[2,3,4,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.14-1.0.2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[14,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4], [10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4]];
cc:=[2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.6-1.0.2-2-3-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3,3,3,3];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.6-2.0.2-2-3-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3,3,3,3];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,3,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.6-2.0.2-2-2-3-3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3,3,3,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,2,3,3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1]];
cc:=[2,2,2,3,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.6-2.0.2-2-2-2-3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,3,6,6];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[2,2,2,2,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,2,2,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.8-3.0.2-2-2-2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,4];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[2,2,2,2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[2,2,3,3,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[2,2,3,4,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[3,3,3,3,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[3,3,3,4,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[3,4,4,4,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.4-1.0.2-2-4-4-4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4,4,4,4,4];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2]];
cc:=[2,2,3,3,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,2,3,3,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,2,3,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.6-1.0.2-2-2-2-2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,3,3];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,2,2,2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.6-2.0.2-2-2-2-2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,3,3];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,2,2,2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.4-1.0.2-2-2-2-2-4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,4,4,4,4];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2]];
cc:=[2,2,2,2,2,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,2,2,2,2,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.3-1.0.3-3-3-3-3-3-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[3,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3,3,3,3,3,3,3];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [3, 1, 2], [3, 1, 2]];
cc:=[2,2,2,2,2,2,2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2]];
cc:=[2,2,2,2,2,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2]];
cc:=[2,2,3,3,3,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 8.4-1.0.2-2-2-2-2-2-2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2,4,4];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [4, 3, 1, 2]];
cc:=[2,2,2,2,2,2,2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.4-2.0.2-2-2-2-2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[4,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2,2,2,2];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,2,2,2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,2,2,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,2,2,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,3,3,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,3,3,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,3,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,2,2,3,3,3,3,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,3,3,3,3,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,3,3,3,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,3,4,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,3,3,3,3,3,3,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,3,3,3,3,3,3,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,3,3,3,3,3,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,3,3,3,4,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,3,4,4,4,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 8.2-1.0.2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[2,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2];
genus:=8;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1]];
cc:=[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);


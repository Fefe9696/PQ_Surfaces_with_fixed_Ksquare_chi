// Magma CODE FOR SEARCH RESULTS

// The results are stored in a list of records called 'data'

RecFormat:=recformat<group,gp_id, signature,gen_vectors,conj_classes,genus,dimension,r,g0, passport_label,gen_vect_label, is_hyperelliptic, hyp_involution, is_cyclic_trigonal,cyc_auto,full_auto, full_sign,topological_class,braid_class>;

data:=[];

// label = 7.48-32.0.3-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[48,32];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6, 33, 34, 39, 40, 35, 36, 37, 38, 41, 42, 47, 48, 43, 44, 45, 46, 25, 26, 31, 32, 27, 28, 29, 30], [27, 28, 26, 25, 31, 32, 30, 29, 35, 36, 34, 33, 39, 40, 38, 37, 43, 44, 42, 41, 47, 48, 46, 45, 3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13, 19, 20, 18, 17, 23, 24, 22, 21], [46, 45, 41, 42, 44, 43, 47, 48, 30, 29, 25, 26, 28, 27, 31, 32, 38, 37, 33, 34, 36, 35, 39, 40, 22, 21, 17, 18, 20, 19, 23, 24, 6, 5, 1, 2, 4, 3, 7, 8, 14, 13, 9, 10, 12, 11, 15, 16]];
cc:=[5,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6, 33, 34, 39, 40, 35, 36, 37, 38, 41, 42, 47, 48, 43, 44, 45, 46, 25, 26, 31, 32, 27, 28, 29, 30], [28, 27, 25, 26, 32, 31, 29, 30, 36, 35, 33, 34, 40, 39, 37, 38, 44, 43, 41, 42, 48, 47, 45, 46, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22], [45, 46, 42, 41, 43, 44, 48, 47, 29, 30, 26, 25, 27, 28, 32, 31, 37, 38, 34, 33, 35, 36, 40, 39, 21, 22, 18, 17, 19, 20, 24, 23, 5, 6, 2, 1, 3, 4, 8, 7, 13, 14, 10, 9, 11, 12, 16, 15]];
cc:=[5,8,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 21, 22, 23, 24, 19, 20, 1, 2, 5, 6, 7, 8, 3, 4, 9, 10, 13, 14, 15, 16, 11, 12, 41, 42, 45, 46, 47, 48, 43, 44, 25, 26, 29, 30, 31, 32, 27, 28, 33, 34, 37, 38, 39, 40, 35, 36], [28, 27, 25, 26, 32, 31, 29, 30, 36, 35, 33, 34, 40, 39, 37, 38, 44, 43, 41, 42, 48, 47, 45, 46, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22], [39, 40, 34, 33, 37, 38, 36, 35, 47, 48, 42, 41, 45, 46, 44, 43, 31, 32, 26, 25, 29, 30, 28, 27, 15, 16, 10, 9, 13, 14, 12, 11, 23, 24, 18, 17, 21, 22, 20, 19, 7, 8, 2, 1, 5, 6, 4, 3]];
cc:=[6,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 21, 22, 23, 24, 19, 20, 1, 2, 5, 6, 7, 8, 3, 4, 9, 10, 13, 14, 15, 16, 11, 12, 41, 42, 45, 46, 47, 48, 43, 44, 25, 26, 29, 30, 31, 32, 27, 28, 33, 34, 37, 38, 39, 40, 35, 36], [27, 28, 26, 25, 31, 32, 30, 29, 35, 36, 34, 33, 39, 40, 38, 37, 43, 44, 42, 41, 47, 48, 46, 45, 3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13, 19, 20, 18, 17, 23, 24, 22, 21], [40, 39, 33, 34, 38, 37, 35, 36, 48, 47, 41, 42, 46, 45, 43, 44, 32, 31, 25, 26, 30, 29, 27, 28, 16, 15, 9, 10, 14, 13, 11, 12, 24, 23, 17, 18, 22, 21, 19, 20, 8, 7, 1, 2, 6, 5, 3, 4]];
cc:=[6,8,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.56-11.0.2-7-7
// Create group as a permutation group and initialize signature information.
gp_id:=[56,11];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,7,7];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55], [9, 14, 10, 13, 11, 16, 12, 15, 17, 22, 18, 21, 19, 24, 20, 23, 25, 30, 26, 29, 27, 32, 28, 31, 33, 38, 34, 37, 35, 40, 36, 39, 41, 46, 42, 45, 43, 48, 44, 47, 49, 54, 50, 53, 51, 56, 52, 55, 1, 6, 2, 5, 3, 8, 4, 7], [50, 52, 54, 56, 51, 49, 55, 53, 2, 4, 6, 8, 3, 1, 7, 5, 10, 12, 14, 16, 11, 9, 15, 13, 18, 20, 22, 24, 19, 17, 23, 21, 26, 28, 30, 32, 27, 25, 31, 29, 34, 36, 38, 40, 35, 33, 39, 37, 42, 44, 46, 48, 43, 41, 47, 45]];
cc:=[2,3,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[504,156];
full_sign:=[0,2,3,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55], [17, 24, 22, 19, 18, 23, 21, 20, 25, 32, 30, 27, 26, 31, 29, 28, 33, 40, 38, 35, 34, 39, 37, 36, 41, 48, 46, 43, 42, 47, 45, 44, 49, 56, 54, 51, 50, 55, 53, 52, 1, 8, 6, 3, 2, 7, 5, 4, 9, 16, 14, 11, 10, 15, 13, 12], [42, 46, 43, 47, 48, 44, 45, 41, 50, 54, 51, 55, 56, 52, 53, 49, 2, 6, 3, 7, 8, 4, 5, 1, 10, 14, 11, 15, 16, 12, 13, 9, 18, 22, 19, 23, 24, 20, 21, 17, 26, 30, 27, 31, 32, 28, 29, 25, 34, 38, 35, 39, 40, 36, 37, 33]];
cc:=[2,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[504,156];
full_sign:=[0,2,3,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55], [25, 31, 32, 26, 30, 28, 27, 29, 33, 39, 40, 34, 38, 36, 35, 37, 41, 47, 48, 42, 46, 44, 43, 45, 49, 55, 56, 50, 54, 52, 51, 53, 1, 7, 8, 2, 6, 4, 3, 5, 9, 15, 16, 10, 14, 12, 11, 13, 17, 23, 24, 18, 22, 20, 19, 21], [34, 35, 40, 37, 39, 38, 33, 36, 42, 43, 48, 45, 47, 46, 41, 44, 50, 51, 56, 53, 55, 54, 49, 52, 2, 3, 8, 5, 7, 6, 1, 4, 10, 11, 16, 13, 15, 14, 9, 12, 18, 19, 24, 21, 23, 22, 17, 20, 26, 27, 32, 29, 31, 30, 25, 28]];
cc:=[2,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[504,156];
full_sign:=[0,2,3,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.27-2.0.3-9-9
// Create group as a permutation group and initialize signature information.
gp_id:=[27,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,9,9];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7], [27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15]];
cc:=[4,10,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[4,11,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8], [26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14]];
cc:=[4,12,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[4,13,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [12, 10, 11, 15, 13, 14, 18, 16, 17, 21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9], [25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13]];
cc:=[4,14,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[4,15,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1], [24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12]];
cc:=[4,16,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2], [23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11]];
cc:=[4,18,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3], [22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10]];
cc:=[4,20,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7], [24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12]];
cc:=[5,10,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3]];
cc:=[5,11,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8], [23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11]];
cc:=[5,12,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[5,13,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [12, 10, 11, 15, 13, 14, 18, 16, 17, 21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9], [22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10]];
cc:=[5,14,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[5,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[5,17,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[5,19,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[5,21,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19], [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7], [26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14]];
cc:=[6,10,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19], [19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[6,11,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19], [11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8], [25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13]];
cc:=[6,12,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19], [20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[6,13,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19], [12, 10, 11, 15, 13, 14, 18, 16, 17, 21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9], [27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15]];
cc:=[6,14,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19], [21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[6,15,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19], [13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1], [23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11]];
cc:=[6,16,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19], [14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2], [22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10]];
cc:=[6,18,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19], [15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3], [24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12]];
cc:=[6,20,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23], [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7], [22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10]];
cc:=[7,10,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23], [19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[7,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=29;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23], [11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8], [24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12]];
cc:=[7,12,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=30;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23], [20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3]];
cc:=[7,13,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=31;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23], [12, 10, 11, 15, 13, 14, 18, 16, 17, 21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9], [23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11]];
cc:=[7,14,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=32;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23], [21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[7,15,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=33;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23], [25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[7,17,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=34;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23], [26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[7,19,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=35;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23], [27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[7,21,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=36;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20], [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7], [25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13]];
cc:=[8,10,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=37;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20], [19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[8,11,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=38;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20], [11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8], [27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15]];
cc:=[8,12,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=39;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20], [20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[8,13,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=40;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20], [12, 10, 11, 15, 13, 14, 18, 16, 17, 21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9], [26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14]];
cc:=[8,14,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=41;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20], [21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[8,15,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=42;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20], [13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1], [22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10]];
cc:=[8,16,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=43;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20], [14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2], [24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12]];
cc:=[8,18,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=44;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20], [15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3], [23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11]];
cc:=[8,20,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=45;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22], [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7], [23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11]];
cc:=[9,10,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=46;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22], [19, 20, 21, 22, 23, 24, 25, 26, 27, 2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[9,11,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=47;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22], [11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8], [22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10]];
cc:=[9,12,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=48;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22], [20, 21, 19, 23, 24, 22, 26, 27, 25, 3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21, 5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[9,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=49;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22], [12, 10, 11, 15, 13, 14, 18, 16, 17, 21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9], [24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12]];
cc:=[9,14,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=50;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22], [21, 19, 20, 24, 22, 23, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], [15, 13, 14, 18, 16, 17, 12, 10, 11, 24, 22, 23, 27, 25, 26, 21, 19, 20, 4, 5, 6, 7, 8, 9, 1, 2, 3]];
cc:=[9,15,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=51;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22], [25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[9,17,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=52;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22], [26, 27, 25, 20, 21, 19, 23, 24, 22, 9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[9,19,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=53;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13, 26, 27, 25, 20, 21, 19, 23, 24, 22], [27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [18, 16, 17, 12, 10, 11, 15, 13, 14, 27, 25, 26, 21, 19, 20, 24, 22, 23, 7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[9,21,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=54;
gen_vect_label:=1;
full_auto:=[54,3];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.16-1.0.8-16-16
// Create group as a permutation group and initialize signature information.
gp_id:=[16,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,8,16,16];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 2, 1, 13, 14, 15, 16, 11, 12, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 3, 4, 2, 1], [12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[5,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 2, 1, 13, 14, 15, 16, 11, 12, 10, 9], [13, 14, 15, 16, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5], [14, 13, 16, 15, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[5,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 2, 1, 13, 14, 15, 16, 11, 12, 10, 9], [11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 2, 1, 4, 3], [10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[5,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 2, 1, 13, 14, 15, 16, 11, 12, 10, 9], [15, 16, 14, 13, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 14, 13, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[5,12,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 2, 1, 13, 14, 15, 16, 11, 12, 10, 9], [16, 15, 13, 14, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 13, 14, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[5,16,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 2, 1, 4, 3, 15, 16, 14, 13, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 3, 4, 2, 1], [10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[6,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 2, 1, 4, 3, 15, 16, 14, 13, 10, 9, 12, 11], [13, 14, 15, 16, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5], [15, 16, 14, 13, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[6,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 2, 1, 4, 3, 15, 16, 14, 13, 10, 9, 12, 11], [11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 2, 1, 4, 3], [11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[6,11,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 2, 1, 4, 3, 15, 16, 14, 13, 10, 9, 12, 11], [14, 13, 16, 15, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6], [16, 15, 13, 14, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[6,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 2, 1, 4, 3, 15, 16, 14, 13, 10, 9, 12, 11], [12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 1, 2, 3, 4], [12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[6,15,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 4, 3, 1, 2, 14, 13, 16, 15, 12, 11, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 3, 4, 2, 1], [11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[7,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 4, 3, 1, 2, 14, 13, 16, 15, 12, 11, 9, 10], [13, 14, 15, 16, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5], [13, 14, 15, 16, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[7,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 4, 3, 1, 2, 14, 13, 16, 15, 12, 11, 9, 10], [15, 16, 14, 13, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 13, 14, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[7,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 4, 3, 1, 2, 14, 13, 16, 15, 12, 11, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 4, 3, 1, 2], [12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[7,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 4, 3, 1, 2, 14, 13, 16, 15, 12, 11, 9, 10], [14, 13, 16, 15, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6], [14, 13, 16, 15, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[7,14,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 5, 6, 1, 2, 3, 4, 16, 15, 13, 14, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 3, 4, 2, 1], [9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 3, 4, 2, 1]];
cc:=[8,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 5, 6, 1, 2, 3, 4, 16, 15, 13, 14, 9, 10, 11, 12], [13, 14, 15, 16, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5], [16, 15, 13, 14, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[8,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 5, 6, 1, 2, 3, 4, 16, 15, 13, 14, 9, 10, 11, 12], [11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 2, 1, 4, 3], [12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[8,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 5, 6, 1, 2, 3, 4, 16, 15, 13, 14, 9, 10, 11, 12], [15, 16, 14, 13, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[8,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 5, 6, 1, 2, 3, 4, 16, 15, 13, 14, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 4, 3, 1, 2], [10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[8,13,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.18-2.0.6-9-18
// Create group as a permutation group and initialize signature information.
gp_id:=[18,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,6,9,18];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 2, 3, 1, 13, 14, 15, 16, 17, 18, 11, 12, 10], [17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[5,7,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 2, 3, 1, 5, 6, 4, 16, 17, 18, 11, 12, 10, 14, 15, 13], [14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[5,8,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [5, 6, 4, 8, 9, 7, 3, 1, 2, 14, 15, 13, 17, 18, 16, 12, 10, 11], [16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4]];
cc:=[5,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [8, 9, 7, 3, 1, 2, 6, 4, 5, 17, 18, 16, 12, 10, 11, 15, 13, 14], [13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1]];
cc:=[5,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [6, 4, 5, 9, 7, 8, 1, 2, 3, 15, 13, 14, 18, 16, 17, 10, 11, 12], [18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[5,11,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [9, 7, 8, 1, 2, 3, 4, 5, 6, 18, 16, 17, 10, 11, 12, 13, 14, 15], [15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[5,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 2, 3, 1, 13, 14, 15, 16, 17, 18, 11, 12, 10], [16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4]];
cc:=[6,7,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 2, 3, 1, 5, 6, 4, 16, 17, 18, 11, 12, 10, 14, 15, 13], [13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1]];
cc:=[6,8,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 3, 1, 2, 14, 15, 13, 17, 18, 16, 12, 10, 11], [18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[6,9,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [8, 9, 7, 3, 1, 2, 6, 4, 5, 17, 18, 16, 12, 10, 11, 15, 13, 14], [15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[6,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [6, 4, 5, 9, 7, 8, 1, 2, 3, 15, 13, 14, 18, 16, 17, 10, 11, 12], [17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[6,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [9, 7, 8, 1, 2, 3, 4, 5, 6, 18, 16, 17, 10, 11, 12, 13, 14, 15], [14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[6,12,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.20-2.0.4-10-20
// Create group as a permutation group and initialize signature information.
gp_id:=[20,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,10,20];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9], [4, 3, 6, 5, 8, 7, 10, 9, 2, 1, 14, 13, 16, 15, 18, 17, 20, 19, 12, 11], [19, 20, 11, 12, 13, 14, 15, 16, 17, 18, 10, 9, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[3,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9], [8, 7, 10, 9, 2, 1, 4, 3, 6, 5, 18, 17, 20, 19, 12, 11, 14, 13, 16, 15], [15, 16, 17, 18, 19, 20, 11, 12, 13, 14, 6, 5, 8, 7, 10, 9, 2, 1, 4, 3]];
cc:=[3,10,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9], [6, 5, 8, 7, 10, 9, 2, 1, 4, 3, 16, 15, 18, 17, 20, 19, 12, 11, 14, 13], [17, 18, 19, 20, 11, 12, 13, 14, 15, 16, 8, 7, 10, 9, 2, 1, 4, 3, 6, 5]];
cc:=[3,11,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9], [10, 9, 2, 1, 4, 3, 6, 5, 8, 7, 20, 19, 12, 11, 14, 13, 16, 15, 18, 17], [13, 14, 15, 16, 17, 18, 19, 20, 11, 12, 4, 3, 6, 5, 8, 7, 10, 9, 2, 1]];
cc:=[3,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [4, 3, 6, 5, 8, 7, 10, 9, 2, 1, 14, 13, 16, 15, 18, 17, 20, 19, 12, 11], [20, 19, 12, 11, 14, 13, 16, 15, 18, 17, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[4,9,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [8, 7, 10, 9, 2, 1, 4, 3, 6, 5, 18, 17, 20, 19, 12, 11, 14, 13, 16, 15], [16, 15, 18, 17, 20, 19, 12, 11, 14, 13, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4]];
cc:=[4,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [6, 5, 8, 7, 10, 9, 2, 1, 4, 3, 16, 15, 18, 17, 20, 19, 12, 11, 14, 13], [18, 17, 20, 19, 12, 11, 14, 13, 16, 15, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6]];
cc:=[4,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [10, 9, 2, 1, 4, 3, 6, 5, 8, 7, 20, 19, 12, 11, 14, 13, 16, 15, 18, 17], [14, 13, 16, 15, 18, 17, 20, 19, 12, 11, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2]];
cc:=[4,12,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.24-9.0.4-6-12
// Create group as a permutation group and initialize signature information.
gp_id:=[24,9];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,6,12];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2, 21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14], [24, 23, 20, 19, 22, 21, 18, 17, 14, 13, 16, 15, 11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4]];
cc:=[7,13,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4, 23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16], [22, 21, 24, 23, 20, 19, 16, 15, 18, 17, 14, 13, 9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2]];
cc:=[7,14,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [10, 9, 12, 11, 8, 7, 4, 3, 6, 5, 2, 1, 22, 21, 24, 23, 20, 19, 16, 15, 18, 17, 14, 13], [23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16, 12, 11, 8, 7, 10, 9, 6, 5, 2, 1, 4, 3]];
cc:=[7,15,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [12, 11, 8, 7, 10, 9, 6, 5, 2, 1, 4, 3, 24, 23, 20, 19, 22, 21, 18, 17, 14, 13, 16, 15], [21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14, 10, 9, 12, 11, 8, 7, 4, 3, 6, 5, 2, 1]];
cc:=[7,16,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2, 21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14], [23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16, 12, 11, 8, 7, 10, 9, 6, 5, 2, 1, 4, 3]];
cc:=[8,13,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4, 23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16], [21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14, 10, 9, 12, 11, 8, 7, 4, 3, 6, 5, 2, 1]];
cc:=[8,14,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [10, 9, 12, 11, 8, 7, 4, 3, 6, 5, 2, 1, 22, 21, 24, 23, 20, 19, 16, 15, 18, 17, 14, 13], [24, 23, 20, 19, 22, 21, 18, 17, 14, 13, 16, 15, 11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4]];
cc:=[8,15,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [12, 11, 8, 7, 10, 9, 6, 5, 2, 1, 4, 3, 24, 23, 20, 19, 22, 21, 18, 17, 14, 13, 16, 15], [22, 21, 24, 23, 20, 19, 16, 15, 18, 17, 14, 13, 9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2]];
cc:=[8,16,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 8, 7, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5], [9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2, 21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14], [18, 17, 14, 13, 16, 15, 24, 23, 20, 19, 22, 21, 5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10]];
cc:=[9,13,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 8, 7, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5], [11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4, 23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16], [16, 15, 18, 17, 14, 13, 22, 21, 24, 23, 20, 19, 3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8]];
cc:=[9,14,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 8, 7, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5], [10, 9, 12, 11, 8, 7, 4, 3, 6, 5, 2, 1, 22, 21, 24, 23, 20, 19, 16, 15, 18, 17, 14, 13], [17, 18, 13, 14, 15, 16, 23, 24, 19, 20, 21, 22, 6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9]];
cc:=[9,15,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 8, 7, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5], [12, 11, 8, 7, 10, 9, 6, 5, 2, 1, 4, 3, 24, 23, 20, 19, 22, 21, 18, 17, 14, 13, 16, 15], [15, 16, 17, 18, 13, 14, 21, 22, 23, 24, 19, 20, 4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7]];
cc:=[9,16,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 18, 17, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2, 21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14], [17, 18, 13, 14, 15, 16, 23, 24, 19, 20, 21, 22, 6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9]];
cc:=[10,13,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 18, 17, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4, 23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16], [15, 16, 17, 18, 13, 14, 21, 22, 23, 24, 19, 20, 4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7]];
cc:=[10,14,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 18, 17, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 9, 12, 11, 8, 7, 4, 3, 6, 5, 2, 1, 22, 21, 24, 23, 20, 19, 16, 15, 18, 17, 14, 13], [18, 17, 14, 13, 16, 15, 24, 23, 20, 19, 22, 21, 5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10]];
cc:=[10,15,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 18, 17, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [12, 11, 8, 7, 10, 9, 6, 5, 2, 1, 4, 3, 24, 23, 20, 19, 22, 21, 18, 17, 14, 13, 16, 15], [16, 15, 18, 17, 14, 13, 22, 21, 24, 23, 20, 19, 3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8]];
cc:=[10,16,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.54-3.0.2-6-9
// Create group as a permutation group and initialize signature information.
gp_id:=[54,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,9];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 35, 34, 36, 32, 31, 33, 37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 19, 21, 20, 26, 25, 27, 23, 22, 24], [43, 45, 44, 40, 42, 41, 37, 39, 38, 52, 54, 53, 49, 51, 50, 46, 48, 47, 34, 36, 35, 31, 33, 32, 28, 30, 29, 16, 18, 17, 13, 15, 14, 10, 12, 11, 25, 27, 26, 22, 24, 23, 19, 21, 20, 7, 9, 8, 4, 6, 5, 1, 3, 2], [23, 24, 22, 26, 27, 25, 19, 20, 21, 5, 6, 4, 8, 9, 7, 1, 2, 3, 14, 15, 13, 17, 18, 16, 10, 11, 12, 50, 51, 49, 53, 54, 52, 46, 47, 48, 32, 33, 31, 35, 36, 34, 28, 29, 30, 41, 42, 40, 44, 45, 43, 37, 38, 39]];
cc:=[2,8,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 1, 2, 3, 4, 5, 6, 7, 8, 9, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 28, 29, 30, 31, 32, 33, 34, 35, 36];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 35, 34, 36, 32, 31, 33, 37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 19, 21, 20, 26, 25, 27, 23, 22, 24], [45, 44, 43, 42, 41, 40, 39, 38, 37, 54, 53, 52, 51, 50, 49, 48, 47, 46, 36, 35, 34, 33, 32, 31, 30, 29, 28, 18, 17, 16, 15, 14, 13, 12, 11, 10, 27, 26, 25, 24, 23, 22, 21, 20, 19, 9, 8, 7, 6, 5, 4, 3, 2, 1], [24, 22, 23, 27, 25, 26, 20, 21, 19, 6, 4, 5, 9, 7, 8, 2, 3, 1, 15, 13, 14, 18, 16, 17, 11, 12, 10, 51, 49, 50, 54, 52, 53, 47, 48, 46, 33, 31, 32, 36, 34, 35, 29, 30, 28, 42, 40, 41, 45, 43, 44, 38, 39, 37]];
cc:=[2,8,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 1, 2, 3, 4, 5, 6, 7, 8, 9, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 28, 29, 30, 31, 32, 33, 34, 35, 36];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 35, 34, 36, 32, 31, 33, 37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 19, 21, 20, 26, 25, 27, 23, 22, 24], [44, 43, 45, 41, 40, 42, 38, 37, 39, 53, 52, 54, 50, 49, 51, 47, 46, 48, 35, 34, 36, 32, 31, 33, 29, 28, 30, 17, 16, 18, 14, 13, 15, 11, 10, 12, 26, 25, 27, 23, 22, 24, 20, 19, 21, 8, 7, 9, 5, 4, 6, 2, 1, 3], [22, 23, 24, 25, 26, 27, 21, 19, 20, 4, 5, 6, 7, 8, 9, 3, 1, 2, 13, 14, 15, 16, 17, 18, 12, 10, 11, 49, 50, 51, 52, 53, 54, 48, 46, 47, 31, 32, 33, 34, 35, 36, 30, 28, 29, 40, 41, 42, 43, 44, 45, 39, 37, 38]];
cc:=[2,8,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 1, 2, 3, 4, 5, 6, 7, 8, 9, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 28, 29, 30, 31, 32, 33, 34, 35, 36];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 35, 34, 36, 32, 31, 33, 37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 19, 21, 20, 26, 25, 27, 23, 22, 24], [53, 52, 54, 50, 49, 51, 47, 46, 48, 35, 34, 36, 32, 31, 33, 29, 28, 30, 44, 43, 45, 41, 40, 42, 38, 37, 39, 26, 25, 27, 23, 22, 24, 20, 19, 21, 8, 7, 9, 5, 4, 6, 2, 1, 3, 17, 16, 18, 14, 13, 15, 11, 10, 12], [13, 14, 15, 16, 17, 18, 12, 10, 11, 22, 23, 24, 25, 26, 27, 21, 19, 20, 4, 5, 6, 7, 8, 9, 3, 1, 2, 40, 41, 42, 43, 44, 45, 39, 37, 38, 49, 50, 51, 52, 53, 54, 48, 46, 47, 31, 32, 33, 34, 35, 36, 30, 28, 29]];
cc:=[2,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 1, 2, 3, 4, 5, 6, 7, 8, 9, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 28, 29, 30, 31, 32, 33, 34, 35, 36];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 35, 34, 36, 32, 31, 33, 37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 19, 21, 20, 26, 25, 27, 23, 22, 24], [54, 53, 52, 51, 50, 49, 48, 47, 46, 36, 35, 34, 33, 32, 31, 30, 29, 28, 45, 44, 43, 42, 41, 40, 39, 38, 37, 27, 26, 25, 24, 23, 22, 21, 20, 19, 9, 8, 7, 6, 5, 4, 3, 2, 1, 18, 17, 16, 15, 14, 13, 12, 11, 10], [15, 13, 14, 18, 16, 17, 11, 12, 10, 24, 22, 23, 27, 25, 26, 20, 21, 19, 6, 4, 5, 9, 7, 8, 2, 3, 1, 42, 40, 41, 45, 43, 44, 38, 39, 37, 51, 49, 50, 54, 52, 53, 47, 48, 46, 33, 31, 32, 36, 34, 35, 29, 30, 28]];
cc:=[2,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 1, 2, 3, 4, 5, 6, 7, 8, 9, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 28, 29, 30, 31, 32, 33, 34, 35, 36];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 35, 34, 36, 32, 31, 33, 37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 19, 21, 20, 26, 25, 27, 23, 22, 24], [52, 54, 53, 49, 51, 50, 46, 48, 47, 34, 36, 35, 31, 33, 32, 28, 30, 29, 43, 45, 44, 40, 42, 41, 37, 39, 38, 25, 27, 26, 22, 24, 23, 19, 21, 20, 7, 9, 8, 4, 6, 5, 1, 3, 2, 16, 18, 17, 13, 15, 14, 10, 12, 11], [14, 15, 13, 17, 18, 16, 10, 11, 12, 23, 24, 22, 26, 27, 25, 19, 20, 21, 5, 6, 4, 8, 9, 7, 1, 2, 3, 41, 42, 40, 44, 45, 43, 37, 38, 39, 50, 51, 49, 53, 54, 52, 46, 47, 48, 32, 33, 31, 35, 36, 34, 28, 29, 30]];
cc:=[2,9,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 1, 2, 3, 4, 5, 6, 7, 8, 9, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 28, 29, 30, 31, 32, 33, 34, 35, 36];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 7.54-6.0.2-6-9
// Create group as a permutation group and initialize signature information.
gp_id:=[54,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,9];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 35, 34, 36, 32, 31, 33, 37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 19, 21, 20, 26, 25, 27, 23, 22, 24], [44, 43, 45, 40, 42, 41, 39, 38, 37, 53, 52, 54, 49, 51, 50, 48, 47, 46, 35, 34, 36, 31, 33, 32, 30, 29, 28, 17, 16, 18, 13, 15, 14, 12, 11, 10, 26, 25, 27, 22, 24, 23, 21, 20, 19, 8, 7, 9, 4, 6, 5, 3, 2, 1], [24, 22, 23, 26, 27, 25, 21, 19, 20, 6, 4, 5, 8, 9, 7, 3, 1, 2, 15, 13, 14, 17, 18, 16, 12, 10, 11, 51, 49, 50, 53, 54, 52, 48, 46, 47, 33, 31, 32, 35, 36, 34, 30, 28, 29, 42, 40, 41, 44, 45, 43, 39, 37, 38]];
cc:=[2,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 35, 34, 36, 32, 31, 33, 37, 39, 38, 44, 43, 45, 41, 40, 42, 46, 48, 47, 53, 52, 54, 50, 49, 51, 1, 3, 2, 8, 7, 9, 5, 4, 6, 10, 12, 11, 17, 16, 18, 14, 13, 15, 19, 21, 20, 26, 25, 27, 23, 22, 24], [54, 53, 52, 49, 51, 50, 47, 46, 48, 36, 35, 34, 31, 33, 32, 29, 28, 30, 45, 44, 43, 40, 42, 41, 38, 37, 39, 27, 26, 25, 22, 24, 23, 20, 19, 21, 9, 8, 7, 4, 6, 5, 2, 1, 3, 18, 17, 16, 13, 15, 14, 11, 10, 12], [13, 14, 15, 17, 18, 16, 11, 12, 10, 22, 23, 24, 26, 27, 25, 20, 21, 19, 4, 5, 6, 8, 9, 7, 2, 3, 1, 40, 41, 42, 44, 45, 43, 38, 39, 37, 49, 50, 51, 53, 54, 52, 47, 48, 46, 31, 32, 33, 35, 36, 34, 29, 30, 28]];
cc:=[2,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.56-4.0.2-4-28
// Create group as a permutation group and initialize signature information.
gp_id:=[56,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,28];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 43, 49, 48, 47, 46, 45, 44, 50, 56, 55, 54, 53, 52, 51, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23], [47, 46, 45, 44, 43, 49, 48, 54, 53, 52, 51, 50, 56, 55, 40, 39, 38, 37, 36, 42, 41, 33, 32, 31, 30, 29, 35, 34, 19, 18, 17, 16, 15, 21, 20, 26, 25, 24, 23, 22, 28, 27, 12, 11, 10, 9, 8, 14, 13, 5, 4, 3, 2, 1, 7, 6], [25, 26, 27, 28, 22, 23, 24, 18, 19, 20, 21, 15, 16, 17, 4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10, 53, 54, 55, 56, 50, 51, 52, 46, 47, 48, 49, 43, 44, 45, 32, 33, 34, 35, 29, 30, 31, 39, 40, 41, 42, 36, 37, 38]];
cc:=[3,7,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 43, 49, 48, 47, 46, 45, 44, 50, 56, 55, 54, 53, 52, 51, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23], [45, 44, 43, 49, 48, 47, 46, 52, 51, 50, 56, 55, 54, 53, 38, 37, 36, 42, 41, 40, 39, 31, 30, 29, 35, 34, 33, 32, 17, 16, 15, 21, 20, 19, 18, 24, 23, 22, 28, 27, 26, 25, 10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4], [27, 28, 22, 23, 24, 25, 26, 20, 21, 15, 16, 17, 18, 19, 6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12, 55, 56, 50, 51, 52, 53, 54, 48, 49, 43, 44, 45, 46, 47, 34, 35, 29, 30, 31, 32, 33, 41, 42, 36, 37, 38, 39, 40]];
cc:=[3,7,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 43, 49, 48, 47, 46, 45, 44, 50, 56, 55, 54, 53, 52, 51, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23], [49, 48, 47, 46, 45, 44, 43, 56, 55, 54, 53, 52, 51, 50, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 21, 20, 19, 18, 17, 16, 15, 28, 27, 26, 25, 24, 23, 22, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [23, 24, 25, 26, 27, 28, 22, 16, 17, 18, 19, 20, 21, 15, 2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8, 51, 52, 53, 54, 55, 56, 50, 44, 45, 46, 47, 48, 49, 43, 30, 31, 32, 33, 34, 35, 29, 37, 38, 39, 40, 41, 42, 36]];
cc:=[3,7,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 43, 49, 48, 47, 46, 45, 44, 50, 56, 55, 54, 53, 52, 51, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23], [56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 35, 34, 33, 32, 31, 30, 29, 42, 41, 40, 39, 38, 37, 36, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 7, 6, 5, 4, 3, 2, 1, 14, 13, 12, 11, 10, 9, 8], [16, 17, 18, 19, 20, 21, 15, 23, 24, 25, 26, 27, 28, 22, 9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1, 44, 45, 46, 47, 48, 49, 43, 51, 52, 53, 54, 55, 56, 50, 37, 38, 39, 40, 41, 42, 36, 30, 31, 32, 33, 34, 35, 29]];
cc:=[3,8,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 43, 49, 48, 47, 46, 45, 44, 50, 56, 55, 54, 53, 52, 51, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23], [52, 51, 50, 56, 55, 54, 53, 45, 44, 43, 49, 48, 47, 46, 31, 30, 29, 35, 34, 33, 32, 38, 37, 36, 42, 41, 40, 39, 24, 23, 22, 28, 27, 26, 25, 17, 16, 15, 21, 20, 19, 18, 3, 2, 1, 7, 6, 5, 4, 10, 9, 8, 14, 13, 12, 11], [20, 21, 15, 16, 17, 18, 19, 27, 28, 22, 23, 24, 25, 26, 13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5, 48, 49, 43, 44, 45, 46, 47, 55, 56, 50, 51, 52, 53, 54, 41, 42, 36, 37, 38, 39, 40, 34, 35, 29, 30, 31, 32, 33]];
cc:=[3,8,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 43, 49, 48, 47, 46, 45, 44, 50, 56, 55, 54, 53, 52, 51, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23], [54, 53, 52, 51, 50, 56, 55, 47, 46, 45, 44, 43, 49, 48, 33, 32, 31, 30, 29, 35, 34, 40, 39, 38, 37, 36, 42, 41, 26, 25, 24, 23, 22, 28, 27, 19, 18, 17, 16, 15, 21, 20, 5, 4, 3, 2, 1, 7, 6, 12, 11, 10, 9, 8, 14, 13], [18, 19, 20, 21, 15, 16, 17, 25, 26, 27, 28, 22, 23, 24, 11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3, 46, 47, 48, 49, 43, 44, 45, 53, 54, 55, 56, 50, 51, 52, 39, 40, 41, 42, 36, 37, 38, 32, 33, 34, 35, 29, 30, 31]];
cc:=[3,8,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[36, 42, 41, 40, 39, 38, 37, 29, 35, 34, 33, 32, 31, 30, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [49, 48, 47, 46, 45, 44, 43, 56, 55, 54, 53, 52, 51, 50, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 21, 20, 19, 18, 17, 16, 15, 28, 27, 26, 25, 24, 23, 22, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [16, 17, 18, 19, 20, 21, 15, 23, 24, 25, 26, 27, 28, 22, 9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1, 44, 45, 46, 47, 48, 49, 43, 51, 52, 53, 54, 55, 56, 50, 37, 38, 39, 40, 41, 42, 36, 30, 31, 32, 33, 34, 35, 29]];
cc:=[4,7,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[36, 42, 41, 40, 39, 38, 37, 29, 35, 34, 33, 32, 31, 30, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [45, 44, 43, 49, 48, 47, 46, 52, 51, 50, 56, 55, 54, 53, 38, 37, 36, 42, 41, 40, 39, 31, 30, 29, 35, 34, 33, 32, 17, 16, 15, 21, 20, 19, 18, 24, 23, 22, 28, 27, 26, 25, 10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4], [20, 21, 15, 16, 17, 18, 19, 27, 28, 22, 23, 24, 25, 26, 13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5, 48, 49, 43, 44, 45, 46, 47, 55, 56, 50, 51, 52, 53, 54, 41, 42, 36, 37, 38, 39, 40, 34, 35, 29, 30, 31, 32, 33]];
cc:=[4,7,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[36, 42, 41, 40, 39, 38, 37, 29, 35, 34, 33, 32, 31, 30, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [47, 46, 45, 44, 43, 49, 48, 54, 53, 52, 51, 50, 56, 55, 40, 39, 38, 37, 36, 42, 41, 33, 32, 31, 30, 29, 35, 34, 19, 18, 17, 16, 15, 21, 20, 26, 25, 24, 23, 22, 28, 27, 12, 11, 10, 9, 8, 14, 13, 5, 4, 3, 2, 1, 7, 6], [18, 19, 20, 21, 15, 16, 17, 25, 26, 27, 28, 22, 23, 24, 11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3, 46, 47, 48, 49, 43, 44, 45, 53, 54, 55, 56, 50, 51, 52, 39, 40, 41, 42, 36, 37, 38, 32, 33, 34, 35, 29, 30, 31]];
cc:=[4,7,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[36, 42, 41, 40, 39, 38, 37, 29, 35, 34, 33, 32, 31, 30, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [54, 53, 52, 51, 50, 56, 55, 47, 46, 45, 44, 43, 49, 48, 33, 32, 31, 30, 29, 35, 34, 40, 39, 38, 37, 36, 42, 41, 26, 25, 24, 23, 22, 28, 27, 19, 18, 17, 16, 15, 21, 20, 5, 4, 3, 2, 1, 7, 6, 12, 11, 10, 9, 8, 14, 13], [25, 26, 27, 28, 22, 23, 24, 18, 19, 20, 21, 15, 16, 17, 4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10, 53, 54, 55, 56, 50, 51, 52, 46, 47, 48, 49, 43, 44, 45, 32, 33, 34, 35, 29, 30, 31, 39, 40, 41, 42, 36, 37, 38]];
cc:=[4,8,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[36, 42, 41, 40, 39, 38, 37, 29, 35, 34, 33, 32, 31, 30, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [52, 51, 50, 56, 55, 54, 53, 45, 44, 43, 49, 48, 47, 46, 31, 30, 29, 35, 34, 33, 32, 38, 37, 36, 42, 41, 40, 39, 24, 23, 22, 28, 27, 26, 25, 17, 16, 15, 21, 20, 19, 18, 3, 2, 1, 7, 6, 5, 4, 10, 9, 8, 14, 13, 12, 11], [27, 28, 22, 23, 24, 25, 26, 20, 21, 15, 16, 17, 18, 19, 6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12, 55, 56, 50, 51, 52, 53, 54, 48, 49, 43, 44, 45, 46, 47, 34, 35, 29, 30, 31, 32, 33, 41, 42, 36, 37, 38, 39, 40]];
cc:=[4,8,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[36, 42, 41, 40, 39, 38, 37, 29, 35, 34, 33, 32, 31, 30, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 35, 34, 33, 32, 31, 30, 29, 42, 41, 40, 39, 38, 37, 36, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 7, 6, 5, 4, 3, 2, 1, 14, 13, 12, 11, 10, 9, 8], [23, 24, 25, 26, 27, 28, 22, 16, 17, 18, 19, 20, 21, 15, 2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8, 51, 52, 53, 54, 55, 56, 50, 44, 45, 46, 47, 48, 49, 43, 30, 31, 32, 33, 34, 35, 29, 37, 38, 39, 40, 41, 42, 36]];
cc:=[4,8,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.28-1.0.4-4-14
// Create group as a permutation group and initialize signature information.
gp_id:=[28,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,14];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [21, 20, 19, 18, 17, 16, 15, 28, 27, 26, 25, 24, 23, 22, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1, 23, 24, 25, 26, 27, 28, 22, 16, 17, 18, 19, 20, 21, 15]];
cc:=[3,3,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [19, 18, 17, 16, 15, 21, 20, 26, 25, 24, 23, 22, 28, 27, 12, 11, 10, 9, 8, 14, 13, 5, 4, 3, 2, 1, 7, 6], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3, 25, 26, 27, 28, 22, 23, 24, 18, 19, 20, 21, 15, 16, 17]];
cc:=[3,3,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [17, 16, 15, 21, 20, 19, 18, 24, 23, 22, 28, 27, 26, 25, 10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5, 27, 28, 22, 23, 24, 25, 26, 20, 21, 15, 16, 17, 18, 19]];
cc:=[3,3,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 7, 6, 5, 4, 3, 2, 1, 14, 13, 12, 11, 10, 9, 8], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1, 23, 24, 25, 26, 27, 28, 22, 16, 17, 18, 19, 20, 21, 15]];
cc:=[4,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [26, 25, 24, 23, 22, 28, 27, 19, 18, 17, 16, 15, 21, 20, 5, 4, 3, 2, 1, 7, 6, 12, 11, 10, 9, 8, 14, 13], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3, 25, 26, 27, 28, 22, 23, 24, 18, 19, 20, 21, 15, 16, 17]];
cc:=[4,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [24, 23, 22, 28, 27, 26, 25, 17, 16, 15, 21, 20, 19, 18, 3, 2, 1, 7, 6, 5, 4, 10, 9, 8, 14, 13, 12, 11], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5, 27, 28, 22, 23, 24, 25, 26, 20, 21, 15, 16, 17, 18, 19]];
cc:=[4,4,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.28-2.0.2-28-28
// Create group as a permutation group and initialize signature information.
gp_id:=[28,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,28,28];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27], [17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 15, 16, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 2, 1], [27, 28, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11]];
cc:=[2,17,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27], [22, 21, 24, 23, 26, 25, 28, 27, 16, 15, 18, 17, 20, 19, 7, 8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6], [24, 23, 26, 25, 28, 27, 16, 15, 18, 17, 20, 19, 22, 21, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,18,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27], [25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 12, 11, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9], [19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 2, 1, 4, 3]];
cc:=[2,19,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27], [18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 16, 15, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 1, 2], [28, 27, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[2,23,28];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27], [21, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 8, 7, 10, 9, 12, 11, 14, 13, 2, 1, 4, 3, 6, 5], [23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 22, 10, 9, 12, 11, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[2,24,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27], [26, 25, 28, 27, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 16, 15, 18, 17, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4]];
cc:=[2,25,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[56,4];
full_sign:=[0,2,4,28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.21-2.0.3-21-21
// Create group as a permutation group and initialize signature information.
gp_id:=[21,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,21,21];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7], [9, 10, 11, 12, 13, 14, 8, 16, 17, 18, 19, 20, 21, 15, 2, 3, 4, 5, 6, 7, 1], [14, 8, 9, 10, 11, 12, 13, 21, 15, 16, 17, 18, 19, 20, 7, 1, 2, 3, 4, 5, 6]];
cc:=[2,10,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[42,4];
full_sign:=[0,2,6,21];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7], [12, 13, 14, 8, 9, 10, 11, 19, 20, 21, 15, 16, 17, 18, 5, 6, 7, 1, 2, 3, 4], [11, 12, 13, 14, 8, 9, 10, 18, 19, 20, 21, 15, 16, 17, 4, 5, 6, 7, 1, 2, 3]];
cc:=[2,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[42,4];
full_sign:=[0,2,6,21];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7], [10, 11, 12, 13, 14, 8, 9, 17, 18, 19, 20, 21, 15, 16, 3, 4, 5, 6, 7, 1, 2], [13, 14, 8, 9, 10, 11, 12, 20, 21, 15, 16, 17, 18, 19, 6, 7, 1, 2, 3, 4, 5]];
cc:=[2,18,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[42,4];
full_sign:=[0,2,6,21];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [17, 18, 19, 20, 21, 15, 16, 3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9], [20, 21, 15, 16, 17, 18, 19, 6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12]];
cc:=[3,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[42,4];
full_sign:=[0,2,6,21];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [16, 17, 18, 19, 20, 21, 15, 2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8], [21, 15, 16, 17, 18, 19, 20, 7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13]];
cc:=[3,14,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[42,4];
full_sign:=[0,2,6,21];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [19, 20, 21, 15, 16, 17, 18, 5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11], [18, 19, 20, 21, 15, 16, 17, 4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10]];
cc:=[3,16,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[42,4];
full_sign:=[0,2,6,21];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.24-2.0.3-8-24
// Create group as a permutation group and initialize signature information.
gp_id:=[24,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,8,24];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16], [13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9], [24, 23, 21, 22, 16, 15, 13, 14, 20, 19, 17, 18, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[3,9,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16], [15, 16, 14, 13, 19, 20, 18, 17, 23, 24, 22, 21, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [22, 21, 24, 23, 14, 13, 16, 15, 18, 17, 20, 19, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[3,10,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16], [14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10], [23, 24, 22, 21, 15, 16, 14, 13, 19, 20, 18, 17, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[3,11,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16], [16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 19, 20, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[3,12,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 19, 20], [13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9], [20, 19, 17, 18, 24, 23, 21, 22, 16, 15, 13, 14, 5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4]];
cc:=[4,9,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 19, 20], [15, 16, 14, 13, 19, 20, 18, 17, 23, 24, 22, 21, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [18, 17, 20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 8, 7, 5, 6, 12, 11, 9, 10, 4, 3, 1, 2]];
cc:=[4,10,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 19, 20], [14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10], [19, 20, 18, 17, 23, 24, 22, 21, 15, 16, 14, 13, 6, 5, 8, 7, 10, 9, 12, 11, 2, 1, 4, 3]];
cc:=[4,11,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 19, 20], [16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 7, 8, 6, 5, 11, 12, 10, 9, 3, 4, 2, 1]];
cc:=[4,12,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 7.30-4.0.2-15-30
// Create group as a permutation group and initialize signature information.
gp_id:=[30,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,15,30];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 22, 23, 24, 25, 21, 27, 28, 29, 30, 26, 17, 18, 19, 20, 16], [30, 26, 27, 28, 29, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 15, 11, 12, 13, 14, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[2,15,30];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [13, 14, 15, 11, 12, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 28, 29, 30, 26, 27, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22], [24, 25, 21, 22, 23, 29, 30, 26, 27, 28, 19, 20, 16, 17, 18, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3]];
cc:=[2,16,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 5, 1, 2, 3, 4, 25, 21, 22, 23, 24, 30, 26, 27, 28, 29, 20, 16, 17, 18, 19], [27, 28, 29, 30, 26, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[2,17,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 3, 4, 5, 1, 2, 23, 24, 25, 21, 22, 28, 29, 30, 26, 27, 18, 19, 20, 16, 17], [29, 30, 26, 27, 28, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[2,18,29];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 29, 30, 26, 27, 28, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23], [23, 24, 25, 21, 22, 28, 29, 30, 26, 27, 18, 19, 20, 16, 17, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 3, 4, 5, 1, 2]];
cc:=[2,19,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 27, 28, 29, 30, 26, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21], [25, 21, 22, 23, 24, 30, 26, 27, 28, 29, 20, 16, 17, 18, 19, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 5, 1, 2, 3, 4]];
cc:=[2,20,28];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 24, 25, 21, 22, 23, 29, 30, 26, 27, 28, 19, 20, 16, 17, 18], [28, 29, 30, 26, 27, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 13, 14, 15, 11, 12, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7]];
cc:=[2,21,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [15, 11, 12, 13, 14, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 30, 26, 27, 28, 29, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24], [22, 23, 24, 25, 21, 27, 28, 29, 30, 26, 17, 18, 19, 20, 16, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1]];
cc:=[2,22,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.32-10.0.4-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[32,10];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 2, 1, 4, 3, 5, 6, 7, 8, 25, 26, 27, 28, 30, 29, 32, 31, 18, 17, 20, 19, 21, 22, 23, 24], [18, 17, 20, 19, 21, 22, 23, 24, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 2, 1, 7, 8, 5, 6, 16, 15, 14, 13, 12, 11, 10, 9], [27, 28, 25, 26, 31, 32, 29, 30, 23, 24, 21, 22, 20, 19, 18, 17, 9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[7,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 2, 1, 4, 3, 5, 6, 7, 8, 25, 26, 27, 28, 30, 29, 32, 31, 18, 17, 20, 19, 21, 22, 23, 24], [17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [28, 27, 26, 25, 32, 31, 30, 29, 24, 23, 22, 21, 19, 20, 17, 18, 10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[7,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 2, 1, 4, 3, 5, 6, 7, 8, 25, 26, 27, 28, 30, 29, 32, 31, 18, 17, 20, 19, 21, 22, 23, 24], [20, 19, 18, 17, 23, 24, 21, 22, 32, 31, 30, 29, 28, 27, 26, 25, 2, 1, 4, 3, 5, 6, 7, 8, 14, 13, 16, 15, 10, 9, 12, 11], [25, 26, 27, 28, 29, 30, 31, 32, 21, 22, 23, 24, 18, 17, 20, 19, 11, 12, 9, 10, 15, 16, 13, 14, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[7,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 2, 1, 4, 3, 5, 6, 7, 8, 25, 26, 27, 28, 30, 29, 32, 31, 18, 17, 20, 19, 21, 22, 23, 24], [19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [26, 25, 28, 27, 30, 29, 32, 31, 22, 21, 24, 23, 17, 18, 19, 20, 12, 11, 10, 9, 16, 15, 14, 13, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[7,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 16, 15, 14, 13, 4, 3, 2, 1, 7, 8, 5, 6, 27, 28, 25, 26, 32, 31, 30, 29, 20, 19, 18, 17, 23, 24, 21, 22], [18, 17, 20, 19, 21, 22, 23, 24, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 2, 1, 7, 8, 5, 6, 16, 15, 14, 13, 12, 11, 10, 9], [25, 26, 27, 28, 29, 30, 31, 32, 21, 22, 23, 24, 18, 17, 20, 19, 11, 12, 9, 10, 15, 16, 13, 14, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[8,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 16, 15, 14, 13, 4, 3, 2, 1, 7, 8, 5, 6, 27, 28, 25, 26, 32, 31, 30, 29, 20, 19, 18, 17, 23, 24, 21, 22], [17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [26, 25, 28, 27, 30, 29, 32, 31, 22, 21, 24, 23, 17, 18, 19, 20, 12, 11, 10, 9, 16, 15, 14, 13, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[8,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 16, 15, 14, 13, 4, 3, 2, 1, 7, 8, 5, 6, 27, 28, 25, 26, 32, 31, 30, 29, 20, 19, 18, 17, 23, 24, 21, 22], [20, 19, 18, 17, 23, 24, 21, 22, 32, 31, 30, 29, 28, 27, 26, 25, 2, 1, 4, 3, 5, 6, 7, 8, 14, 13, 16, 15, 10, 9, 12, 11], [27, 28, 25, 26, 31, 32, 29, 30, 23, 24, 21, 22, 20, 19, 18, 17, 9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[8,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 16, 15, 14, 13, 4, 3, 2, 1, 7, 8, 5, 6, 27, 28, 25, 26, 32, 31, 30, 29, 20, 19, 18, 17, 23, 24, 21, 22], [19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [28, 27, 26, 25, 32, 31, 30, 29, 24, 23, 22, 21, 19, 20, 17, 18, 10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[8,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.32-11.0.4-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[32,11];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 26, 27, 28, 29, 30, 31, 32, 22, 21, 24, 23, 17, 18, 19, 20, 11, 12, 10, 9, 15, 16, 14, 13, 8, 7, 5, 6, 3, 4, 2, 1], [11, 12, 10, 9, 16, 15, 13, 14, 3, 4, 2, 1, 8, 7, 5, 6, 27, 28, 26, 25, 32, 31, 29, 30, 19, 20, 18, 17, 24, 23, 21, 22], [18, 17, 20, 19, 21, 22, 23, 24, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 1, 2, 7, 8, 6, 5, 16, 15, 13, 14, 12, 11, 9, 10]];
cc:=[8,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[32, 31, 29, 30, 27, 28, 26, 25, 20, 19, 17, 18, 24, 23, 21, 22, 13, 14, 15, 16, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 10, 9, 16, 15, 13, 14, 3, 4, 2, 1, 8, 7, 5, 6, 27, 28, 26, 25, 32, 31, 29, 30, 19, 20, 18, 17, 24, 23, 21, 22], [23, 24, 22, 21, 19, 20, 18, 17, 28, 27, 25, 26, 31, 32, 30, 29, 6, 5, 8, 7, 2, 1, 4, 3, 9, 10, 11, 12, 14, 13, 16, 15]];
cc:=[9,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[26, 25, 28, 27, 30, 29, 32, 31, 21, 22, 23, 24, 18, 17, 20, 19, 12, 11, 9, 10, 16, 15, 13, 14, 7, 8, 6, 5, 4, 3, 1, 2], [11, 12, 10, 9, 16, 15, 13, 14, 3, 4, 2, 1, 8, 7, 5, 6, 27, 28, 26, 25, 32, 31, 29, 30, 19, 20, 18, 17, 24, 23, 21, 22], [17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 2, 1, 8, 7, 5, 6, 15, 16, 14, 13, 11, 12, 10, 9]];
cc:=[10,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[31, 32, 30, 29, 28, 27, 25, 26, 19, 20, 18, 17, 23, 24, 22, 21, 14, 13, 16, 15, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 10, 9, 16, 15, 13, 14, 3, 4, 2, 1, 8, 7, 5, 6, 27, 28, 26, 25, 32, 31, 29, 30, 19, 20, 18, 17, 24, 23, 21, 22], [24, 23, 21, 22, 20, 19, 17, 18, 27, 28, 26, 25, 32, 31, 29, 30, 5, 6, 7, 8, 1, 2, 3, 4, 10, 9, 12, 11, 13, 14, 15, 16]];
cc:=[11,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.42-4.0.2-6-21
// Create group as a permutation group and initialize signature information.
gp_id:=[42,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,21];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16], [31, 30, 29, 35, 34, 33, 32, 38, 37, 36, 42, 41, 40, 39, 24, 23, 22, 28, 27, 26, 25, 10, 9, 8, 14, 13, 12, 11, 17, 16, 15, 21, 20, 19, 18, 3, 2, 1, 7, 6, 5, 4], [20, 21, 15, 16, 17, 18, 19, 6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12, 41, 42, 36, 37, 38, 39, 40, 27, 28, 22, 23, 24, 25, 26, 34, 35, 29, 30, 31, 32, 33]];
cc:=[2,5,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 22, 23, 24, 25, 26, 27, 28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16], [33, 32, 31, 30, 29, 35, 34, 40, 39, 38, 37, 36, 42, 41, 26, 25, 24, 23, 22, 28, 27, 12, 11, 10, 9, 8, 14, 13, 19, 18, 17, 16, 15, 21, 20, 5, 4, 3, 2, 1, 7, 6], [18, 19, 20, 21, 15, 16, 17, 4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10, 39, 40, 41, 42, 36, 37, 38, 25, 26, 27, 28, 22, 23, 24, 32, 33, 34, 35, 29, 30, 31]];
cc:=[2,5,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 22, 23, 24, 25, 26, 27, 28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16], [35, 34, 33, 32, 31, 30, 29, 42, 41, 40, 39, 38, 37, 36, 28, 27, 26, 25, 24, 23, 22, 14, 13, 12, 11, 10, 9, 8, 21, 20, 19, 18, 17, 16, 15, 7, 6, 5, 4, 3, 2, 1], [16, 17, 18, 19, 20, 21, 15, 2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8, 37, 38, 39, 40, 41, 42, 36, 23, 24, 25, 26, 27, 28, 22, 30, 31, 32, 33, 34, 35, 29]];
cc:=[2,5,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 22, 23, 24, 25, 26, 27, 28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16], [42, 41, 40, 39, 38, 37, 36, 28, 27, 26, 25, 24, 23, 22, 35, 34, 33, 32, 31, 30, 29, 21, 20, 19, 18, 17, 16, 15, 7, 6, 5, 4, 3, 2, 1, 14, 13, 12, 11, 10, 9, 8], [9, 10, 11, 12, 13, 14, 8, 16, 17, 18, 19, 20, 21, 15, 2, 3, 4, 5, 6, 7, 1, 30, 31, 32, 33, 34, 35, 29, 37, 38, 39, 40, 41, 42, 36, 23, 24, 25, 26, 27, 28, 22]];
cc:=[2,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 22, 23, 24, 25, 26, 27, 28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16], [40, 39, 38, 37, 36, 42, 41, 26, 25, 24, 23, 22, 28, 27, 33, 32, 31, 30, 29, 35, 34, 19, 18, 17, 16, 15, 21, 20, 5, 4, 3, 2, 1, 7, 6, 12, 11, 10, 9, 8, 14, 13], [11, 12, 13, 14, 8, 9, 10, 18, 19, 20, 21, 15, 16, 17, 4, 5, 6, 7, 1, 2, 3, 32, 33, 34, 35, 29, 30, 31, 39, 40, 41, 42, 36, 37, 38, 25, 26, 27, 28, 22, 23, 24]];
cc:=[2,6,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 22, 23, 24, 25, 26, 27, 28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[22, 28, 27, 26, 25, 24, 23, 29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 15, 21, 20, 19, 18, 17, 16], [38, 37, 36, 42, 41, 40, 39, 24, 23, 22, 28, 27, 26, 25, 31, 30, 29, 35, 34, 33, 32, 17, 16, 15, 21, 20, 19, 18, 3, 2, 1, 7, 6, 5, 4, 10, 9, 8, 14, 13, 12, 11], [13, 14, 8, 9, 10, 11, 12, 20, 21, 15, 16, 17, 18, 19, 6, 7, 1, 2, 3, 4, 5, 34, 35, 29, 30, 31, 32, 33, 41, 42, 36, 37, 38, 39, 40, 27, 28, 22, 23, 24, 25, 26]];
cc:=[2,6,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 22, 23, 24, 25, 26, 27, 28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 7.64-38.0.2-4-16
// Create group as a permutation group and initialize signature information.
gp_id:=[64,38];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,16];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 49, 50, 52, 51, 53, 54, 56, 55, 59, 60, 57, 58, 63, 64, 61, 62, 33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 41, 42, 47, 48, 45, 46], [35, 36, 33, 34, 39, 40, 37, 38, 42, 41, 43, 44, 46, 45, 47, 48, 59, 60, 57, 58, 63, 64, 61, 62, 51, 52, 49, 50, 55, 56, 53, 54, 7, 8, 5, 6, 3, 4, 1, 2, 14, 13, 15, 16, 10, 9, 11, 12, 31, 32, 29, 30, 27, 28, 25, 26, 23, 24, 21, 22, 19, 20, 17, 18], [56, 55, 53, 54, 52, 51, 49, 50, 64, 63, 61, 62, 60, 59, 57, 58, 45, 46, 47, 48, 41, 42, 43, 44, 40, 39, 37, 38, 36, 35, 33, 34, 20, 19, 17, 18, 24, 23, 21, 22, 28, 27, 25, 26, 32, 31, 29, 30, 9, 10, 11, 12, 13, 14, 15, 16, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[5,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 49, 50, 52, 51, 53, 54, 56, 55, 59, 60, 57, 58, 63, 64, 61, 62, 33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 41, 42, 47, 48, 45, 46], [34, 33, 35, 36, 38, 37, 39, 40, 44, 43, 42, 41, 48, 47, 46, 45, 58, 57, 59, 60, 62, 61, 63, 64, 50, 49, 51, 52, 54, 53, 55, 56, 6, 5, 7, 8, 2, 1, 3, 4, 16, 15, 14, 13, 12, 11, 10, 9, 30, 29, 31, 32, 26, 25, 27, 28, 22, 21, 23, 24, 18, 17, 19, 20], [54, 53, 56, 55, 50, 49, 52, 51, 62, 61, 64, 63, 58, 57, 60, 59, 48, 47, 45, 46, 44, 43, 41, 42, 38, 37, 40, 39, 34, 33, 36, 35, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 12, 11, 9, 10, 16, 15, 13, 14, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[5,9,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 49, 50, 52, 51, 53, 54, 56, 55, 59, 60, 57, 58, 63, 64, 61, 62, 33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 41, 42, 47, 48, 45, 46], [36, 35, 34, 33, 40, 39, 38, 37, 41, 42, 44, 43, 45, 46, 48, 47, 60, 59, 58, 57, 64, 63, 62, 61, 52, 51, 50, 49, 56, 55, 54, 53, 8, 7, 6, 5, 4, 3, 2, 1, 13, 14, 16, 15, 9, 10, 12, 11, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17], [55, 56, 54, 53, 51, 52, 50, 49, 63, 64, 62, 61, 59, 60, 58, 57, 46, 45, 48, 47, 42, 41, 44, 43, 39, 40, 38, 37, 35, 36, 34, 33, 19, 20, 18, 17, 23, 24, 22, 21, 27, 28, 26, 25, 31, 32, 30, 29, 10, 9, 12, 11, 14, 13, 16, 15, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[5,9,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 49, 50, 52, 51, 53, 54, 56, 55, 59, 60, 57, 58, 63, 64, 61, 62, 33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 41, 42, 47, 48, 45, 46], [33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 41, 42, 47, 48, 45, 46, 57, 58, 60, 59, 61, 62, 64, 63, 49, 50, 52, 51, 53, 54, 56, 55, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60, 47, 48, 46, 45, 43, 44, 42, 41, 37, 38, 39, 40, 33, 34, 35, 36, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 11, 12, 10, 9, 15, 16, 14, 13, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[5,9,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 49, 50, 52, 51, 53, 54, 56, 55, 59, 60, 57, 58, 63, 64, 61, 62, 33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 41, 42, 47, 48, 45, 46], [37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 45, 46, 43, 44, 41, 42, 61, 62, 64, 63, 57, 58, 60, 59, 53, 54, 56, 55, 49, 50, 52, 51, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 43, 44, 42, 41, 47, 48, 46, 45, 33, 34, 35, 36, 37, 38, 39, 40, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 15, 16, 14, 13, 11, 12, 10, 9, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[5,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 49, 50, 52, 51, 53, 54, 56, 55, 59, 60, 57, 58, 63, 64, 61, 62, 33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 41, 42, 47, 48, 45, 46], [40, 39, 38, 37, 36, 35, 34, 33, 45, 46, 48, 47, 41, 42, 44, 43, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 4, 3, 2, 1, 8, 7, 6, 5, 9, 10, 12, 11, 13, 14, 16, 15, 28, 27, 26, 25, 32, 31, 30, 29, 20, 19, 18, 17, 24, 23, 22, 21], [51, 52, 50, 49, 55, 56, 54, 53, 59, 60, 58, 57, 63, 64, 62, 61, 42, 41, 44, 43, 46, 45, 48, 47, 35, 36, 34, 33, 39, 40, 38, 37, 23, 24, 22, 21, 19, 20, 18, 17, 31, 32, 30, 29, 27, 28, 26, 25, 14, 13, 16, 15, 10, 9, 12, 11, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[5,10,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 49, 50, 52, 51, 53, 54, 56, 55, 59, 60, 57, 58, 63, 64, 61, 62, 33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 41, 42, 47, 48, 45, 46], [38, 37, 39, 40, 34, 33, 35, 36, 48, 47, 46, 45, 44, 43, 42, 41, 62, 61, 63, 64, 58, 57, 59, 60, 54, 53, 55, 56, 50, 49, 51, 52, 2, 1, 3, 4, 6, 5, 7, 8, 12, 11, 10, 9, 16, 15, 14, 13, 26, 25, 27, 28, 30, 29, 31, 32, 18, 17, 19, 20, 22, 21, 23, 24], [50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63, 44, 43, 41, 42, 48, 47, 45, 46, 34, 33, 36, 35, 38, 37, 40, 39, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27, 16, 15, 13, 14, 12, 11, 9, 10, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[5,10,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 49, 50, 52, 51, 53, 54, 56, 55, 59, 60, 57, 58, 63, 64, 61, 62, 33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 41, 42, 47, 48, 45, 46], [39, 40, 37, 38, 35, 36, 33, 34, 46, 45, 47, 48, 42, 41, 43, 44, 63, 64, 61, 62, 59, 60, 57, 58, 55, 56, 53, 54, 51, 52, 49, 50, 3, 4, 1, 2, 7, 8, 5, 6, 10, 9, 11, 12, 14, 13, 15, 16, 27, 28, 25, 26, 31, 32, 29, 30, 19, 20, 17, 18, 23, 24, 21, 22], [52, 51, 49, 50, 56, 55, 53, 54, 60, 59, 57, 58, 64, 63, 61, 62, 41, 42, 43, 44, 45, 46, 47, 48, 36, 35, 33, 34, 40, 39, 37, 38, 24, 23, 21, 22, 20, 19, 17, 18, 32, 31, 29, 30, 28, 27, 25, 26, 13, 14, 15, 16, 9, 10, 11, 12, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[5,10,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10, 53, 54, 56, 55, 49, 50, 52, 51, 63, 64, 61, 62, 59, 60, 57, 58, 37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 45, 46, 43, 44, 41, 42], [33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 41, 42, 47, 48, 45, 46, 57, 58, 60, 59, 61, 62, 64, 63, 49, 50, 52, 51, 53, 54, 56, 55, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 43, 44, 42, 41, 47, 48, 46, 45, 33, 34, 35, 36, 37, 38, 39, 40, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 15, 16, 14, 13, 11, 12, 10, 9, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[6,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10, 53, 54, 56, 55, 49, 50, 52, 51, 63, 64, 61, 62, 59, 60, 57, 58, 37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 45, 46, 43, 44, 41, 42], [36, 35, 34, 33, 40, 39, 38, 37, 41, 42, 44, 43, 45, 46, 48, 47, 60, 59, 58, 57, 64, 63, 62, 61, 52, 51, 50, 49, 56, 55, 54, 53, 8, 7, 6, 5, 4, 3, 2, 1, 13, 14, 16, 15, 9, 10, 12, 11, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17], [51, 52, 50, 49, 55, 56, 54, 53, 59, 60, 58, 57, 63, 64, 62, 61, 42, 41, 44, 43, 46, 45, 48, 47, 35, 36, 34, 33, 39, 40, 38, 37, 23, 24, 22, 21, 19, 20, 18, 17, 31, 32, 30, 29, 27, 28, 26, 25, 14, 13, 16, 15, 10, 9, 12, 11, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[6,9,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10, 53, 54, 56, 55, 49, 50, 52, 51, 63, 64, 61, 62, 59, 60, 57, 58, 37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 45, 46, 43, 44, 41, 42], [34, 33, 35, 36, 38, 37, 39, 40, 44, 43, 42, 41, 48, 47, 46, 45, 58, 57, 59, 60, 62, 61, 63, 64, 50, 49, 51, 52, 54, 53, 55, 56, 6, 5, 7, 8, 2, 1, 3, 4, 16, 15, 14, 13, 12, 11, 10, 9, 30, 29, 31, 32, 26, 25, 27, 28, 22, 21, 23, 24, 18, 17, 19, 20], [50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63, 44, 43, 41, 42, 48, 47, 45, 46, 34, 33, 36, 35, 38, 37, 40, 39, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27, 16, 15, 13, 14, 12, 11, 9, 10, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[6,9,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10, 53, 54, 56, 55, 49, 50, 52, 51, 63, 64, 61, 62, 59, 60, 57, 58, 37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 45, 46, 43, 44, 41, 42], [35, 36, 33, 34, 39, 40, 37, 38, 42, 41, 43, 44, 46, 45, 47, 48, 59, 60, 57, 58, 63, 64, 61, 62, 51, 52, 49, 50, 55, 56, 53, 54, 7, 8, 5, 6, 3, 4, 1, 2, 14, 13, 15, 16, 10, 9, 11, 12, 31, 32, 29, 30, 27, 28, 25, 26, 23, 24, 21, 22, 19, 20, 17, 18], [52, 51, 49, 50, 56, 55, 53, 54, 60, 59, 57, 58, 64, 63, 61, 62, 41, 42, 43, 44, 45, 46, 47, 48, 36, 35, 33, 34, 40, 39, 37, 38, 24, 23, 21, 22, 20, 19, 17, 18, 32, 31, 29, 30, 28, 27, 25, 26, 13, 14, 15, 16, 9, 10, 11, 12, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[6,9,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10, 53, 54, 56, 55, 49, 50, 52, 51, 63, 64, 61, 62, 59, 60, 57, 58, 37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 45, 46, 43, 44, 41, 42], [39, 40, 37, 38, 35, 36, 33, 34, 46, 45, 47, 48, 42, 41, 43, 44, 63, 64, 61, 62, 59, 60, 57, 58, 55, 56, 53, 54, 51, 52, 49, 50, 3, 4, 1, 2, 7, 8, 5, 6, 10, 9, 11, 12, 14, 13, 15, 16, 27, 28, 25, 26, 31, 32, 29, 30, 19, 20, 17, 18, 23, 24, 21, 22], [56, 55, 53, 54, 52, 51, 49, 50, 64, 63, 61, 62, 60, 59, 57, 58, 45, 46, 47, 48, 41, 42, 43, 44, 40, 39, 37, 38, 36, 35, 33, 34, 20, 19, 17, 18, 24, 23, 21, 22, 28, 27, 25, 26, 32, 31, 29, 30, 9, 10, 11, 12, 13, 14, 15, 16, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[6,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10, 53, 54, 56, 55, 49, 50, 52, 51, 63, 64, 61, 62, 59, 60, 57, 58, 37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 45, 46, 43, 44, 41, 42], [38, 37, 39, 40, 34, 33, 35, 36, 48, 47, 46, 45, 44, 43, 42, 41, 62, 61, 63, 64, 58, 57, 59, 60, 54, 53, 55, 56, 50, 49, 51, 52, 2, 1, 3, 4, 6, 5, 7, 8, 12, 11, 10, 9, 16, 15, 14, 13, 26, 25, 27, 28, 30, 29, 31, 32, 18, 17, 19, 20, 22, 21, 23, 24], [54, 53, 56, 55, 50, 49, 52, 51, 62, 61, 64, 63, 58, 57, 60, 59, 48, 47, 45, 46, 44, 43, 41, 42, 38, 37, 40, 39, 34, 33, 36, 35, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 12, 11, 9, 10, 16, 15, 13, 14, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[6,10,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10, 53, 54, 56, 55, 49, 50, 52, 51, 63, 64, 61, 62, 59, 60, 57, 58, 37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 45, 46, 43, 44, 41, 42], [40, 39, 38, 37, 36, 35, 34, 33, 45, 46, 48, 47, 41, 42, 44, 43, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 4, 3, 2, 1, 8, 7, 6, 5, 9, 10, 12, 11, 13, 14, 16, 15, 28, 27, 26, 25, 32, 31, 30, 29, 20, 19, 18, 17, 24, 23, 22, 21], [55, 56, 54, 53, 51, 52, 50, 49, 63, 64, 62, 61, 59, 60, 58, 57, 46, 45, 48, 47, 42, 41, 44, 43, 39, 40, 38, 37, 35, 36, 34, 33, 19, 20, 18, 17, 23, 24, 22, 21, 27, 28, 26, 25, 31, 32, 30, 29, 10, 9, 12, 11, 14, 13, 16, 15, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[6,10,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10, 53, 54, 56, 55, 49, 50, 52, 51, 63, 64, 61, 62, 59, 60, 57, 58, 37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 45, 46, 43, 44, 41, 42], [37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 45, 46, 43, 44, 41, 42, 61, 62, 64, 63, 57, 58, 60, 59, 53, 54, 56, 55, 49, 50, 52, 51, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60, 47, 48, 46, 45, 43, 44, 42, 41, 37, 38, 39, 40, 33, 34, 35, 36, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 11, 12, 10, 9, 15, 16, 14, 13, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[6,10,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.64-41.0.2-4-16
// Create group as a permutation group and initialize signature information.
gp_id:=[64,41];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,16];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 22, 21, 23, 24, 28, 27, 26, 25, 31, 32, 29, 30, 1, 2, 4, 3, 6, 5, 7, 8, 12, 11, 10, 9, 15, 16, 13, 14, 49, 50, 52, 51, 54, 53, 55, 56, 60, 59, 58, 57, 63, 64, 61, 62, 33, 34, 36, 35, 38, 37, 39, 40, 44, 43, 42, 41, 47, 48, 45, 46], [36, 35, 34, 33, 40, 39, 38, 37, 41, 42, 44, 43, 45, 46, 48, 47, 60, 59, 58, 57, 64, 63, 62, 61, 51, 52, 49, 50, 55, 56, 53, 54, 8, 7, 6, 5, 4, 3, 2, 1, 13, 14, 16, 15, 9, 10, 12, 11, 31, 32, 29, 30, 27, 28, 25, 26, 24, 23, 22, 21, 20, 19, 18, 17], [56, 55, 53, 54, 51, 52, 50, 49, 63, 64, 62, 61, 60, 59, 57, 58, 46, 45, 48, 47, 41, 42, 43, 44, 39, 40, 38, 37, 36, 35, 33, 34, 19, 20, 18, 17, 24, 23, 21, 22, 28, 27, 25, 26, 31, 32, 30, 29, 10, 9, 12, 11, 13, 14, 15, 16, 3, 4, 2, 1, 8, 7, 5, 6]];
cc:=[4,8,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 22, 21, 23, 24, 28, 27, 26, 25, 31, 32, 29, 30, 1, 2, 4, 3, 6, 5, 7, 8, 12, 11, 10, 9, 15, 16, 13, 14, 49, 50, 52, 51, 54, 53, 55, 56, 60, 59, 58, 57, 63, 64, 61, 62, 33, 34, 36, 35, 38, 37, 39, 40, 44, 43, 42, 41, 47, 48, 45, 46], [33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 41, 42, 47, 48, 45, 46, 57, 58, 60, 59, 61, 62, 64, 63, 50, 49, 51, 52, 54, 53, 55, 56, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10, 30, 29, 31, 32, 26, 25, 27, 28, 21, 22, 24, 23, 17, 18, 20, 19], [54, 53, 56, 55, 49, 50, 51, 52, 61, 62, 63, 64, 58, 57, 60, 59, 47, 48, 46, 45, 44, 43, 41, 42, 37, 38, 39, 40, 34, 33, 36, 35, 17, 18, 19, 20, 22, 21, 24, 23, 26, 25, 28, 27, 29, 30, 31, 32, 11, 12, 10, 9, 16, 15, 13, 14, 1, 2, 3, 4, 6, 5, 8, 7]];
cc:=[4,8,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 22, 21, 23, 24, 28, 27, 26, 25, 31, 32, 29, 30, 1, 2, 4, 3, 6, 5, 7, 8, 12, 11, 10, 9, 15, 16, 13, 14, 49, 50, 52, 51, 54, 53, 55, 56, 60, 59, 58, 57, 63, 64, 61, 62, 33, 34, 36, 35, 38, 37, 39, 40, 44, 43, 42, 41, 47, 48, 45, 46], [37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 45, 46, 43, 44, 41, 42, 61, 62, 64, 63, 57, 58, 60, 59, 54, 53, 55, 56, 50, 49, 51, 52, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14, 26, 25, 27, 28, 30, 29, 31, 32, 17, 18, 20, 19, 21, 22, 24, 23], [49, 50, 51, 52, 54, 53, 56, 55, 58, 57, 60, 59, 61, 62, 63, 64, 44, 43, 41, 42, 47, 48, 46, 45, 34, 33, 36, 35, 37, 38, 39, 40, 22, 21, 24, 23, 17, 18, 19, 20, 29, 30, 31, 32, 26, 25, 28, 27, 16, 15, 13, 14, 11, 12, 10, 9, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[4,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 20, 19, 22, 21, 23, 24, 28, 27, 26, 25, 31, 32, 29, 30, 1, 2, 4, 3, 6, 5, 7, 8, 12, 11, 10, 9, 15, 16, 13, 14, 49, 50, 52, 51, 54, 53, 55, 56, 60, 59, 58, 57, 63, 64, 61, 62, 33, 34, 36, 35, 38, 37, 39, 40, 44, 43, 42, 41, 47, 48, 45, 46], [40, 39, 38, 37, 36, 35, 34, 33, 45, 46, 48, 47, 41, 42, 44, 43, 64, 63, 62, 61, 60, 59, 58, 57, 55, 56, 53, 54, 51, 52, 49, 50, 4, 3, 2, 1, 8, 7, 6, 5, 9, 10, 12, 11, 13, 14, 16, 15, 27, 28, 25, 26, 31, 32, 29, 30, 20, 19, 18, 17, 24, 23, 22, 21], [51, 52, 50, 49, 56, 55, 53, 54, 60, 59, 57, 58, 63, 64, 62, 61, 41, 42, 43, 44, 46, 45, 48, 47, 36, 35, 33, 34, 39, 40, 38, 37, 24, 23, 21, 22, 19, 20, 18, 17, 31, 32, 30, 29, 28, 27, 25, 26, 13, 14, 15, 16, 10, 9, 12, 11, 8, 7, 5, 6, 3, 4, 2, 1]];
cc:=[4,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.144-127.0.2-3-12
// Create group as a permutation group and initialize signature information.
gp_id:=[144,127];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,12];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[79, 80, 83, 84, 81, 82, 74, 73, 78, 77, 76, 75, 91, 92, 95, 96, 93, 94, 86, 85, 90, 89, 88, 87, 103, 104, 107, 108, 105, 106, 98, 97, 102, 101, 100, 99, 115, 116, 119, 120, 117, 118, 110, 109, 114, 113, 112, 111, 127, 128, 131, 132, 129, 130, 122, 121, 126, 125, 124, 123, 139, 140, 143, 144, 141, 142, 134, 133, 138, 137, 136, 135, 8, 7, 12, 11, 10, 9, 1, 2, 5, 6, 3, 4, 20, 19, 24, 23, 22, 21, 13, 14, 17, 18, 15, 16, 32, 31, 36, 35, 34, 33, 25, 26, 29, 30, 27, 28, 44, 43, 48, 47, 46, 45, 37, 38, 41, 42, 39, 40, 56, 55, 60, 59, 58, 57, 49, 50, 53, 54, 51, 52, 68, 67, 72, 71, 70, 69, 61, 62, 65, 66, 63, 64], [27, 28, 29, 30, 25, 26, 39, 40, 41, 42, 37, 38, 45, 46, 47, 48, 43, 44, 33, 34, 35, 36, 31, 32, 51, 52, 53, 54, 49, 50, 63, 64, 65, 66, 61, 62, 69, 70, 71, 72, 67, 68, 57, 58, 59, 60, 55, 56, 3, 4, 5, 6, 1, 2, 15, 16, 17, 18, 13, 14, 21, 22, 23, 24, 19, 20, 9, 10, 11, 12, 7, 8, 99, 100, 101, 102, 97, 98, 111, 112, 113, 114, 109, 110, 117, 118, 119, 120, 115, 116, 105, 106, 107, 108, 103, 104, 123, 124, 125, 126, 121, 122, 135, 136, 137, 138, 133, 134, 141, 142, 143, 144, 139, 140, 129, 130, 131, 132, 127, 128, 75, 76, 77, 78, 73, 74, 87, 88, 89, 90, 85, 86, 93, 94, 95, 96, 91, 92, 81, 82, 83, 84, 79, 80], [129, 130, 127, 128, 131, 132, 136, 135, 134, 133, 138, 137, 124, 123, 122, 121, 126, 125, 141, 142, 139, 140, 143, 144, 81, 82, 79, 80, 83, 84, 88, 87, 86, 85, 90, 89, 76, 75, 74, 73, 78, 77, 93, 94, 91, 92, 95, 96, 105, 106, 103, 104, 107, 108, 112, 111, 110, 109, 114, 113, 100, 99, 98, 97, 102, 101, 117, 118, 115, 116, 119, 120, 58, 57, 56, 55, 60, 59, 63, 64, 61, 62, 65, 66, 51, 52, 49, 50, 53, 54, 70, 69, 68, 67, 72, 71, 10, 9, 8, 7, 12, 11, 15, 16, 13, 14, 17, 18, 3, 4, 1, 2, 5, 6, 22, 21, 20, 19, 24, 23, 34, 33, 32, 31, 36, 35, 39, 40, 37, 38, 41, 42, 27, 28, 25, 26, 29, 30, 46, 45, 44, 43, 48, 47]];
cc:=[3,7,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[79, 80, 83, 84, 81, 82, 74, 73, 78, 77, 76, 75, 91, 92, 95, 96, 93, 94, 86, 85, 90, 89, 88, 87, 103, 104, 107, 108, 105, 106, 98, 97, 102, 101, 100, 99, 115, 116, 119, 120, 117, 118, 110, 109, 114, 113, 112, 111, 127, 128, 131, 132, 129, 130, 122, 121, 126, 125, 124, 123, 139, 140, 143, 144, 141, 142, 134, 133, 138, 137, 136, 135, 8, 7, 12, 11, 10, 9, 1, 2, 5, 6, 3, 4, 20, 19, 24, 23, 22, 21, 13, 14, 17, 18, 15, 16, 32, 31, 36, 35, 34, 33, 25, 26, 29, 30, 27, 28, 44, 43, 48, 47, 46, 45, 37, 38, 41, 42, 39, 40, 56, 55, 60, 59, 58, 57, 49, 50, 53, 54, 51, 52, 68, 67, 72, 71, 70, 69, 61, 62, 65, 66, 63, 64], [34, 33, 36, 35, 32, 31, 46, 45, 48, 47, 44, 43, 39, 40, 41, 42, 37, 38, 27, 28, 29, 30, 25, 26, 58, 57, 60, 59, 56, 55, 70, 69, 72, 71, 68, 67, 63, 64, 65, 66, 61, 62, 51, 52, 53, 54, 49, 50, 10, 9, 12, 11, 8, 7, 22, 21, 24, 23, 20, 19, 15, 16, 17, 18, 13, 14, 3, 4, 5, 6, 1, 2, 106, 105, 108, 107, 104, 103, 118, 117, 120, 119, 116, 115, 111, 112, 113, 114, 109, 110, 99, 100, 101, 102, 97, 98, 130, 129, 132, 131, 128, 127, 142, 141, 144, 143, 140, 139, 135, 136, 137, 138, 133, 134, 123, 124, 125, 126, 121, 122, 82, 81, 84, 83, 80, 79, 94, 93, 96, 95, 92, 91, 87, 88, 89, 90, 85, 86, 75, 76, 77, 78, 73, 74], [136, 135, 134, 133, 138, 137, 130, 129, 128, 127, 132, 131, 141, 142, 139, 140, 143, 144, 123, 124, 121, 122, 125, 126, 88, 87, 86, 85, 90, 89, 82, 81, 80, 79, 84, 83, 93, 94, 91, 92, 95, 96, 75, 76, 73, 74, 77, 78, 112, 111, 110, 109, 114, 113, 106, 105, 104, 103, 108, 107, 117, 118, 115, 116, 119, 120, 99, 100, 97, 98, 101, 102, 63, 64, 61, 62, 65, 66, 57, 58, 55, 56, 59, 60, 70, 69, 68, 67, 72, 71, 52, 51, 50, 49, 54, 53, 15, 16, 13, 14, 17, 18, 9, 10, 7, 8, 11, 12, 22, 21, 20, 19, 24, 23, 4, 3, 2, 1, 6, 5, 39, 40, 37, 38, 41, 42, 33, 34, 31, 32, 35, 36, 46, 45, 44, 43, 48, 47, 28, 27, 26, 25, 30, 29]];
cc:=[3,7,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[79, 80, 83, 84, 81, 82, 74, 73, 78, 77, 76, 75, 91, 92, 95, 96, 93, 94, 86, 85, 90, 89, 88, 87, 103, 104, 107, 108, 105, 106, 98, 97, 102, 101, 100, 99, 115, 116, 119, 120, 117, 118, 110, 109, 114, 113, 112, 111, 127, 128, 131, 132, 129, 130, 122, 121, 126, 125, 124, 123, 139, 140, 143, 144, 141, 142, 134, 133, 138, 137, 136, 135, 8, 7, 12, 11, 10, 9, 1, 2, 5, 6, 3, 4, 20, 19, 24, 23, 22, 21, 13, 14, 17, 18, 15, 16, 32, 31, 36, 35, 34, 33, 25, 26, 29, 30, 27, 28, 44, 43, 48, 47, 46, 45, 37, 38, 41, 42, 39, 40, 56, 55, 60, 59, 58, 57, 49, 50, 53, 54, 51, 52, 68, 67, 72, 71, 70, 69, 61, 62, 65, 66, 63, 64], [71, 72, 67, 68, 69, 70, 54, 53, 50, 49, 52, 51, 65, 66, 61, 62, 63, 64, 60, 59, 56, 55, 58, 57, 23, 24, 19, 20, 21, 22, 6, 5, 2, 1, 4, 3, 17, 18, 13, 14, 15, 16, 12, 11, 8, 7, 10, 9, 47, 48, 43, 44, 45, 46, 30, 29, 26, 25, 28, 27, 41, 42, 37, 38, 39, 40, 36, 35, 32, 31, 34, 33, 143, 144, 139, 140, 141, 142, 126, 125, 122, 121, 124, 123, 137, 138, 133, 134, 135, 136, 132, 131, 128, 127, 130, 129, 95, 96, 91, 92, 93, 94, 78, 77, 74, 73, 76, 75, 89, 90, 85, 86, 87, 88, 84, 83, 80, 79, 82, 81, 119, 120, 115, 116, 117, 118, 102, 101, 98, 97, 100, 99, 113, 114, 109, 110, 111, 112, 108, 107, 104, 103, 106, 105], [101, 102, 99, 100, 97, 98, 113, 114, 111, 112, 109, 110, 119, 120, 117, 118, 115, 116, 107, 108, 105, 106, 103, 104, 125, 126, 123, 124, 121, 122, 137, 138, 135, 136, 133, 134, 143, 144, 141, 142, 139, 140, 131, 132, 129, 130, 127, 128, 77, 78, 75, 76, 73, 74, 89, 90, 87, 88, 85, 86, 95, 96, 93, 94, 91, 92, 83, 84, 81, 82, 79, 80, 30, 29, 28, 27, 26, 25, 42, 41, 40, 39, 38, 37, 48, 47, 46, 45, 44, 43, 36, 35, 34, 33, 32, 31, 54, 53, 52, 51, 50, 49, 66, 65, 64, 63, 62, 61, 72, 71, 70, 69, 68, 67, 60, 59, 58, 57, 56, 55, 6, 5, 4, 3, 2, 1, 18, 17, 16, 15, 14, 13, 24, 23, 22, 21, 20, 19, 12, 11, 10, 9, 8, 7]];
cc:=[3,8,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[79, 80, 83, 84, 81, 82, 74, 73, 78, 77, 76, 75, 91, 92, 95, 96, 93, 94, 86, 85, 90, 89, 88, 87, 103, 104, 107, 108, 105, 106, 98, 97, 102, 101, 100, 99, 115, 116, 119, 120, 117, 118, 110, 109, 114, 113, 112, 111, 127, 128, 131, 132, 129, 130, 122, 121, 126, 125, 124, 123, 139, 140, 143, 144, 141, 142, 134, 133, 138, 137, 136, 135, 8, 7, 12, 11, 10, 9, 1, 2, 5, 6, 3, 4, 20, 19, 24, 23, 22, 21, 13, 14, 17, 18, 15, 16, 32, 31, 36, 35, 34, 33, 25, 26, 29, 30, 27, 28, 44, 43, 48, 47, 46, 45, 37, 38, 41, 42, 39, 40, 56, 55, 60, 59, 58, 57, 49, 50, 53, 54, 51, 52, 68, 67, 72, 71, 70, 69, 61, 62, 65, 66, 63, 64], [53, 54, 49, 50, 51, 52, 71, 72, 67, 68, 69, 70, 59, 60, 55, 56, 57, 58, 65, 66, 61, 62, 63, 64, 5, 6, 1, 2, 3, 4, 23, 24, 19, 20, 21, 22, 11, 12, 7, 8, 9, 10, 17, 18, 13, 14, 15, 16, 29, 30, 25, 26, 27, 28, 47, 48, 43, 44, 45, 46, 35, 36, 31, 32, 33, 34, 41, 42, 37, 38, 39, 40, 125, 126, 121, 122, 123, 124, 143, 144, 139, 140, 141, 142, 131, 132, 127, 128, 129, 130, 137, 138, 133, 134, 135, 136, 77, 78, 73, 74, 75, 76, 95, 96, 91, 92, 93, 94, 83, 84, 79, 80, 81, 82, 89, 90, 85, 86, 87, 88, 101, 102, 97, 98, 99, 100, 119, 120, 115, 116, 117, 118, 107, 108, 103, 104, 105, 106, 113, 114, 109, 110, 111, 112], [107, 108, 105, 106, 103, 104, 119, 120, 117, 118, 115, 116, 114, 113, 112, 111, 110, 109, 102, 101, 100, 99, 98, 97, 131, 132, 129, 130, 127, 128, 143, 144, 141, 142, 139, 140, 138, 137, 136, 135, 134, 133, 126, 125, 124, 123, 122, 121, 83, 84, 81, 82, 79, 80, 95, 96, 93, 94, 91, 92, 90, 89, 88, 87, 86, 85, 78, 77, 76, 75, 74, 73, 36, 35, 34, 33, 32, 31, 48, 47, 46, 45, 44, 43, 41, 42, 39, 40, 37, 38, 29, 30, 27, 28, 25, 26, 60, 59, 58, 57, 56, 55, 72, 71, 70, 69, 68, 67, 65, 66, 63, 64, 61, 62, 53, 54, 51, 52, 49, 50, 12, 11, 10, 9, 8, 7, 24, 23, 22, 21, 20, 19, 17, 18, 15, 16, 13, 14, 5, 6, 3, 4, 1, 2]];
cc:=[3,8,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.504-156.0.2-3-7
// Create group as a permutation group and initialize signature information.
gp_id:=[504,156];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,7];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[33, 263, 139, 165, 493, 37, 257, 153, 368, 51, 380, 301, 228, 160, 19, 374, 252, 143, 15, 155, 364, 462, 115, 55, 194, 486, 278, 60, 209, 94, 417, 268, 1, 68, 405, 305, 6, 488, 274, 120, 295, 46, 455, 135, 179, 42, 290, 472, 354, 385, 10, 320, 288, 98, 24, 110, 175, 327, 214, 28, 77, 315, 476, 429, 389, 265, 435, 34, 208, 419, 450, 341, 105, 335, 211, 237, 61, 109, 329, 225, 440, 123, 452, 373, 300, 232, 91, 446, 324, 215, 87, 227, 436, 30, 187, 127, 266, 54, 350, 132, 281, 166, 489, 340, 73, 140, 477, 377, 78, 56, 346, 192, 367, 118, 23, 207, 251, 114, 362, 40, 426, 457, 82, 392, 360, 170, 96, 182, 247, 399, 286, 100, 149, 387, 44, 501, 461, 337, 3, 106, 280, 491, 18, 413, 177, 407, 283, 309, 133, 181, 401, 297, 8, 195, 20, 445, 372, 304, 163, 14, 396, 287, 159, 299, 4, 102, 259, 199, 338, 126, 422, 204, 353, 238, 57, 412, 145, 212, 45, 449, 150, 128, 418, 264, 439, 190, 95, 279, 323, 186, 434, 112, 498, 25, 154, 464, 432, 242, 168, 254, 319, 471, 358, 172, 221, 459, 116, 69, 29, 409, 75, 178, 352, 59, 90, 485, 249, 479, 355, 381, 205, 253, 473, 369, 80, 267, 92, 13, 444, 376, 235, 86, 468, 359, 231, 371, 76, 174, 331, 271, 410, 198, 494, 276, 425, 310, 129, 484, 217, 284, 117, 17, 222, 200, 490, 336, 7, 262, 167, 351, 395, 258, 2, 184, 66, 97, 226, 32, 504, 314, 240, 326, 391, 39, 430, 244, 293, 27, 188, 141, 101, 481, 147, 250, 424, 131, 162, 53, 321, 47, 427, 453, 277, 325, 41, 441, 152, 339, 164, 85, 12, 448, 307, 158, 36, 431, 303, 443, 148, 246, 403, 343, 482, 270, 62, 348, 497, 382, 201, 52, 289, 356, 189, 89, 294, 272, 58, 408, 79, 334, 239, 423, 467, 330, 74, 256, 138, 169, 298, 104, 72, 386, 312, 398, 463, 111, 502, 316, 365, 99, 260, 213, 173, 49, 219, 322, 496, 203, 234, 125, 393, 119, 499, 21, 349, 397, 113, 9, 224, 411, 236, 157, 84, 16, 379, 230, 108, 503, 375, 11, 220, 318, 475, 415, 50, 342, 134, 420, 65, 454, 273, 124, 361, 428, 261, 161, 366, 344, 130, 480, 151, 406, 311, 495, 35, 402, 146, 328, 210, 241, 370, 176, 144, 458, 384, 470, 31, 183, 70, 388, 437, 171, 332, 285, 245, 121, 291, 394, 64, 275, 306, 197, 465, 191, 67, 93, 421, 469, 185, 81, 296, 483, 308, 229, 156, 88, 451, 302, 180, 71, 447, 83, 292, 390, 43, 487, 122, 414, 206, 492, 137, 22, 345, 196, 433, 500, 333, 233, 438, 416, 202, 48, 223, 478, 383, 63, 107, 474, 218, 400, 282, 313, 442, 248, 216, 26, 456, 38, 103, 255, 142, 460, 5, 243, 404, 357, 317, 193, 363, 466, 136, 347, 378, 269], [198, 483, 52, 110, 129, 247, 437, 46, 467, 261, 150, 61, 488, 480, 400, 203, 55, 170, 459, 132, 34, 290, 309, 148, 86, 28, 125, 378, 249, 43, 155, 147, 283, 239, 37, 233, 81, 312, 16, 209, 282, 481, 338, 10, 332, 72, 402, 25, 263, 246, 310, 392, 19, 422, 324, 285, 7, 380, 399, 130, 500, 1, 359, 495, 15, 358, 101, 84, 373, 41, 352, 8, 270, 51, 124, 182, 201, 319, 5, 118, 35, 333, 222, 133, 56, 48, 472, 275, 127, 242, 27, 204, 106, 362, 381, 220, 158, 100, 197, 450, 321, 115, 227, 219, 355, 311, 109, 305, 153, 384, 88, 281, 354, 49, 410, 82, 404, 144, 474, 97, 335, 318, 382, 464, 91, 494, 396, 357, 79, 452, 471, 202, 68, 73, 431, 63, 87, 430, 173, 156, 445, 113, 424, 80, 342, 123, 196, 254, 273, 391, 77, 190, 107, 405, 294, 205, 128, 120, 40, 347, 199, 314, 99, 276, 178, 434, 453, 292, 230, 172, 269, 18, 393, 187, 299, 291, 427, 383, 181, 377, 225, 456, 160, 353, 426, 121, 482, 154, 476, 216, 42, 169, 407, 390, 454, 32, 163, 62, 468, 429, 151, 20, 39, 274, 140, 145, 503, 135, 159, 502, 245, 228, 13, 185, 496, 152, 414, 195, 268, 326, 345, 463, 149, 262, 179, 477, 366, 277, 200, 192, 112, 419, 271, 386, 171, 348, 250, 2, 21, 364, 302, 244, 341, 90, 465, 259, 371, 363, 499, 455, 253, 449, 297, 24, 232, 425, 498, 193, 50, 226, 44, 288, 114, 241, 479, 462, 22, 104, 235, 134, 36, 501, 223, 92, 111, 346, 212, 217, 71, 207, 231, 70, 317, 300, 85, 257, 64, 224, 486, 267, 340, 398, 417, 31, 221, 334, 251, 45, 438, 349, 272, 264, 184, 491, 343, 458, 243, 420, 322, 74, 93, 436, 374, 316, 413, 162, 33, 331, 443, 435, 67, 23, 325, 17, 369, 96, 304, 497, 66, 265, 122, 298, 116, 360, 186, 313, 47, 30, 94, 176, 307, 206, 108, 69, 295, 164, 183, 418, 284, 289, 143, 279, 303, 142, 389, 372, 157, 329, 136, 296, 54, 339, 412, 470, 489, 103, 293, 406, 323, 117, 6, 421, 344, 336, 256, 59, 415, 26, 315, 492, 394, 146, 165, 4, 446, 388, 485, 234, 105, 403, 11, 3, 139, 95, 397, 89, 441, 168, 376, 65, 138, 337, 194, 370, 188, 432, 258, 385, 119, 102, 166, 248, 379, 278, 180, 141, 367, 236, 255, 490, 356, 361, 215, 351, 375, 214, 461, 444, 229, 401, 208, 368, 126, 411, 484, 38, 57, 175, 365, 478, 395, 189, 78, 493, 416, 408, 328, 131, 487, 98, 387, 60, 466, 218, 237, 76, 14, 460, 53, 306, 177, 475, 83, 75, 211, 167, 469, 161, 9, 240, 448, 137, 210, 409, 266, 442, 260, 504, 330, 457, 191, 174, 238, 320, 451, 350, 252, 213, 439, 308, 327, 58, 428, 433, 287, 423, 447, 286, 29, 12, 301, 473, 280, 440], [315, 174, 124, 415, 329, 236, 175, 341, 438, 135, 273, 466, 352, 122, 389, 274, 89, 204, 288, 471, 331, 226, 356, 200, 472, 503, 87, 486, 363, 169, 325, 464, 497, 364, 440, 240, 405, 93, 358, 163, 419, 434, 94, 395, 339, 153, 138, 232, 118, 167, 335, 139, 206, 393, 252, 300, 421, 460, 230, 83, 301, 242, 501, 162, 480, 79, 289, 149, 398, 481, 188, 42, 387, 246, 196, 487, 401, 308, 247, 413, 6, 207, 345, 34, 424, 194, 461, 346, 161, 276, 360, 39, 403, 298, 428, 272, 40, 71, 159, 54, 435, 241, 397, 32, 65, 436, 8, 312, 477, 165, 430, 235, 491, 2, 166, 467, 411, 225, 210, 304, 190, 239, 407, 211, 278, 465, 324, 372, 493, 28, 302, 155, 373, 314, 69, 234, 48, 151, 361, 221, 470, 49, 260, 114, 459, 318, 268, 55, 473, 380, 319, 485, 78, 279, 417, 106, 496, 266, 29, 418, 233, 348, 432, 111, 475, 370, 500, 344, 112, 143, 231, 126, 3, 313, 469, 104, 137, 4, 80, 384, 45, 237, 502, 307, 59, 74, 238, 35, 483, 297, 282, 376, 262, 311, 479, 283, 350, 33, 396, 444, 61, 100, 374, 227, 445, 386, 141, 306, 120, 223, 433, 293, 38, 121, 332, 186, 27, 390, 340, 127, 41, 452, 391, 53, 150, 351, 489, 178, 64, 338, 101, 490, 305, 420, 504, 183, 43, 442, 68, 416, 184, 215, 303, 198, 75, 385, 37, 176, 209, 76, 152, 456, 117, 309, 70, 379, 131, 146, 310, 107, 51, 369, 354, 448, 334, 383, 47, 355, 422, 105, 468, 12, 133, 172, 446, 299, 13, 458, 213, 378, 192, 295, 1, 365, 110, 193, 404, 258, 99, 462, 412, 199, 113, 20, 463, 125, 222, 423, 57, 250, 136, 410, 173, 58, 377, 492, 72, 255, 115, 10, 140, 488, 256, 287, 375, 270, 147, 457, 109, 248, 281, 148, 224, 24, 189, 381, 142, 451, 203, 218, 382, 179, 123, 441, 426, 16, 406, 455, 119, 427, 494, 177, 36, 84, 205, 244, 14, 371, 85, 26, 285, 450, 264, 367, 73, 437, 182, 265, 476, 330, 171, 30, 484, 271, 185, 92, 31, 197, 294, 495, 129, 322, 208, 482, 245, 130, 449, 60, 144, 327, 187, 82, 212, 56, 328, 359, 447, 342, 219, 25, 181, 320, 353, 220, 296, 96, 261, 453, 214, 19, 275, 290, 454, 251, 195, 9, 498, 88, 478, 23, 191, 499, 62, 249, 108, 156, 277, 316, 86, 443, 157, 98, 357, 18, 336, 439, 145, 5, 254, 337, 44, 402, 243, 102, 52, 343, 257, 164, 103, 269, 366, 63, 201, 394, 280, 50, 317, 202, 17, 132, 216, 399, 259, 154, 284, 128, 400, 431, 15, 414, 291, 97, 253, 392, 425, 292, 368, 168, 333, 21, 286, 91, 347, 362, 22, 323, 267, 81, 66, 160, 46, 95, 263, 67, 134, 321, 180, 228, 349, 388, 158, 11, 229, 170, 429, 90, 408, 7, 217, 77, 326, 409, 116, 474]];
cc:=[2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[33, 263, 139, 165, 493, 37, 257, 153, 368, 51, 380, 301, 228, 160, 19, 374, 252, 143, 15, 155, 364, 462, 115, 55, 194, 486, 278, 60, 209, 94, 417, 268, 1, 68, 405, 305, 6, 488, 274, 120, 295, 46, 455, 135, 179, 42, 290, 472, 354, 385, 10, 320, 288, 98, 24, 110, 175, 327, 214, 28, 77, 315, 476, 429, 389, 265, 435, 34, 208, 419, 450, 341, 105, 335, 211, 237, 61, 109, 329, 225, 440, 123, 452, 373, 300, 232, 91, 446, 324, 215, 87, 227, 436, 30, 187, 127, 266, 54, 350, 132, 281, 166, 489, 340, 73, 140, 477, 377, 78, 56, 346, 192, 367, 118, 23, 207, 251, 114, 362, 40, 426, 457, 82, 392, 360, 170, 96, 182, 247, 399, 286, 100, 149, 387, 44, 501, 461, 337, 3, 106, 280, 491, 18, 413, 177, 407, 283, 309, 133, 181, 401, 297, 8, 195, 20, 445, 372, 304, 163, 14, 396, 287, 159, 299, 4, 102, 259, 199, 338, 126, 422, 204, 353, 238, 57, 412, 145, 212, 45, 449, 150, 128, 418, 264, 439, 190, 95, 279, 323, 186, 434, 112, 498, 25, 154, 464, 432, 242, 168, 254, 319, 471, 358, 172, 221, 459, 116, 69, 29, 409, 75, 178, 352, 59, 90, 485, 249, 479, 355, 381, 205, 253, 473, 369, 80, 267, 92, 13, 444, 376, 235, 86, 468, 359, 231, 371, 76, 174, 331, 271, 410, 198, 494, 276, 425, 310, 129, 484, 217, 284, 117, 17, 222, 200, 490, 336, 7, 262, 167, 351, 395, 258, 2, 184, 66, 97, 226, 32, 504, 314, 240, 326, 391, 39, 430, 244, 293, 27, 188, 141, 101, 481, 147, 250, 424, 131, 162, 53, 321, 47, 427, 453, 277, 325, 41, 441, 152, 339, 164, 85, 12, 448, 307, 158, 36, 431, 303, 443, 148, 246, 403, 343, 482, 270, 62, 348, 497, 382, 201, 52, 289, 356, 189, 89, 294, 272, 58, 408, 79, 334, 239, 423, 467, 330, 74, 256, 138, 169, 298, 104, 72, 386, 312, 398, 463, 111, 502, 316, 365, 99, 260, 213, 173, 49, 219, 322, 496, 203, 234, 125, 393, 119, 499, 21, 349, 397, 113, 9, 224, 411, 236, 157, 84, 16, 379, 230, 108, 503, 375, 11, 220, 318, 475, 415, 50, 342, 134, 420, 65, 454, 273, 124, 361, 428, 261, 161, 366, 344, 130, 480, 151, 406, 311, 495, 35, 402, 146, 328, 210, 241, 370, 176, 144, 458, 384, 470, 31, 183, 70, 388, 437, 171, 332, 285, 245, 121, 291, 394, 64, 275, 306, 197, 465, 191, 67, 93, 421, 469, 185, 81, 296, 483, 308, 229, 156, 88, 451, 302, 180, 71, 447, 83, 292, 390, 43, 487, 122, 414, 206, 492, 137, 22, 345, 196, 433, 500, 333, 233, 438, 416, 202, 48, 223, 478, 383, 63, 107, 474, 218, 400, 282, 313, 442, 248, 216, 26, 456, 38, 103, 255, 142, 460, 5, 243, 404, 357, 317, 193, 363, 466, 136, 347, 378, 269], [499, 357, 370, 471, 234, 376, 389, 212, 8, 337, 330, 64, 174, 423, 70, 497, 293, 17, 391, 420, 253, 93, 171, 259, 236, 383, 26, 85, 123, 316, 273, 360, 322, 335, 113, 35, 238, 231, 190, 300, 468, 196, 200, 266, 44, 436, 465, 73, 363, 333, 79, 83, 491, 53, 202, 168, 451, 138, 126, 457, 434, 158, 62, 256, 222, 343, 48, 369, 349, 326, 248, 71, 67, 429, 442, 39, 306, 448, 461, 284, 80, 409, 402, 136, 246, 495, 142, 65, 365, 89, 463, 492, 325, 165, 243, 331, 308, 455, 98, 157, 195, 388, 345, 432, 394, 407, 185, 107, 310, 303, 262, 372, 36, 268, 272, 338, 116, 4, 33, 145, 435, 405, 151, 155, 59, 125, 274, 240, 19, 210, 198, 25, 2, 230, 134, 328, 294, 415, 120, 441, 421, 398, 320, 143, 139, 501, 10, 111, 378, 16, 29, 356, 152, 481, 474, 208, 318, 63, 214, 137, 437, 161, 31, 60, 397, 237, 315, 403, 380, 23, 170, 229, 267, 460, 417, 504, 466, 479, 257, 179, 382, 375, 334, 444, 108, 340, 344, 410, 188, 76, 105, 217, 3, 477, 223, 227, 131, 197, 346, 312, 91, 282, 270, 97, 74, 302, 206, 400, 366, 487, 192, 9, 493, 470, 392, 215, 211, 69, 82, 183, 450, 88, 101, 428, 224, 49, 42, 280, 390, 135, 286, 209, 5, 233, 103, 132, 469, 309, 387, 475, 452, 95, 242, 301, 339, 28, 489, 72, 34, 47, 329, 251, 454, 447, 406, 12, 180, 412, 416, 482, 260, 148, 177, 289, 75, 45, 295, 299, 203, 269, 418, 384, 163, 354, 342, 169, 146, 374, 278, 472, 438, 55, 264, 81, 61, 38, 464, 287, 283, 141, 154, 255, 18, 160, 173, 500, 296, 121, 114, 352, 462, 207, 358, 281, 77, 305, 175, 204, 37, 381, 459, 43, 20, 167, 314, 373, 411, 100, 57, 144, 106, 119, 401, 323, 22, 15, 478, 84, 252, 484, 488, 50, 332, 220, 249, 361, 147, 117, 367, 371, 275, 341, 490, 456, 235, 426, 414, 241, 218, 446, 350, 40, 6, 127, 336, 153, 133, 110, 32, 359, 355, 213, 226, 327, 90, 232, 245, 68, 368, 193, 186, 424, 30, 279, 430, 353, 149, 377, 247, 276, 109, 453, 27, 115, 92, 239, 386, 445, 483, 172, 129, 216, 178, 191, 473, 395, 94, 87, 46, 156, 324, 52, 56, 122, 404, 292, 321, 433, 219, 189, 439, 443, 347, 413, 58, 24, 307, 498, 486, 313, 290, 14, 422, 112, 78, 199, 408, 225, 205, 182, 104, 431, 427, 285, 298, 399, 162, 304, 317, 140, 440, 265, 258, 496, 102, 351, 502, 425, 221, 449, 319, 348, 181, 21, 99, 187, 164, 311, 458, 13, 51, 244, 201, 288, 250, 263, 41, 467, 166, 159, 118, 228, 396, 124, 128, 194, 476, 364, 393, 1, 291, 261, 7, 11, 419, 485, 130, 96, 379, 66, 54, 385, 362, 86, 494, 184, 150, 271, 480, 297, 277, 254, 176, 503], [400, 149, 498, 114, 468, 173, 442, 368, 178, 283, 248, 336, 492, 171, 272, 181, 143, 277, 247, 482, 390, 294, 126, 470, 100, 278, 475, 310, 401, 84, 159, 234, 362, 217, 305, 367, 148, 131, 237, 213, 333, 92, 343, 179, 97, 130, 284, 435, 267, 423, 137, 406, 98, 142, 481, 311, 201, 384, 360, 299, 424, 476, 304, 301, 446, 255, 105, 9, 479, 19, 341, 484, 472, 221, 66, 186, 36, 245, 10, 440, 250, 355, 320, 408, 60, 243, 344, 253, 215, 349, 319, 50, 462, 366, 198, 38, 172, 350, 43, 382, 473, 156, 231, 306, 434, 289, 377, 439, 220, 203, 309, 285, 405, 164, 415, 251, 169, 202, 356, 3, 339, 495, 209, 478, 170, 214, 49, 383, 273, 456, 432, 371, 496, 44, 376, 373, 14, 327, 177, 81, 47, 91, 413, 52, 40, 293, 138, 258, 108, 317, 82, 8, 322, 427, 392, 480, 132, 315, 416, 325, 287, 421, 391, 122, 30, 438, 270, 110, 244, 422, 115, 454, 41, 228, 303, 378, 2, 361, 449, 7, 292, 275, 381, 357, 477, 236, 487, 323, 241, 274, 428, 75, 411, 63, 281, 46, 242, 286, 121, 455, 345, 24, 504, 443, 64, 116, 448, 445, 86, 399, 249, 153, 119, 163, 485, 124, 112, 365, 210, 330, 180, 389, 154, 80, 394, 499, 464, 48, 204, 387, 488, 397, 359, 493, 463, 194, 102, 6, 342, 182, 316, 494, 187, 22, 113, 300, 375, 450, 74, 433, 17, 79, 364, 347, 453, 429, 45, 308, 55, 395, 313, 346, 500, 147, 483, 135, 353, 118, 314, 358, 193, 23, 417, 96, 72, 11, 136, 188, 16, 13, 158, 471, 321, 225, 191, 235, 53, 196, 184, 437, 282, 402, 252, 461, 226, 152, 466, 67, 32, 120, 276, 459, 56, 469, 431, 61, 31, 266, 174, 78, 414, 254, 388, 62, 259, 94, 185, 372, 447, 18, 146, 1, 89, 151, 436, 419, 21, 501, 117, 380, 127, 467, 385, 418, 68, 219, 51, 207, 425, 190, 386, 430, 265, 95, 489, 168, 144, 83, 208, 260, 88, 85, 230, 39, 393, 297, 263, 307, 125, 268, 256, 5, 354, 474, 324, 29, 298, 224, 34, 139, 104, 192, 348, 27, 128, 37, 503, 133, 103, 338, 246, 150, 486, 326, 460, 134, 331, 166, 257, 444, 15, 90, 218, 73, 161, 223, 4, 491, 93, 69, 189, 452, 199, 35, 457, 490, 140, 291, 123, 279, 497, 262, 458, 502, 337, 167, 57, 240, 216, 155, 280, 332, 160, 157, 302, 111, 465, 369, 335, 379, 197, 340, 328, 77, 426, 42, 396, 101, 370, 296, 106, 211, 176, 264, 420, 99, 200, 109, 71, 205, 175, 410, 318, 222, 54, 398, 28, 206, 403, 238, 329, 12, 87, 162, 290, 145, 233, 295, 76, 59, 165, 141, 261, 20, 271, 107, 25, 58, 212, 363, 195, 351, 65, 334, 26, 70, 409, 239, 129, 312, 288, 227, 352, 404, 232, 229, 374, 183, 33, 441, 407, 451, 269, 412]];
cc:=[2,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[33, 263, 139, 165, 493, 37, 257, 153, 368, 51, 380, 301, 228, 160, 19, 374, 252, 143, 15, 155, 364, 462, 115, 55, 194, 486, 278, 60, 209, 94, 417, 268, 1, 68, 405, 305, 6, 488, 274, 120, 295, 46, 455, 135, 179, 42, 290, 472, 354, 385, 10, 320, 288, 98, 24, 110, 175, 327, 214, 28, 77, 315, 476, 429, 389, 265, 435, 34, 208, 419, 450, 341, 105, 335, 211, 237, 61, 109, 329, 225, 440, 123, 452, 373, 300, 232, 91, 446, 324, 215, 87, 227, 436, 30, 187, 127, 266, 54, 350, 132, 281, 166, 489, 340, 73, 140, 477, 377, 78, 56, 346, 192, 367, 118, 23, 207, 251, 114, 362, 40, 426, 457, 82, 392, 360, 170, 96, 182, 247, 399, 286, 100, 149, 387, 44, 501, 461, 337, 3, 106, 280, 491, 18, 413, 177, 407, 283, 309, 133, 181, 401, 297, 8, 195, 20, 445, 372, 304, 163, 14, 396, 287, 159, 299, 4, 102, 259, 199, 338, 126, 422, 204, 353, 238, 57, 412, 145, 212, 45, 449, 150, 128, 418, 264, 439, 190, 95, 279, 323, 186, 434, 112, 498, 25, 154, 464, 432, 242, 168, 254, 319, 471, 358, 172, 221, 459, 116, 69, 29, 409, 75, 178, 352, 59, 90, 485, 249, 479, 355, 381, 205, 253, 473, 369, 80, 267, 92, 13, 444, 376, 235, 86, 468, 359, 231, 371, 76, 174, 331, 271, 410, 198, 494, 276, 425, 310, 129, 484, 217, 284, 117, 17, 222, 200, 490, 336, 7, 262, 167, 351, 395, 258, 2, 184, 66, 97, 226, 32, 504, 314, 240, 326, 391, 39, 430, 244, 293, 27, 188, 141, 101, 481, 147, 250, 424, 131, 162, 53, 321, 47, 427, 453, 277, 325, 41, 441, 152, 339, 164, 85, 12, 448, 307, 158, 36, 431, 303, 443, 148, 246, 403, 343, 482, 270, 62, 348, 497, 382, 201, 52, 289, 356, 189, 89, 294, 272, 58, 408, 79, 334, 239, 423, 467, 330, 74, 256, 138, 169, 298, 104, 72, 386, 312, 398, 463, 111, 502, 316, 365, 99, 260, 213, 173, 49, 219, 322, 496, 203, 234, 125, 393, 119, 499, 21, 349, 397, 113, 9, 224, 411, 236, 157, 84, 16, 379, 230, 108, 503, 375, 11, 220, 318, 475, 415, 50, 342, 134, 420, 65, 454, 273, 124, 361, 428, 261, 161, 366, 344, 130, 480, 151, 406, 311, 495, 35, 402, 146, 328, 210, 241, 370, 176, 144, 458, 384, 470, 31, 183, 70, 388, 437, 171, 332, 285, 245, 121, 291, 394, 64, 275, 306, 197, 465, 191, 67, 93, 421, 469, 185, 81, 296, 483, 308, 229, 156, 88, 451, 302, 180, 71, 447, 83, 292, 390, 43, 487, 122, 414, 206, 492, 137, 22, 345, 196, 433, 500, 333, 233, 438, 416, 202, 48, 223, 478, 383, 63, 107, 474, 218, 400, 282, 313, 442, 248, 216, 26, 456, 38, 103, 255, 142, 460, 5, 243, 404, 357, 317, 193, 363, 466, 136, 347, 378, 269], [371, 44, 189, 273, 384, 286, 491, 244, 49, 65, 26, 225, 363, 213, 313, 158, 397, 58, 254, 62, 450, 174, 267, 403, 113, 145, 31, 317, 8, 414, 138, 294, 133, 266, 280, 40, 191, 53, 108, 471, 159, 250, 293, 478, 13, 74, 17, 432, 300, 114, 484, 383, 307, 22, 452, 35, 351, 93, 492, 151, 212, 127, 4, 344, 215, 459, 408, 321, 232, 32, 370, 355, 443, 116, 261, 345, 456, 358, 59, 316, 121, 137, 98, 297, 435, 285, 385, 230, 469, 130, 326, 134, 18, 246, 339, 475, 185, 217, 103, 389, 80, 486, 210, 366, 205, 338, 352, 112, 263, 125, 180, 39, 231, 322, 365, 46, 85, 146, 89, 504, 372, 186, 52, 455, 379, 94, 20, 107, 423, 165, 60, 223, 284, 199, 76, 416, 287, 27, 480, 393, 304, 104, 442, 427, 11, 188, 333, 417, 24, 430, 131, 388, 193, 209, 170, 369, 3, 357, 457, 302, 37, 202, 398, 206, 90, 318, 411, 43, 257, 289, 175, 461, 152, 54, 282, 438, 277, 410, 424, 184, 335, 197, 252, 111, 303, 394, 437, 118, 157, 218, 161, 72, 444, 258, 124, 23, 451, 166, 92, 179, 495, 237, 132, 295, 356, 271, 148, 488, 359, 99, 48, 465, 376, 176, 10, 499, 83, 260, 405, 489, 96, 502, 203, 460, 265, 281, 242, 441, 75, 429, 25, 374, 109, 274, 470, 278, 162, 390, 483, 115, 329, 361, 247, 29, 224, 126, 354, 6, 349, 482, 496, 256, 407, 269, 324, 183, 375, 466, 5, 190, 229, 290, 233, 144, 12, 330, 196, 95, 19, 238, 164, 251, 63, 309, 204, 367, 428, 343, 220, 56, 431, 171, 120, 33, 448, 248, 82, 67, 155, 332, 477, 57, 168, 70, 275, 28, 337, 353, 314, 9, 147, 501, 97, 446, 181, 346, 38, 350, 234, 462, 51, 187, 401, 433, 319, 101, 296, 198, 426, 78, 421, 50, 64, 328, 479, 341, 396, 255, 447, 34, 77, 262, 301, 362, 305, 216, 84, 402, 268, 167, 91, 310, 236, 323, 135, 381, 276, 439, 500, 415, 292, 128, 503, 243, 192, 105, 16, 320, 154, 139, 227, 404, 45, 129, 240, 142, 347, 100, 409, 425, 386, 81, 219, 69, 169, 14, 253, 418, 110, 422, 306, 30, 123, 259, 473, 1, 391, 173, 368, 270, 498, 150, 493, 122, 136, 400, 47, 413, 468, 327, 15, 106, 149, 334, 373, 434, 377, 288, 156, 474, 340, 239, 163, 382, 308, 395, 207, 453, 348, 7, 68, 487, 364, 200, 71, 315, 264, 177, 88, 392, 226, 211, 299, 476, 117, 201, 312, 214, 419, 172, 481, 497, 458, 153, 291, 141, 241, 86, 325, 490, 182, 494, 378, 102, 195, 331, 41, 73, 463, 245, 440, 342, 66, 222, 61, 194, 208, 472, 119, 485, 36, 399, 87, 178, 221, 406, 445, 2, 449, 360, 228, 42, 412, 311, 235, 454, 380, 467, 279, 21, 420, 79, 140, 55, 436, 272, 143, 387, 336, 249, 160, 464, 298, 283], [342, 474, 372, 476, 167, 484, 388, 209, 85, 90, 177, 66, 179, 230, 151, 496, 290, 436, 504, 96, 255, 98, 464, 133, 235, 380, 337, 441, 276, 318, 278, 419, 250, 334, 110, 202, 396, 303, 192, 305, 122, 313, 199, 263, 499, 207, 366, 75, 368, 356, 403, 82, 488, 238, 243, 141, 453, 143, 329, 286, 433, 155, 391, 189, 51, 345, 53, 437, 16, 325, 245, 112, 414, 42, 444, 44, 239, 52, 460, 281, 157, 162, 249, 138, 251, 302, 223, 64, 362, 4, 72, 168, 327, 170, 32, 205, 307, 452, 409, 9, 348, 390, 350, 491, 322, 406, 182, 274, 468, 375, 264, 377, 194, 385, 271, 335, 67, 279, 438, 147, 440, 428, 475, 154, 56, 310, 315, 213, 21, 215, 401, 358, 1, 227, 463, 261, 123, 417, 125, 5, 88, 397, 317, 184, 486, 114, 12, 116, 311, 124, 28, 353, 229, 234, 321, 210, 323, 374, 295, 136, 434, 76, 144, 240, 399, 242, 104, 277, 379, 20, 481, 81, 420, 462, 422, 59, 394, 478, 254, 346, 36, 447, 336, 449, 266, 457, 343, 407, 139, 351, 6, 219, 8, 500, 43, 226, 128, 382, 387, 285, 93, 287, 473, 430, 73, 299, 31, 333, 195, 489, 197, 77, 160, 469, 389, 256, 54, 186, 84, 188, 383, 196, 100, 425, 301, 306, 393, 282, 395, 446, 367, 208, 2, 148, 216, 312, 471, 314, 176, 349, 451, 92, 49, 153, 492, 30, 494, 131, 466, 46, 326, 418, 108, 15, 408, 17, 338, 25, 415, 479, 211, 423, 78, 291, 80, 68, 115, 298, 200, 454, 459, 357, 165, 359, 41, 502, 145, 371, 103, 405, 267, 57, 269, 149, 232, 37, 461, 328, 126, 258, 156, 260, 455, 268, 172, 497, 373, 378, 465, 354, 467, 14, 439, 280, 74, 220, 288, 384, 39, 386, 248, 421, 19, 164, 121, 225, 60, 102, 62, 203, 34, 118, 398, 490, 180, 87, 480, 89, 410, 97, 487, 47, 283, 495, 150, 363, 152, 140, 187, 370, 272, 22, 27, 429, 237, 431, 113, 70, 217, 443, 175, 477, 339, 129, 341, 221, 304, 109, 29, 400, 198, 330, 228, 332, 23, 340, 244, 65, 445, 450, 33, 426, 35, 86, 7, 352, 146, 292, 360, 456, 111, 458, 320, 493, 91, 236, 193, 297, 132, 174, 134, 275, 106, 190, 470, 58, 252, 159, 48, 161, 482, 169, 55, 119, 355, 63, 222, 435, 224, 212, 259, 442, 344, 94, 99, 501, 309, 503, 185, 142, 289, 11, 247, 45, 411, 201, 413, 293, 376, 181, 101, 472, 270, 402, 300, 404, 95, 412, 316, 137, 13, 18, 105, 498, 107, 158, 79, 424, 218, 364, 432, 24, 183, 26, 392, 61, 163, 308, 265, 369, 204, 246, 206, 347, 178, 262, 38, 130, 324, 231, 120, 233, 50, 241, 127, 191, 427, 135, 294, 3, 296, 284, 331, 10, 416, 166, 171, 69, 381, 71, 257, 214, 361, 83, 319, 117, 483, 273, 485, 365, 448, 253, 173, 40]];
cc:=[2,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.15-1.0.15-15-15
// Create group as a permutation group and initialize signature information.
gp_id:=[15,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,15,15,15];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3]];
cc:=[8,8,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[30,4];
full_sign:=[0,2,15,30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 3, 4, 5, 1, 2], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 3, 4, 5, 1, 2]];
cc:=[8,11,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[30,4];
full_sign:=[0,2,15,30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 11, 12, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [13, 14, 15, 11, 12, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[9,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[30,4];
full_sign:=[0,2,15,30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 11, 12, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [15, 11, 12, 13, 14, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [15, 11, 12, 13, 14, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[9,15,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[30,4];
full_sign:=[0,2,15,30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 5, 1, 2, 3, 4], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 5, 1, 2, 3, 4], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 3, 4, 5, 1, 2]];
cc:=[10,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[30,4];
full_sign:=[0,2,15,30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 5, 1, 2, 3, 4], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3]];
cc:=[10,14,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[30,4];
full_sign:=[0,2,15,30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [15, 11, 12, 13, 14, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[12,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[30,4];
full_sign:=[0,2,15,30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[12,13,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[30,4];
full_sign:=[0,2,15,30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.24-3.0.6-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,6,6,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 9, 16, 15, 12, 11, 14, 13, 18, 17, 24, 23, 20, 19, 22, 21, 2, 1, 8, 7, 4, 3, 6, 5], [14, 13, 12, 11, 15, 16, 9, 10, 22, 21, 20, 19, 23, 24, 17, 18, 6, 5, 4, 3, 7, 8, 1, 2], [12, 11, 13, 14, 9, 10, 16, 15, 20, 19, 21, 22, 17, 18, 24, 23, 4, 3, 5, 6, 1, 2, 8, 7]];
cc:=[6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[18, 17, 22, 21, 24, 23, 20, 19, 2, 1, 6, 5, 8, 7, 4, 3, 10, 9, 14, 13, 16, 15, 12, 11], [23, 24, 20, 19, 18, 17, 21, 22, 7, 8, 4, 3, 2, 1, 5, 6, 15, 16, 12, 11, 10, 9, 13, 14], [19, 20, 23, 24, 22, 21, 18, 17, 3, 4, 7, 8, 6, 5, 2, 1, 11, 12, 15, 16, 14, 13, 10, 9]];
cc:=[7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.27-4.0.3-9-9
// Create group as a permutation group and initialize signature information.
gp_id:=[27,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,9,9];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [10, 11, 12, 14, 15, 13, 18, 16, 17, 19, 20, 21, 23, 24, 22, 27, 25, 26, 2, 3, 1, 6, 4, 5, 7, 8, 9], [27, 25, 26, 20, 21, 19, 22, 23, 24, 7, 8, 9, 3, 1, 2, 5, 6, 4, 16, 17, 18, 12, 10, 11, 14, 15, 13]];
cc:=[4,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[54,6];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [19, 20, 21, 24, 22, 23, 26, 27, 25, 2, 3, 1, 4, 5, 6, 9, 7, 8, 11, 12, 10, 13, 14, 15, 18, 16, 17], [18, 16, 17, 10, 11, 12, 14, 15, 13, 27, 25, 26, 19, 20, 21, 23, 24, 22, 7, 8, 9, 2, 3, 1, 6, 4, 5]];
cc:=[4,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[54,6];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21], [13, 14, 15, 17, 18, 16, 12, 10, 11, 22, 23, 24, 26, 27, 25, 21, 19, 20, 5, 6, 4, 9, 7, 8, 1, 2, 3], [22, 23, 24, 27, 25, 26, 20, 21, 19, 5, 6, 4, 7, 8, 9, 3, 1, 2, 14, 15, 13, 16, 17, 18, 12, 10, 11]];
cc:=[4,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[54,6];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [10, 11, 12, 14, 15, 13, 18, 16, 17, 19, 20, 21, 23, 24, 22, 27, 25, 26, 2, 3, 1, 6, 4, 5, 7, 8, 9], [24, 22, 23, 26, 27, 25, 19, 20, 21, 4, 5, 6, 9, 7, 8, 2, 3, 1, 13, 14, 15, 18, 16, 17, 11, 12, 10]];
cc:=[5,6,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[54,6];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [19, 20, 21, 24, 22, 23, 26, 27, 25, 2, 3, 1, 4, 5, 6, 9, 7, 8, 11, 12, 10, 13, 14, 15, 18, 16, 17], [15, 13, 14, 16, 17, 18, 11, 12, 10, 24, 22, 23, 25, 26, 27, 20, 21, 19, 4, 5, 6, 8, 9, 7, 3, 1, 2]];
cc:=[5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[54,6];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15, 25, 26, 27, 19, 20, 21, 22, 23, 24], [26, 27, 25, 19, 20, 21, 24, 22, 23, 9, 7, 8, 2, 3, 1, 4, 5, 6, 18, 16, 17, 11, 12, 10, 13, 14, 15], [18, 16, 17, 10, 11, 12, 14, 15, 13, 27, 25, 26, 19, 20, 21, 23, 24, 22, 7, 8, 9, 2, 3, 1, 6, 4, 5]];
cc:=[5,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[54,6];
full_sign:=[0,2,6,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.32-13.0.4-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[32,13];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [26, 25, 28, 27, 29, 30, 31, 32, 17, 18, 19, 20, 22, 21, 24, 23, 12, 11, 10, 9, 15, 16, 13, 14, 3, 4, 1, 2, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 4, 3, 2, 1, 8, 7, 6, 5, 31, 32, 29, 30, 28, 27, 26, 25, 20, 19, 18, 17, 24, 23, 22, 21]];
cc:=[7,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [25, 26, 27, 28, 30, 29, 32, 31, 18, 17, 20, 19, 21, 22, 23, 24, 11, 12, 9, 10, 16, 15, 14, 13, 4, 3, 2, 1, 7, 8, 5, 6], [16, 15, 14, 13, 11, 12, 9, 10, 3, 4, 1, 2, 7, 8, 5, 6, 32, 31, 30, 29, 27, 28, 25, 26, 19, 20, 17, 18, 23, 24, 21, 22]];
cc:=[7,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [28, 27, 26, 25, 31, 32, 29, 30, 19, 20, 17, 18, 24, 23, 22, 21, 10, 9, 12, 11, 13, 14, 15, 16, 1, 2, 3, 4, 6, 5, 8, 7], [13, 14, 15, 16, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7, 29, 30, 31, 32, 26, 25, 28, 27, 18, 17, 20, 19, 22, 21, 24, 23]];
cc:=[7,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [27, 28, 25, 26, 32, 31, 30, 29, 20, 19, 18, 17, 23, 24, 21, 22, 9, 10, 11, 12, 14, 13, 16, 15, 2, 1, 4, 3, 5, 6, 7, 8], [14, 13, 16, 15, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 30, 29, 32, 31, 25, 26, 27, 28, 17, 18, 19, 20, 21, 22, 23, 24]];
cc:=[7,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [26, 25, 28, 27, 29, 30, 31, 32, 17, 18, 19, 20, 22, 21, 24, 23, 12, 11, 10, 9, 15, 16, 13, 14, 3, 4, 1, 2, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7, 29, 30, 31, 32, 26, 25, 28, 27, 18, 17, 20, 19, 22, 21, 24, 23]];
cc:=[8,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [25, 26, 27, 28, 30, 29, 32, 31, 18, 17, 20, 19, 21, 22, 23, 24, 11, 12, 9, 10, 16, 15, 14, 13, 4, 3, 2, 1, 7, 8, 5, 6], [14, 13, 16, 15, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 30, 29, 32, 31, 25, 26, 27, 28, 17, 18, 19, 20, 21, 22, 23, 24]];
cc:=[8,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [28, 27, 26, 25, 31, 32, 29, 30, 19, 20, 17, 18, 24, 23, 22, 21, 10, 9, 12, 11, 13, 14, 15, 16, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 13, 14, 12, 11, 10, 9, 4, 3, 2, 1, 8, 7, 6, 5, 31, 32, 29, 30, 28, 27, 26, 25, 20, 19, 18, 17, 24, 23, 22, 21]];
cc:=[8,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [27, 28, 25, 26, 32, 31, 30, 29, 20, 19, 18, 17, 23, 24, 21, 22, 9, 10, 11, 12, 14, 13, 16, 15, 2, 1, 4, 3, 5, 6, 7, 8], [16, 15, 14, 13, 11, 12, 9, 10, 3, 4, 1, 2, 7, 8, 5, 6, 32, 31, 30, 29, 27, 28, 25, 26, 19, 20, 17, 18, 23, 24, 21, 22]];
cc:=[8,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.32-14.0.4-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[32,14];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23, 11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 3, 4, 1, 2, 7, 8, 5, 6, 31, 32, 29, 30, 28, 27, 26, 25, 19, 20, 17, 18, 23, 24, 21, 22]];
cc:=[7,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [26, 25, 28, 27, 29, 30, 31, 32, 18, 17, 20, 19, 21, 22, 23, 24, 12, 11, 10, 9, 15, 16, 13, 14, 4, 3, 2, 1, 7, 8, 5, 6], [16, 15, 14, 13, 11, 12, 9, 10, 4, 3, 2, 1, 8, 7, 6, 5, 32, 31, 30, 29, 27, 28, 25, 26, 20, 19, 18, 17, 24, 23, 22, 21]];
cc:=[7,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [27, 28, 25, 26, 32, 31, 30, 29, 19, 20, 17, 18, 24, 23, 22, 21, 9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [13, 14, 15, 16, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6, 7, 8, 29, 30, 31, 32, 26, 25, 28, 27, 17, 18, 19, 20, 21, 22, 23, 24]];
cc:=[7,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [28, 27, 26, 25, 31, 32, 29, 30, 20, 19, 18, 17, 23, 24, 21, 22, 10, 9, 12, 11, 13, 14, 15, 16, 2, 1, 4, 3, 5, 6, 7, 8], [14, 13, 16, 15, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5, 8, 7, 30, 29, 32, 31, 25, 26, 27, 28, 18, 17, 20, 19, 22, 21, 24, 23]];
cc:=[7,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23, 11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6, 7, 8, 29, 30, 31, 32, 26, 25, 28, 27, 17, 18, 19, 20, 21, 22, 23, 24]];
cc:=[8,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [26, 25, 28, 27, 29, 30, 31, 32, 18, 17, 20, 19, 21, 22, 23, 24, 12, 11, 10, 9, 15, 16, 13, 14, 4, 3, 2, 1, 7, 8, 5, 6], [14, 13, 16, 15, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5, 8, 7, 30, 29, 32, 31, 25, 26, 27, 28, 18, 17, 20, 19, 22, 21, 24, 23]];
cc:=[8,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [27, 28, 25, 26, 32, 31, 30, 29, 19, 20, 17, 18, 24, 23, 22, 21, 9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 13, 14, 12, 11, 10, 9, 3, 4, 1, 2, 7, 8, 5, 6, 31, 32, 29, 30, 28, 27, 26, 25, 19, 20, 17, 18, 23, 24, 21, 22]];
cc:=[8,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [28, 27, 26, 25, 31, 32, 29, 30, 20, 19, 18, 17, 23, 24, 21, 22, 10, 9, 12, 11, 13, 14, 15, 16, 2, 1, 4, 3, 5, 6, 7, 8], [16, 15, 14, 13, 11, 12, 9, 10, 4, 3, 2, 1, 8, 7, 6, 5, 32, 31, 30, 29, 27, 28, 25, 26, 20, 19, 18, 17, 24, 23, 22, 21]];
cc:=[8,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.32-16.0.2-16-16
// Create group as a permutation group and initialize signature information.
gp_id:=[32,16];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,16,16];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 5, 6, 7, 8, 3, 4, 2, 1, 13, 14, 15, 16, 11, 12, 10, 9], [32, 31, 29, 30, 25, 26, 27, 28, 24, 23, 21, 22, 17, 18, 19, 20, 9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[3,17,32];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [21, 22, 23, 24, 19, 20, 18, 17, 29, 30, 31, 32, 27, 28, 26, 25, 3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [28, 27, 25, 26, 32, 31, 29, 30, 20, 19, 17, 18, 24, 23, 21, 22, 16, 15, 13, 14, 9, 10, 11, 12, 8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[3,18,31];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [19, 20, 18, 17, 23, 24, 22, 21, 27, 28, 26, 25, 31, 32, 30, 29, 7, 8, 6, 5, 2, 1, 4, 3, 15, 16, 14, 13, 10, 9, 12, 11], [30, 29, 32, 31, 28, 27, 25, 26, 22, 21, 24, 23, 20, 19, 17, 18, 12, 11, 9, 10, 16, 15, 13, 14, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[3,19,30];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [23, 24, 22, 21, 18, 17, 20, 19, 31, 32, 30, 29, 26, 25, 28, 27, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 12, 11, 9, 10, 6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[3,20,29];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 6, 5, 8, 7, 4, 3, 1, 2, 14, 13, 16, 15, 12, 11, 9, 10], [31, 32, 30, 29, 26, 25, 28, 27, 23, 24, 22, 21, 18, 17, 20, 19, 10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[3,21,28];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [22, 21, 24, 23, 20, 19, 17, 18, 30, 29, 32, 31, 28, 27, 25, 26, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14], [27, 28, 26, 25, 31, 32, 30, 29, 19, 20, 18, 17, 23, 24, 22, 21, 15, 16, 14, 13, 10, 9, 12, 11, 7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[3,22,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [20, 19, 17, 18, 24, 23, 21, 22, 28, 27, 25, 26, 32, 31, 29, 30, 8, 7, 5, 6, 1, 2, 3, 4, 16, 15, 13, 14, 9, 10, 11, 12], [29, 30, 31, 32, 27, 28, 26, 25, 21, 22, 23, 24, 19, 20, 18, 17, 11, 12, 10, 9, 15, 16, 14, 13, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[3,23,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [24, 23, 21, 22, 17, 18, 19, 20, 32, 31, 29, 30, 25, 26, 27, 28, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], [25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 11, 12, 10, 9, 5, 6, 7, 8, 3, 4, 2, 1]];
cc:=[3,24,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 5, 6, 7, 8, 3, 4, 2, 1, 13, 14, 15, 16, 11, 12, 10, 9], [31, 32, 30, 29, 26, 25, 28, 27, 23, 24, 22, 21, 18, 17, 20, 19, 10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[4,17,28];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [21, 22, 23, 24, 19, 20, 18, 17, 29, 30, 31, 32, 27, 28, 26, 25, 3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [27, 28, 26, 25, 31, 32, 30, 29, 19, 20, 18, 17, 23, 24, 22, 21, 15, 16, 14, 13, 10, 9, 12, 11, 7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[4,18,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [19, 20, 18, 17, 23, 24, 22, 21, 27, 28, 26, 25, 31, 32, 30, 29, 7, 8, 6, 5, 2, 1, 4, 3, 15, 16, 14, 13, 10, 9, 12, 11], [29, 30, 31, 32, 27, 28, 26, 25, 21, 22, 23, 24, 19, 20, 18, 17, 11, 12, 10, 9, 15, 16, 14, 13, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[4,19,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [23, 24, 22, 21, 18, 17, 20, 19, 31, 32, 30, 29, 26, 25, 28, 27, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 11, 12, 10, 9, 5, 6, 7, 8, 3, 4, 2, 1]];
cc:=[4,20,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 6, 5, 8, 7, 4, 3, 1, 2, 14, 13, 16, 15, 12, 11, 9, 10], [32, 31, 29, 30, 25, 26, 27, 28, 24, 23, 21, 22, 17, 18, 19, 20, 9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[4,21,32];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [22, 21, 24, 23, 20, 19, 17, 18, 30, 29, 32, 31, 28, 27, 25, 26, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14], [28, 27, 25, 26, 32, 31, 29, 30, 20, 19, 17, 18, 24, 23, 21, 22, 16, 15, 13, 14, 9, 10, 11, 12, 8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[4,22,31];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [20, 19, 17, 18, 24, 23, 21, 22, 28, 27, 25, 26, 32, 31, 29, 30, 8, 7, 5, 6, 1, 2, 3, 4, 16, 15, 13, 14, 9, 10, 11, 12], [30, 29, 32, 31, 28, 27, 25, 26, 22, 21, 24, 23, 20, 19, 17, 18, 12, 11, 9, 10, 16, 15, 13, 14, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[4,23,30];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [24, 23, 21, 22, 17, 18, 19, 20, 32, 31, 29, 30, 25, 26, 27, 28, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], [26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 12, 11, 9, 10, 6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[4,24,29];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[64,38];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.32-17.0.2-16-16
// Create group as a permutation group and initialize signature information.
gp_id:=[32,17];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,16,16];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [17, 18, 19, 20, 21, 22, 23, 24, 26, 25, 28, 27, 30, 29, 32, 31, 5, 6, 7, 8, 3, 4, 2, 1, 14, 13, 16, 15, 12, 11, 9, 10], [32, 31, 29, 30, 25, 26, 27, 28, 23, 24, 22, 21, 18, 17, 20, 19, 9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[3,13,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [21, 22, 23, 24, 19, 20, 18, 17, 30, 29, 32, 31, 28, 27, 25, 26, 3, 4, 2, 1, 7, 8, 6, 5, 12, 11, 9, 10, 16, 15, 13, 14], [28, 27, 25, 26, 32, 31, 29, 30, 19, 20, 18, 17, 23, 24, 22, 21, 16, 15, 13, 14, 9, 10, 11, 12, 7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[3,14,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [19, 20, 18, 17, 23, 24, 22, 21, 28, 27, 25, 26, 32, 31, 29, 30, 7, 8, 6, 5, 2, 1, 4, 3, 16, 15, 13, 14, 9, 10, 11, 12], [30, 29, 32, 31, 28, 27, 25, 26, 21, 22, 23, 24, 19, 20, 18, 17, 12, 11, 9, 10, 16, 15, 13, 14, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[3,15,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [23, 24, 22, 21, 18, 17, 20, 19, 32, 31, 29, 30, 25, 26, 27, 28, 2, 1, 4, 3, 6, 5, 8, 7, 9, 10, 11, 12, 13, 14, 15, 16], [26, 25, 28, 27, 30, 29, 32, 31, 17, 18, 19, 20, 21, 22, 23, 24, 14, 13, 16, 15, 12, 11, 9, 10, 5, 6, 7, 8, 3, 4, 2, 1]];
cc:=[3,16,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[64,41];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.72-25.0.3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[72,25];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 26, 31, 32, 27, 28, 29, 30, 33, 34, 39, 40, 35, 36, 37, 38, 41, 42, 47, 48, 43, 44, 45, 46, 49, 50, 55, 56, 51, 52, 53, 54, 57, 58, 63, 64, 59, 60, 61, 62, 65, 66, 71, 72, 67, 68, 69, 70, 1, 2, 7, 8, 3, 4, 5, 6, 9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22], [37, 38, 35, 36, 40, 39, 34, 33, 45, 46, 43, 44, 48, 47, 42, 41, 29, 30, 27, 28, 32, 31, 26, 25, 61, 62, 59, 60, 64, 63, 58, 57, 69, 70, 67, 68, 72, 71, 66, 65, 53, 54, 51, 52, 56, 55, 50, 49, 13, 14, 11, 12, 16, 15, 10, 9, 21, 22, 19, 20, 24, 23, 18, 17, 5, 6, 3, 4, 8, 7, 2, 1], [44, 43, 45, 46, 41, 42, 48, 47, 28, 27, 29, 30, 25, 26, 32, 31, 36, 35, 37, 38, 33, 34, 40, 39, 68, 67, 69, 70, 65, 66, 72, 71, 52, 51, 53, 54, 49, 50, 56, 55, 60, 59, 61, 62, 57, 58, 64, 63, 20, 19, 21, 22, 17, 18, 24, 23, 4, 3, 5, 6, 1, 2, 8, 7, 12, 11, 13, 14, 9, 10, 16, 15]];
cc:=[5,7,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[25, 26, 31, 32, 27, 28, 29, 30, 33, 34, 39, 40, 35, 36, 37, 38, 41, 42, 47, 48, 43, 44, 45, 46, 49, 50, 55, 56, 51, 52, 53, 54, 57, 58, 63, 64, 59, 60, 61, 62, 65, 66, 71, 72, 67, 68, 69, 70, 1, 2, 7, 8, 3, 4, 5, 6, 9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22], [45, 46, 43, 44, 48, 47, 42, 41, 29, 30, 27, 28, 32, 31, 26, 25, 37, 38, 35, 36, 40, 39, 34, 33, 69, 70, 67, 68, 72, 71, 66, 65, 53, 54, 51, 52, 56, 55, 50, 49, 61, 62, 59, 60, 64, 63, 58, 57, 21, 22, 19, 20, 24, 23, 18, 17, 5, 6, 3, 4, 8, 7, 2, 1, 13, 14, 11, 12, 16, 15, 10, 9], [36, 35, 37, 38, 33, 34, 40, 39, 44, 43, 45, 46, 41, 42, 48, 47, 28, 27, 29, 30, 25, 26, 32, 31, 60, 59, 61, 62, 57, 58, 64, 63, 68, 67, 69, 70, 65, 66, 72, 71, 52, 51, 53, 54, 49, 50, 56, 55, 12, 11, 13, 14, 9, 10, 16, 15, 20, 19, 21, 22, 17, 18, 24, 23, 4, 3, 5, 6, 1, 2, 8, 7]];
cc:=[5,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[49, 50, 53, 54, 55, 56, 51, 52, 57, 58, 61, 62, 63, 64, 59, 60, 65, 66, 69, 70, 71, 72, 67, 68, 1, 2, 5, 6, 7, 8, 3, 4, 9, 10, 13, 14, 15, 16, 11, 12, 17, 18, 21, 22, 23, 24, 19, 20, 25, 26, 29, 30, 31, 32, 27, 28, 33, 34, 37, 38, 39, 40, 35, 36, 41, 42, 45, 46, 47, 48, 43, 44], [72, 71, 67, 68, 65, 66, 70, 69, 56, 55, 51, 52, 49, 50, 54, 53, 64, 63, 59, 60, 57, 58, 62, 61, 24, 23, 19, 20, 17, 18, 22, 21, 8, 7, 3, 4, 1, 2, 6, 5, 16, 15, 11, 12, 9, 10, 14, 13, 48, 47, 43, 44, 41, 42, 46, 45, 32, 31, 27, 28, 25, 26, 30, 29, 40, 39, 35, 36, 33, 34, 38, 37], [59, 60, 63, 64, 62, 61, 58, 57, 67, 68, 71, 72, 70, 69, 66, 65, 51, 52, 55, 56, 54, 53, 50, 49, 11, 12, 15, 16, 14, 13, 10, 9, 19, 20, 23, 24, 22, 21, 18, 17, 3, 4, 7, 8, 6, 5, 2, 1, 35, 36, 39, 40, 38, 37, 34, 33, 43, 44, 47, 48, 46, 45, 42, 41, 27, 28, 31, 32, 30, 29, 26, 25]];
cc:=[6,8,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[49, 50, 53, 54, 55, 56, 51, 52, 57, 58, 61, 62, 63, 64, 59, 60, 65, 66, 69, 70, 71, 72, 67, 68, 1, 2, 5, 6, 7, 8, 3, 4, 9, 10, 13, 14, 15, 16, 11, 12, 17, 18, 21, 22, 23, 24, 19, 20, 25, 26, 29, 30, 31, 32, 27, 28, 33, 34, 37, 38, 39, 40, 35, 36, 41, 42, 45, 46, 47, 48, 43, 44], [64, 63, 59, 60, 57, 58, 62, 61, 72, 71, 67, 68, 65, 66, 70, 69, 56, 55, 51, 52, 49, 50, 54, 53, 16, 15, 11, 12, 9, 10, 14, 13, 24, 23, 19, 20, 17, 18, 22, 21, 8, 7, 3, 4, 1, 2, 6, 5, 40, 39, 35, 36, 33, 34, 38, 37, 48, 47, 43, 44, 41, 42, 46, 45, 32, 31, 27, 28, 25, 26, 30, 29], [67, 68, 71, 72, 70, 69, 66, 65, 51, 52, 55, 56, 54, 53, 50, 49, 59, 60, 63, 64, 62, 61, 58, 57, 19, 20, 23, 24, 22, 21, 18, 17, 3, 4, 7, 8, 6, 5, 2, 1, 11, 12, 15, 16, 14, 13, 10, 9, 43, 44, 47, 48, 46, 45, 42, 41, 27, 28, 31, 32, 30, 29, 26, 25, 35, 36, 39, 40, 38, 37, 34, 33]];
cc:=[6,10,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[33, 34, 39, 40, 35, 36, 37, 38, 41, 42, 47, 48, 43, 44, 45, 46, 25, 26, 31, 32, 27, 28, 29, 30, 57, 58, 63, 64, 59, 60, 61, 62, 65, 66, 71, 72, 67, 68, 69, 70, 49, 50, 55, 56, 51, 52, 53, 54, 9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6], [45, 46, 43, 44, 48, 47, 42, 41, 29, 30, 27, 28, 32, 31, 26, 25, 37, 38, 35, 36, 40, 39, 34, 33, 69, 70, 67, 68, 72, 71, 66, 65, 53, 54, 51, 52, 56, 55, 50, 49, 61, 62, 59, 60, 64, 63, 58, 57, 21, 22, 19, 20, 24, 23, 18, 17, 5, 6, 3, 4, 8, 7, 2, 1, 13, 14, 11, 12, 16, 15, 10, 9], [28, 27, 29, 30, 25, 26, 32, 31, 36, 35, 37, 38, 33, 34, 40, 39, 44, 43, 45, 46, 41, 42, 48, 47, 52, 51, 53, 54, 49, 50, 56, 55, 60, 59, 61, 62, 57, 58, 64, 63, 68, 67, 69, 70, 65, 66, 72, 71, 4, 3, 5, 6, 1, 2, 8, 7, 12, 11, 13, 14, 9, 10, 16, 15, 20, 19, 21, 22, 17, 18, 24, 23]];
cc:=[7,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[65, 66, 69, 70, 71, 72, 67, 68, 49, 50, 53, 54, 55, 56, 51, 52, 57, 58, 61, 62, 63, 64, 59, 60, 17, 18, 21, 22, 23, 24, 19, 20, 1, 2, 5, 6, 7, 8, 3, 4, 9, 10, 13, 14, 15, 16, 11, 12, 41, 42, 45, 46, 47, 48, 43, 44, 25, 26, 29, 30, 31, 32, 27, 28, 33, 34, 37, 38, 39, 40, 35, 36], [64, 63, 59, 60, 57, 58, 62, 61, 72, 71, 67, 68, 65, 66, 70, 69, 56, 55, 51, 52, 49, 50, 54, 53, 16, 15, 11, 12, 9, 10, 14, 13, 24, 23, 19, 20, 17, 18, 22, 21, 8, 7, 3, 4, 1, 2, 6, 5, 40, 39, 35, 36, 33, 34, 38, 37, 48, 47, 43, 44, 41, 42, 46, 45, 32, 31, 27, 28, 25, 26, 30, 29], [51, 52, 55, 56, 54, 53, 50, 49, 59, 60, 63, 64, 62, 61, 58, 57, 67, 68, 71, 72, 70, 69, 66, 65, 3, 4, 7, 8, 6, 5, 2, 1, 11, 12, 15, 16, 14, 13, 10, 9, 19, 20, 23, 24, 22, 21, 18, 17, 27, 28, 31, 32, 30, 29, 26, 25, 35, 36, 39, 40, 38, 37, 34, 33, 43, 44, 47, 48, 46, 45, 42, 41]];
cc:=[8,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.36-6.0.3-4-12
// Create group as a permutation group and initialize signature information.
gp_id:=[36,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,12];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 26, 27, 25, 29, 30, 28, 32, 33, 31, 35, 36, 34, 20, 21, 19, 23, 24, 22], [19, 21, 20, 22, 24, 23, 25, 27, 26, 28, 30, 29, 31, 33, 32, 34, 36, 35, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8, 16, 18, 17, 13, 15, 14], [36, 35, 34, 33, 32, 31, 24, 23, 22, 21, 20, 19, 30, 29, 28, 27, 26, 25, 15, 14, 13, 18, 17, 16, 3, 2, 1, 6, 5, 4, 9, 8, 7, 12, 11, 10]];
cc:=[6,8,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 26, 27, 25, 29, 30, 28, 32, 33, 31, 35, 36, 34, 20, 21, 19, 23, 24, 22], [22, 24, 23, 19, 21, 20, 28, 30, 29, 25, 27, 26, 34, 36, 35, 31, 33, 32, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14, 16, 18, 17], [33, 32, 31, 36, 35, 34, 21, 20, 19, 24, 23, 22, 27, 26, 25, 30, 29, 28, 18, 17, 16, 15, 14, 13, 6, 5, 4, 3, 2, 1, 12, 11, 10, 9, 8, 7]];
cc:=[6,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 33, 31, 32, 36, 34, 35, 21, 19, 20, 24, 22, 23, 27, 25, 26, 30, 28, 29], [19, 21, 20, 22, 24, 23, 25, 27, 26, 28, 30, 29, 31, 33, 32, 34, 36, 35, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8, 16, 18, 17, 13, 15, 14], [29, 28, 30, 26, 25, 27, 35, 34, 36, 32, 31, 33, 23, 22, 24, 20, 19, 21, 8, 7, 9, 11, 10, 12, 14, 13, 15, 17, 16, 18, 2, 1, 3, 5, 4, 6]];
cc:=[7,8,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 33, 31, 32, 36, 34, 35, 21, 19, 20, 24, 22, 23, 27, 25, 26, 30, 28, 29], [22, 24, 23, 19, 21, 20, 28, 30, 29, 25, 27, 26, 34, 36, 35, 31, 33, 32, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14, 16, 18, 17], [26, 25, 27, 29, 28, 30, 32, 31, 33, 35, 34, 36, 20, 19, 21, 23, 22, 24, 11, 10, 12, 8, 7, 9, 17, 16, 18, 14, 13, 15, 5, 4, 6, 2, 1, 3]];
cc:=[7,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.48-33.0.2-6-12
// Create group as a permutation group and initialize signature information.
gp_id:=[48,33];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,12];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[27, 28, 26, 25, 31, 32, 30, 29, 35, 36, 34, 33, 39, 40, 38, 37, 43, 44, 42, 41, 47, 48, 46, 45, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22], [10, 9, 16, 15, 12, 11, 14, 13, 18, 17, 24, 23, 20, 19, 22, 21, 2, 1, 8, 7, 4, 3, 6, 5, 34, 33, 40, 39, 36, 35, 38, 37, 42, 41, 48, 47, 44, 43, 46, 45, 26, 25, 32, 31, 28, 27, 30, 29], [44, 43, 48, 47, 45, 46, 41, 42, 28, 27, 32, 31, 29, 30, 25, 26, 36, 35, 40, 39, 37, 38, 33, 34, 19, 20, 23, 24, 22, 21, 18, 17, 3, 4, 7, 8, 6, 5, 2, 1, 11, 12, 15, 16, 14, 13, 10, 9]];
cc:=[3,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[27, 28, 26, 25, 31, 32, 30, 29, 35, 36, 34, 33, 39, 40, 38, 37, 43, 44, 42, 41, 47, 48, 46, 45, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22], [16, 15, 9, 10, 14, 13, 11, 12, 24, 23, 17, 18, 22, 21, 19, 20, 8, 7, 1, 2, 6, 5, 3, 4, 40, 39, 33, 34, 38, 37, 35, 36, 48, 47, 41, 42, 46, 45, 43, 44, 32, 31, 25, 26, 30, 29, 27, 28], [42, 41, 46, 45, 48, 47, 44, 43, 26, 25, 30, 29, 32, 31, 28, 27, 34, 33, 38, 37, 40, 39, 36, 35, 17, 18, 21, 22, 23, 24, 19, 20, 1, 2, 5, 6, 7, 8, 3, 4, 9, 10, 13, 14, 15, 16, 11, 12]];
cc:=[3,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[27, 28, 26, 25, 31, 32, 30, 29, 35, 36, 34, 33, 39, 40, 38, 37, 43, 44, 42, 41, 47, 48, 46, 45, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22], [19, 20, 23, 24, 22, 21, 18, 17, 3, 4, 7, 8, 6, 5, 2, 1, 11, 12, 15, 16, 14, 13, 10, 9, 43, 44, 47, 48, 46, 45, 42, 41, 27, 28, 31, 32, 30, 29, 26, 25, 35, 36, 39, 40, 38, 37, 34, 33], [37, 38, 35, 36, 40, 39, 34, 33, 45, 46, 43, 44, 48, 47, 42, 41, 29, 30, 27, 28, 32, 31, 26, 25, 14, 13, 12, 11, 15, 16, 9, 10, 22, 21, 20, 19, 23, 24, 17, 18, 6, 5, 4, 3, 7, 8, 1, 2]];
cc:=[3,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[27, 28, 26, 25, 31, 32, 30, 29, 35, 36, 34, 33, 39, 40, 38, 37, 43, 44, 42, 41, 47, 48, 46, 45, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22], [18, 17, 22, 21, 24, 23, 20, 19, 2, 1, 6, 5, 8, 7, 4, 3, 10, 9, 14, 13, 16, 15, 12, 11, 42, 41, 46, 45, 48, 47, 44, 43, 26, 25, 30, 29, 32, 31, 28, 27, 34, 33, 38, 37, 40, 39, 36, 35], [36, 35, 37, 38, 33, 34, 40, 39, 44, 43, 45, 46, 41, 42, 48, 47, 28, 27, 29, 30, 25, 26, 32, 31, 11, 12, 14, 13, 10, 9, 15, 16, 19, 20, 22, 21, 18, 17, 23, 24, 3, 4, 6, 5, 2, 1, 7, 8]];
cc:=[3,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[144,127];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.16-5.0.2-2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,8,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 2, 1, 7, 8, 6, 5], [15, 16, 14, 13, 11, 12, 10, 9, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 10, 9, 15, 16, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[2,3,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 1, 2, 8, 7, 5, 6], [16, 15, 13, 14, 12, 11, 9, 10, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,3,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [12, 11, 9, 10, 16, 15, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 10, 9, 12, 11, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[2,3,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 2, 1, 7, 8, 6, 5], [16, 15, 13, 14, 12, 11, 9, 10, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,4,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [11, 12, 10, 9, 15, 16, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 10, 9, 12, 11, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[2,4,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 1, 2, 8, 7, 5, 6], [15, 16, 14, 13, 11, 12, 10, 9, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,4,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [12, 11, 9, 10, 16, 15, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[2,4,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 2, 1, 7, 8, 6, 5], [12, 11, 9, 10, 16, 15, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[3,3,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 10, 9, 15, 16, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[3,3,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [13, 14, 15, 16, 9, 10, 11, 12, 7, 8, 6, 5, 3, 4, 2, 1], [16, 15, 13, 14, 12, 11, 9, 10, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,3,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [15, 16, 14, 13, 11, 12, 10, 9, 6, 5, 8, 7, 2, 1, 4, 3], [14, 13, 16, 15, 10, 9, 12, 11, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[3,3,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 2, 1, 7, 8, 6, 5], [11, 12, 10, 9, 15, 16, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[3,4,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[32,42];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 1, 2, 8, 7, 5, 6], [12, 11, 9, 10, 16, 15, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[3,4,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[32,42];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [13, 14, 15, 16, 9, 10, 11, 12, 7, 8, 6, 5, 3, 4, 2, 1], [15, 16, 14, 13, 11, 12, 10, 9, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,4,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[32,42];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [14, 13, 16, 15, 10, 9, 12, 11, 8, 7, 5, 6, 4, 3, 1, 2], [16, 15, 13, 14, 12, 11, 9, 10, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,4,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[32,42];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 2, 1, 7, 8, 6, 5], [12, 11, 9, 10, 16, 15, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[4,4,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [11, 12, 10, 9, 15, 16, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[4,4,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [13, 14, 15, 16, 9, 10, 11, 12, 7, 8, 6, 5, 3, 4, 2, 1], [16, 15, 13, 14, 12, 11, 9, 10, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[4,4,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [15, 16, 14, 13, 11, 12, 10, 9, 6, 5, 8, 7, 2, 1, 4, 3], [14, 13, 16, 15, 10, 9, 12, 11, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[4,4,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.12-2.0.2-3-12-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,12,12];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1]];
cc:=[2,3,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[2,3,11,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[2,4,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[2,4,12,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.16-13.0.2-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,13];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [11, 12, 10, 9, 16, 15, 13, 14, 3, 4, 2, 1, 8, 7, 5, 6], [14, 13, 16, 15, 9, 10, 11, 12, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,6,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14], [11, 12, 10, 9, 16, 15, 13, 14, 3, 4, 2, 1, 8, 7, 5, 6], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,7,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[4,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14], [7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [14, 13, 16, 15, 9, 10, 11, 12, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[4,7,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[15, 16, 14, 13, 12, 11, 9, 10, 7, 8, 6, 5, 4, 3, 1, 2], [3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [11, 12, 10, 9, 16, 15, 13, 14, 3, 4, 2, 1, 8, 7, 5, 6]];
cc:=[5,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[15, 16, 14, 13, 12, 11, 9, 10, 7, 8, 6, 5, 4, 3, 1, 2], [4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14], [7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [12, 11, 9, 10, 15, 16, 14, 13, 4, 3, 1, 2, 7, 8, 6, 5]];
cc:=[5,7,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.16-6.0.2-2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,8,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 3, 4, 2, 1, 8, 7, 5, 6], [15, 16, 14, 13, 12, 11, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,3,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 10, 9, 16, 15, 13, 14, 2, 1, 4, 3, 5, 6, 7, 8], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 6, 5, 4, 3, 1, 2]];
cc:=[2,3,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 3, 4, 2, 1, 8, 7, 5, 6], [12, 11, 9, 10, 15, 16, 14, 13, 1, 2, 3, 4, 6, 5, 8, 7]];
cc:=[3,3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 6, 5, 4, 3, 1, 2], [15, 16, 14, 13, 12, 11, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,3,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.28-3.0.2-2-2-14
// Create group as a permutation group and initialize signature information.
gp_id:=[28,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,14];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [21, 20, 19, 18, 17, 16, 15, 28, 27, 26, 25, 24, 23, 22, 7, 6, 5, 4, 3, 2, 1, 14, 13, 12, 11, 10, 9, 8], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1, 23, 24, 25, 26, 27, 28, 22, 16, 17, 18, 19, 20, 21, 15]];
cc:=[2,3,3,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [19, 18, 17, 16, 15, 21, 20, 26, 25, 24, 23, 22, 28, 27, 5, 4, 3, 2, 1, 7, 6, 12, 11, 10, 9, 8, 14, 13], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3, 25, 26, 27, 28, 22, 23, 24, 18, 19, 20, 21, 15, 16, 17]];
cc:=[2,3,3,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [17, 16, 15, 21, 20, 19, 18, 24, 23, 22, 28, 27, 26, 25, 3, 2, 1, 7, 6, 5, 4, 10, 9, 8, 14, 13, 12, 11], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5, 27, 28, 22, 23, 24, 25, 26, 20, 21, 15, 16, 17, 18, 19]];
cc:=[2,3,3,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1, 23, 24, 25, 26, 27, 28, 22, 16, 17, 18, 19, 20, 21, 15]];
cc:=[2,4,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [26, 25, 24, 23, 22, 28, 27, 19, 18, 17, 16, 15, 21, 20, 12, 11, 10, 9, 8, 14, 13, 5, 4, 3, 2, 1, 7, 6], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3, 25, 26, 27, 28, 22, 23, 24, 18, 19, 20, 21, 15, 16, 17]];
cc:=[2,4,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [24, 23, 22, 28, 27, 26, 25, 17, 16, 15, 21, 20, 19, 18, 10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5, 27, 28, 22, 23, 24, 25, 26, 20, 21, 15, 16, 17, 18, 19]];
cc:=[2,4,4,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.24-3.0.2-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[24,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,3,3];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6], [13, 14, 11, 12, 16, 15, 10, 9, 21, 22, 19, 20, 24, 23, 18, 17, 5, 6, 3, 4, 8, 7, 2, 1], [11, 12, 14, 13, 10, 9, 15, 16, 19, 20, 22, 21, 18, 17, 23, 24, 3, 4, 6, 5, 2, 1, 7, 8]];
cc:=[2,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [17, 18, 21, 22, 23, 24, 19, 20, 1, 2, 5, 6, 7, 8, 3, 4, 9, 10, 13, 14, 15, 16, 11, 12], [24, 23, 19, 20, 17, 18, 22, 21, 8, 7, 3, 4, 1, 2, 6, 5, 16, 15, 11, 12, 9, 10, 14, 13], [20, 19, 24, 23, 21, 22, 17, 18, 4, 3, 8, 7, 5, 6, 1, 2, 12, 11, 16, 15, 13, 14, 9, 10]];
cc:=[2,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.32-39.0.2-2-2-8
// Create group as a permutation group and initialize signature information.
gp_id:=[32,39];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14], [29, 30, 31, 32, 25, 26, 27, 28, 24, 23, 21, 22, 20, 19, 17, 18, 13, 14, 15, 16, 9, 10, 11, 12, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[3,5,7,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [18, 17, 19, 20, 22, 21, 23, 24, 28, 27, 26, 25, 32, 31, 30, 29, 2, 1, 3, 4, 6, 5, 7, 8, 12, 11, 10, 9, 16, 15, 14, 13], [30, 29, 32, 31, 26, 25, 28, 27, 23, 24, 22, 21, 19, 20, 18, 17, 14, 13, 16, 15, 10, 9, 12, 11, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[3,5,7,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10], [25, 26, 27, 28, 29, 30, 31, 32, 20, 19, 17, 18, 24, 23, 21, 22, 9, 10, 11, 12, 13, 14, 15, 16, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[3,5,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [22, 21, 23, 24, 18, 17, 19, 20, 32, 31, 30, 29, 28, 27, 26, 25, 6, 5, 7, 8, 2, 1, 3, 4, 16, 15, 14, 13, 12, 11, 10, 9], [26, 25, 28, 27, 30, 29, 32, 31, 19, 20, 18, 17, 23, 24, 22, 21, 10, 9, 12, 11, 14, 13, 16, 15, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[3,5,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [13, 14, 16, 15, 9, 10, 12, 11, 5, 6, 8, 7, 1, 2, 4, 3, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14], [25, 26, 27, 28, 29, 30, 31, 32, 20, 19, 17, 18, 24, 23, 21, 22, 9, 10, 11, 12, 13, 14, 15, 16, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[3,6,7,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [13, 14, 16, 15, 9, 10, 12, 11, 5, 6, 8, 7, 1, 2, 4, 3, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [18, 17, 19, 20, 22, 21, 23, 24, 28, 27, 26, 25, 32, 31, 30, 29, 2, 1, 3, 4, 6, 5, 7, 8, 12, 11, 10, 9, 16, 15, 14, 13], [26, 25, 28, 27, 30, 29, 32, 31, 19, 20, 18, 17, 23, 24, 22, 21, 10, 9, 12, 11, 14, 13, 16, 15, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[3,6,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [13, 14, 16, 15, 9, 10, 12, 11, 5, 6, 8, 7, 1, 2, 4, 3, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10], [29, 30, 31, 32, 25, 26, 27, 28, 24, 23, 21, 22, 20, 19, 17, 18, 13, 14, 15, 16, 9, 10, 11, 12, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[3,6,8,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [13, 14, 16, 15, 9, 10, 12, 11, 5, 6, 8, 7, 1, 2, 4, 3, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [22, 21, 23, 24, 18, 17, 19, 20, 32, 31, 30, 29, 28, 27, 26, 25, 6, 5, 7, 8, 2, 1, 3, 4, 16, 15, 14, 13, 12, 11, 10, 9], [30, 29, 32, 31, 26, 25, 28, 27, 23, 24, 22, 21, 19, 20, 18, 17, 14, 13, 16, 15, 10, 9, 12, 11, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[3,6,8,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27], [9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [18, 17, 19, 20, 22, 21, 23, 24, 28, 27, 26, 25, 32, 31, 30, 29, 2, 1, 3, 4, 6, 5, 7, 8, 12, 11, 10, 9, 16, 15, 14, 13], [29, 30, 31, 32, 25, 26, 27, 28, 24, 23, 21, 22, 20, 19, 17, 18, 13, 14, 15, 16, 9, 10, 11, 12, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[4,5,7,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27], [9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14], [30, 29, 32, 31, 26, 25, 28, 27, 23, 24, 22, 21, 19, 20, 18, 17, 14, 13, 16, 15, 10, 9, 12, 11, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[4,5,7,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27], [9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [22, 21, 23, 24, 18, 17, 19, 20, 32, 31, 30, 29, 28, 27, 26, 25, 6, 5, 7, 8, 2, 1, 3, 4, 16, 15, 14, 13, 12, 11, 10, 9], [25, 26, 27, 28, 29, 30, 31, 32, 20, 19, 17, 18, 24, 23, 21, 22, 9, 10, 11, 12, 13, 14, 15, 16, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[4,5,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27], [9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10], [26, 25, 28, 27, 30, 29, 32, 31, 19, 20, 18, 17, 23, 24, 22, 21, 10, 9, 12, 11, 14, 13, 16, 15, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[4,5,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27], [13, 14, 16, 15, 9, 10, 12, 11, 5, 6, 8, 7, 1, 2, 4, 3, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [18, 17, 19, 20, 22, 21, 23, 24, 28, 27, 26, 25, 32, 31, 30, 29, 2, 1, 3, 4, 6, 5, 7, 8, 12, 11, 10, 9, 16, 15, 14, 13], [25, 26, 27, 28, 29, 30, 31, 32, 20, 19, 17, 18, 24, 23, 21, 22, 9, 10, 11, 12, 13, 14, 15, 16, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[4,6,7,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27], [13, 14, 16, 15, 9, 10, 12, 11, 5, 6, 8, 7, 1, 2, 4, 3, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14], [26, 25, 28, 27, 30, 29, 32, 31, 19, 20, 18, 17, 23, 24, 22, 21, 10, 9, 12, 11, 14, 13, 16, 15, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[4,6,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27], [13, 14, 16, 15, 9, 10, 12, 11, 5, 6, 8, 7, 1, 2, 4, 3, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [22, 21, 23, 24, 18, 17, 19, 20, 32, 31, 30, 29, 28, 27, 26, 25, 6, 5, 7, 8, 2, 1, 3, 4, 16, 15, 14, 13, 12, 11, 10, 9], [29, 30, 31, 32, 25, 26, 27, 28, 24, 23, 21, 22, 20, 19, 17, 18, 13, 14, 15, 16, 9, 10, 11, 12, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[4,6,8,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27], [13, 14, 16, 15, 9, 10, 12, 11, 5, 6, 8, 7, 1, 2, 4, 3, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [21, 22, 24, 23, 17, 18, 20, 19, 31, 32, 29, 30, 27, 28, 25, 26, 5, 6, 8, 7, 1, 2, 4, 3, 15, 16, 13, 14, 11, 12, 9, 10], [30, 29, 32, 31, 26, 25, 28, 27, 23, 24, 22, 21, 19, 20, 18, 17, 14, 13, 16, 15, 10, 9, 12, 11, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[4,6,8,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11, 22, 21, 24, 23, 18, 17, 20, 19, 30, 29, 32, 31, 26, 25, 28, 27];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.24-5.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[24,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[3,3,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,38];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,41];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4], [24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[3,4,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[48,41];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[4,4,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[48,38];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.24-12.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[24,12];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8], [13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8], [24, 21, 22, 23, 20, 17, 18, 19, 16, 13, 14, 15, 12, 9, 10, 11, 8, 5, 6, 7, 4, 1, 2, 3], [22, 23, 24, 21, 18, 19, 20, 17, 14, 15, 16, 13, 10, 11, 12, 9, 6, 7, 8, 5, 2, 3, 4, 1]];
cc:=[3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,48];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.8-1.0.8-8-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[8,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,8,8,8,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 2, 1], [5, 6, 7, 8, 3, 4, 2, 1], [5, 6, 7, 8, 3, 4, 2, 1], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[5,5,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 2, 1], [5, 6, 7, 8, 3, 4, 2, 1], [7, 8, 6, 5, 2, 1, 4, 3], [7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[5,5,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 2, 1], [5, 6, 7, 8, 3, 4, 2, 1], [8, 7, 5, 6, 1, 2, 3, 4], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[5,5,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 2, 1], [7, 8, 6, 5, 2, 1, 4, 3], [6, 5, 8, 7, 4, 3, 1, 2], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[5,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 2, 1], [6, 5, 8, 7, 4, 3, 1, 2], [6, 5, 8, 7, 4, 3, 1, 2], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[5,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 2, 1, 4, 3], [7, 8, 6, 5, 2, 1, 4, 3], [7, 8, 6, 5, 2, 1, 4, 3], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[6,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 2, 1, 4, 3], [7, 8, 6, 5, 2, 1, 4, 3], [6, 5, 8, 7, 4, 3, 1, 2], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[6,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 2, 1, 4, 3], [8, 7, 5, 6, 1, 2, 3, 4], [8, 7, 5, 6, 1, 2, 3, 4], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[6,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 4, 3, 1, 2], [6, 5, 8, 7, 4, 3, 1, 2], [8, 7, 5, 6, 1, 2, 3, 4], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[7,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.12-1.0.4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[12,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1]];
cc:=[4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,38];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4], [12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,38];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 7, 9, 8, 1, 3, 2, 4, 6, 5], [10, 12, 11, 7, 9, 8, 1, 3, 2, 4, 6, 5], [12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4], [12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[5,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[48,38];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.18-3.0.2-2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[18,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,6,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [15, 14, 13, 18, 17, 16, 12, 11, 10, 6, 5, 4, 9, 8, 7, 3, 2, 1], [18, 17, 16, 12, 11, 10, 15, 14, 13, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[2,2,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.9-1.0.3-9-9-9
// Create group as a permutation group and initialize signature information.
gp_id:=[9,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,9,9,9];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 2, 3, 1], [4, 5, 6, 7, 8, 9, 2, 3, 1], [5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[2,4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 2, 3, 1], [6, 4, 5, 9, 7, 8, 1, 2, 3], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[2,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 2, 3, 1, 5, 6, 4], [7, 8, 9, 2, 3, 1, 5, 6, 4], [7, 8, 9, 2, 3, 1, 5, 6, 4]];
cc:=[2,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 2, 3, 1, 5, 6, 4], [8, 9, 7, 3, 1, 2, 6, 4, 5], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[2,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [5, 6, 4, 8, 9, 7, 3, 1, 2], [5, 6, 4, 8, 9, 7, 3, 1, 2], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[2,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [8, 9, 7, 3, 1, 2, 6, 4, 5], [8, 9, 7, 3, 1, 2, 6, 4, 5], [8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[2,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [9, 7, 8, 1, 2, 3, 4, 5, 6], [9, 7, 8, 1, 2, 3, 4, 5, 6], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[2,9,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 2, 3, 1], [4, 5, 6, 7, 8, 9, 2, 3, 1], [4, 5, 6, 7, 8, 9, 2, 3, 1]];
cc:=[3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 2, 3, 1], [5, 6, 4, 8, 9, 7, 3, 1, 2], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[3,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 2, 3, 1, 5, 6, 4], [7, 8, 9, 2, 3, 1, 5, 6, 4], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[3,5,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 2, 3, 1, 5, 6, 4], [8, 9, 7, 3, 1, 2, 6, 4, 5], [8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[3,5,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 3, 1, 2], [5, 6, 4, 8, 9, 7, 3, 1, 2], [5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[3,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [8, 9, 7, 3, 1, 2, 6, 4, 5], [9, 7, 8, 1, 2, 3, 4, 5, 6], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[3,7,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [6, 4, 5, 9, 7, 8, 1, 2, 3], [6, 4, 5, 9, 7, 8, 1, 2, 3], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[3,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.10-2.0.2-10-10-10
// Create group as a permutation group and initialize signature information.
gp_id:=[10,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,10,10,10];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[2,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[2,7,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[2,8,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[2,9,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.12-1.0.3-4-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,4,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[3,4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [10, 12, 11, 7, 9, 8, 1, 3, 2, 4, 6, 5], [10, 12, 11, 7, 9, 8, 1, 3, 2, 4, 6, 5], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[3,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.12-2.0.3-4-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,4,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9]];
cc:=[3,5,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9]];
cc:=[3,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7]];
cc:=[4,5,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7]];
cc:=[4,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.12-2.0.3-3-4-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,4,12];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[3,3,5,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1]];
cc:=[3,3,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[4,4,5,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[4,4,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 7.12-5.0.2-6-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,6,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[2,7,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[2,7,11,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[2,8,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,8,12,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[3,7,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[3,8,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[3,9,11,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[3,10,12,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[4,7,7,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[4,8,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[4,9,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[4,10,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.12-2.0.2-4-6-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,6,12];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[2,5,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[2,5,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[2,6,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1]];
cc:=[2,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.16-2.0.2-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[2,5,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,5,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,5,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,5,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,6,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,6,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[2,6,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,6,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,7,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[2,7,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,7,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,7,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,8,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,8,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,8,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[2,8,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,5,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,5,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,5,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,5,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,6,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,6,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,6,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,6,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,7,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,7,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,7,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,7,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,8,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=29;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,8,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=30;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,8,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=31;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,8,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=32;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[4,5,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=33;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[4,5,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=34;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,5,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=35;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[4,5,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=36;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,6,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=37;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[4,6,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=38;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[4,6,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=39;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[4,6,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=40;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[4,7,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=41;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[4,7,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=42;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[4,7,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=43;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,7,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=44;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[4,8,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=45;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,8,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=46;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[4,8,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=47;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[4,8,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=48;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.16-4.0.2-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 3, 4, 1, 2, 13, 14, 15, 16, 11, 12, 9, 10], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 3, 4, 1, 2, 13, 14, 15, 16, 11, 12, 9, 10], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 4, 3, 2, 1, 14, 13, 16, 15, 12, 11, 10, 9], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,6,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 4, 3, 2, 1, 14, 13, 16, 15, 12, 11, 10, 9], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 3, 4, 1, 2, 13, 14, 15, 16, 11, 12, 9, 10], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 3, 4, 1, 2, 13, 14, 15, 16, 11, 12, 9, 10], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 4, 3, 2, 1, 14, 13, 16, 15, 12, 11, 10, 9], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 4, 3, 2, 1, 14, 13, 16, 15, 12, 11, 10, 9], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 3, 4, 1, 2, 13, 14, 15, 16, 11, 12, 9, 10], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 3, 4, 1, 2, 13, 14, 15, 16, 11, 12, 9, 10], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[4,5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 4, 3, 2, 1, 14, 13, 16, 15, 12, 11, 10, 9], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[4,6,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 4, 3, 2, 1, 14, 13, 16, 15, 12, 11, 10, 9], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.16-12.0.2-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,12];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [9, 10, 11, 12, 14, 13, 16, 15, 2, 1, 4, 3, 5, 6, 7, 8], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [11, 12, 9, 10, 16, 15, 14, 13, 4, 3, 2, 1, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [9, 10, 11, 12, 14, 13, 16, 15, 2, 1, 4, 3, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [11, 12, 9, 10, 16, 15, 14, 13, 4, 3, 2, 1, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [9, 10, 11, 12, 14, 13, 16, 15, 2, 1, 4, 3, 5, 6, 7, 8], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [11, 12, 9, 10, 16, 15, 14, 13, 4, 3, 2, 1, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[4,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [9, 10, 11, 12, 14, 13, 16, 15, 2, 1, 4, 3, 5, 6, 7, 8], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[4,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [11, 12, 9, 10, 16, 15, 14, 13, 4, 3, 2, 1, 7, 8, 5, 6], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.48-38.0.2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[48,38];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 31, 33, 32, 34, 36, 35, 37, 39, 38, 40, 42, 41, 43, 45, 44, 46, 48, 47, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23], [31, 33, 32, 34, 36, 35, 25, 27, 26, 28, 30, 29, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [39, 38, 37, 42, 41, 40, 48, 47, 46, 45, 44, 43, 27, 26, 25, 30, 29, 28, 36, 35, 34, 33, 32, 31, 15, 14, 13, 18, 17, 16, 24, 23, 22, 21, 20, 19, 3, 2, 1, 6, 5, 4, 12, 11, 10, 9, 8, 7], [45, 44, 43, 48, 47, 46, 42, 41, 40, 39, 38, 37, 33, 32, 31, 36, 35, 34, 30, 29, 28, 27, 26, 25, 21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1]];
cc:=[5,7,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 25, 27, 26, 34, 36, 35, 31, 33, 32, 40, 42, 41, 37, 39, 38, 46, 48, 47, 43, 45, 44, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8, 16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20], [31, 33, 32, 34, 36, 35, 25, 27, 26, 28, 30, 29, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [39, 38, 37, 42, 41, 40, 48, 47, 46, 45, 44, 43, 27, 26, 25, 30, 29, 28, 36, 35, 34, 33, 32, 31, 15, 14, 13, 18, 17, 16, 24, 23, 22, 21, 20, 19, 3, 2, 1, 6, 5, 4, 12, 11, 10, 9, 8, 7], [48, 47, 46, 45, 44, 43, 39, 38, 37, 42, 41, 40, 36, 35, 34, 33, 32, 31, 27, 26, 25, 30, 29, 28, 24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[6,7,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.48-48.0.2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[48,48];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 33, 35, 34, 36, 29, 31, 30, 32, 37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8, 13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20], [28, 26, 27, 25, 36, 34, 35, 33, 32, 30, 31, 29, 40, 38, 39, 37, 48, 46, 47, 45, 44, 42, 43, 41, 4, 2, 3, 1, 12, 10, 11, 9, 8, 6, 7, 5, 16, 14, 15, 13, 24, 22, 23, 21, 20, 18, 19, 17], [45, 48, 47, 46, 41, 44, 43, 42, 37, 40, 39, 38, 33, 36, 35, 34, 29, 32, 31, 30, 25, 28, 27, 26, 21, 24, 23, 22, 17, 20, 19, 18, 13, 16, 15, 14, 9, 12, 11, 10, 5, 8, 7, 6, 1, 4, 3, 2], [48, 45, 46, 47, 44, 41, 42, 43, 40, 37, 38, 39, 36, 33, 34, 35, 32, 29, 30, 31, 28, 25, 26, 27, 24, 21, 22, 23, 20, 17, 18, 19, 16, 13, 14, 15, 12, 9, 10, 11, 8, 5, 6, 7, 4, 1, 2, 3]];
cc:=[5,5,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 33, 35, 34, 36, 29, 31, 30, 32, 37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8, 13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20], [40, 38, 39, 37, 48, 46, 47, 45, 44, 42, 43, 41, 28, 26, 27, 25, 36, 34, 35, 33, 32, 30, 31, 29, 16, 14, 15, 13, 24, 22, 23, 21, 20, 18, 19, 17, 4, 2, 3, 1, 12, 10, 11, 9, 8, 6, 7, 5], [45, 48, 47, 46, 41, 44, 43, 42, 37, 40, 39, 38, 33, 36, 35, 34, 29, 32, 31, 30, 25, 28, 27, 26, 21, 24, 23, 22, 17, 20, 19, 18, 13, 16, 15, 14, 9, 12, 11, 10, 5, 8, 7, 6, 1, 4, 3, 2], [36, 33, 34, 35, 32, 29, 30, 31, 28, 25, 26, 27, 48, 45, 46, 47, 44, 41, 42, 43, 40, 37, 38, 39, 12, 9, 10, 11, 8, 5, 6, 7, 4, 1, 2, 3, 24, 21, 22, 23, 20, 17, 18, 19, 16, 13, 14, 15]];
cc:=[5,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.18-3.0.2-3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[18,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,3,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [17, 16, 18, 11, 10, 12, 14, 13, 15, 8, 7, 9, 2, 1, 3, 5, 4, 6]];
cc:=[2,3,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [14, 13, 15, 17, 16, 18, 11, 10, 12, 5, 4, 6, 8, 7, 9, 2, 1, 3]];
cc:=[2,3,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [14, 13, 15, 17, 16, 18, 11, 10, 12, 5, 4, 6, 8, 7, 9, 2, 1, 3]];
cc:=[2,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [18, 17, 16, 12, 11, 10, 15, 14, 13, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[2,4,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [18, 17, 16, 12, 11, 10, 15, 14, 13, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[2,5,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [13, 15, 14, 16, 18, 17, 10, 12, 11, 4, 6, 5, 7, 9, 8, 1, 3, 2]];
cc:=[2,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [15, 14, 13, 18, 17, 16, 12, 11, 10, 6, 5, 4, 9, 8, 7, 3, 2, 1]];
cc:=[2,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [17, 16, 18, 11, 10, 12, 14, 13, 15, 8, 7, 9, 2, 1, 3, 5, 4, 6]];
cc:=[2,7,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.18-5.0.2-3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[18,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,3,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [18, 16, 17, 12, 10, 11, 15, 13, 14, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[2,3,5,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [15, 13, 14, 18, 16, 17, 12, 10, 11, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,3,6,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [17, 18, 16, 11, 12, 10, 14, 15, 13, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,3,7,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [13, 14, 15, 16, 17, 18, 10, 11, 12, 4, 5, 6, 7, 8, 9, 1, 2, 3]];
cc:=[2,3,8,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11], [16, 17, 18, 10, 11, 12, 13, 14, 15, 7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[2,3,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [14, 15, 13, 17, 18, 16, 11, 12, 10, 5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[2,3,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [17, 18, 16, 11, 12, 10, 14, 15, 13, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,4,5,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [14, 15, 13, 17, 18, 16, 11, 12, 10, 5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[2,4,6,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [16, 17, 18, 10, 11, 12, 13, 14, 15, 7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[2,4,7,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [15, 13, 14, 18, 16, 17, 12, 10, 11, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,4,8,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11], [18, 16, 17, 12, 10, 11, 15, 13, 14, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[2,4,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [13, 14, 15, 16, 17, 18, 10, 11, 12, 4, 5, 6, 7, 8, 9, 1, 2, 3]];
cc:=[2,4,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [15, 13, 14, 18, 16, 17, 12, 10, 11, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,5,7,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7]];
cc:=[2,5,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11], [14, 15, 13, 17, 18, 16, 11, 12, 10, 5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[2,5,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8]];
cc:=[2,5,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8]];
cc:=[2,6,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [17, 18, 16, 11, 12, 10, 14, 15, 13, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,6,8,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11], [11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7]];
cc:=[2,6,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [18, 16, 17, 12, 10, 11, 15, 13, 14, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[2,6,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11], [13, 14, 15, 16, 17, 18, 10, 11, 12, 4, 5, 6, 7, 8, 9, 1, 2, 3]];
cc:=[2,7,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7]];
cc:=[2,7,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11], [12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8]];
cc:=[2,8,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [16, 17, 18, 10, 11, 12, 13, 14, 15, 7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[2,8,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.24-13.0.2-2-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,13];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15], [22, 24, 23, 21, 14, 16, 15, 13, 18, 20, 19, 17, 10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5]];
cc:=[2,3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6, 21, 23, 24, 22, 13, 15, 16, 14, 17, 19, 20, 18], [18, 19, 17, 20, 22, 23, 21, 24, 14, 15, 13, 16, 6, 7, 5, 8, 10, 11, 9, 12, 2, 3, 1, 4]];
cc:=[2,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15], [21, 23, 24, 22, 13, 15, 16, 14, 17, 19, 20, 18, 9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6]];
cc:=[3,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6, 21, 23, 24, 22, 13, 15, 16, 14, 17, 19, 20, 18], [17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15, 5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3]];
cc:=[3,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.32-42.0.2-2-2-8
// Create group as a permutation group and initialize signature information.
gp_id:=[32,42];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 4, 3, 1, 2, 15, 16, 14, 13, 12, 11, 9, 10, 23, 24, 22, 21, 20, 19, 17, 18, 31, 32, 30, 29, 28, 27, 25, 26], [9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [17, 18, 20, 19, 21, 22, 24, 23, 27, 28, 25, 26, 31, 32, 29, 30, 1, 2, 4, 3, 5, 6, 8, 7, 11, 12, 9, 10, 15, 16, 13, 14], [31, 32, 30, 29, 28, 27, 25, 26, 21, 22, 23, 24, 18, 17, 20, 19, 15, 16, 14, 13, 12, 11, 9, 10, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,4,5,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 4, 3, 1, 2, 15, 16, 14, 13, 12, 11, 9, 10, 23, 24, 22, 21, 20, 19, 17, 18, 31, 32, 30, 29, 28, 27, 25, 26], [9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [18, 17, 19, 20, 22, 21, 23, 24, 28, 27, 26, 25, 32, 31, 30, 29, 2, 1, 3, 4, 6, 5, 7, 8, 12, 11, 10, 9, 16, 15, 14, 13], [32, 31, 29, 30, 27, 28, 26, 25, 22, 21, 24, 23, 17, 18, 19, 20, 16, 15, 13, 14, 11, 12, 10, 9, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,4,5,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.32-43.0.2-2-2-8
// Create group as a permutation group and initialize signature information.
gp_id:=[32,43];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [17, 18, 20, 19, 22, 21, 23, 24, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 4, 3, 6, 5, 7, 8, 11, 12, 9, 10, 16, 15, 14, 13], [29, 30, 31, 32, 26, 25, 28, 27, 24, 23, 21, 22, 19, 20, 18, 17, 13, 14, 15, 16, 10, 9, 12, 11, 8, 7, 5, 6, 3, 4, 2, 1]];
cc:=[3,4,6,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [13, 14, 16, 15, 9, 10, 12, 11, 5, 6, 8, 7, 1, 2, 4, 3, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [17, 18, 20, 19, 22, 21, 23, 24, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 4, 3, 6, 5, 7, 8, 11, 12, 9, 10, 16, 15, 14, 13], [25, 26, 27, 28, 30, 29, 32, 31, 20, 19, 17, 18, 23, 24, 22, 21, 9, 10, 11, 12, 14, 13, 16, 15, 4, 3, 1, 2, 7, 8, 6, 5]];
cc:=[3,5,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.36-10.0.2-2-2-6
// Create group as a permutation group and initialize signature information.
gp_id:=[36,10];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 16, 17, 18, 13, 14, 15, 1, 2, 3, 7, 8, 9, 4, 5, 6, 28, 29, 30, 34, 35, 36, 31, 32, 33, 19, 20, 21, 25, 26, 27, 22, 23, 24], [28, 30, 29, 34, 36, 35, 31, 33, 32, 19, 21, 20, 25, 27, 26, 22, 24, 23, 10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [17, 18, 16, 14, 15, 13, 11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1, 35, 36, 34, 32, 33, 31, 29, 30, 28, 26, 27, 25, 23, 24, 22, 20, 21, 19]];
cc:=[2,4,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[19, 21, 20, 22, 24, 23, 25, 27, 26, 28, 30, 29, 31, 33, 32, 34, 36, 35, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14, 16, 18, 17], [28, 30, 29, 34, 36, 35, 31, 33, 32, 19, 21, 20, 25, 27, 26, 22, 24, 23, 10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [24, 23, 22, 27, 26, 25, 21, 20, 19, 33, 32, 31, 36, 35, 34, 30, 29, 28, 6, 5, 4, 9, 8, 7, 3, 2, 1, 15, 14, 13, 18, 17, 16, 12, 11, 10]];
cc:=[3,4,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.48-41.0.2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[48,41];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 37, 39, 38, 40, 42, 41, 46, 48, 47, 43, 45, 44, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20], [31, 33, 32, 34, 36, 35, 25, 27, 26, 28, 30, 29, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [45, 44, 43, 48, 47, 46, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 27, 26, 25, 30, 29, 28, 21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4], [39, 38, 37, 42, 41, 40, 45, 44, 43, 48, 47, 46, 30, 29, 28, 27, 26, 25, 36, 35, 34, 33, 32, 31, 15, 14, 13, 18, 17, 16, 21, 20, 19, 24, 23, 22, 6, 5, 4, 3, 2, 1, 12, 11, 10, 9, 8, 7]];
cc:=[3,4,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 37, 39, 38, 40, 42, 41, 46, 48, 47, 43, 45, 44, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20], [31, 33, 32, 34, 36, 35, 25, 27, 26, 28, 30, 29, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [48, 47, 46, 45, 44, 43, 39, 38, 37, 42, 41, 40, 33, 32, 31, 36, 35, 34, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [42, 41, 40, 39, 38, 37, 48, 47, 46, 45, 44, 43, 27, 26, 25, 30, 29, 28, 33, 32, 31, 36, 35, 34, 18, 17, 16, 15, 14, 13, 24, 23, 22, 21, 20, 19, 3, 2, 1, 6, 5, 4, 9, 8, 7, 12, 11, 10]];
cc:=[3,4,5,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.14-2.0.2-2-14-14
// Create group as a permutation group and initialize signature information.
gp_id:=[14,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,14,14];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1], [14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6]];
cc:=[2,2,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3], [12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4]];
cc:=[2,2,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5], [10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2]];
cc:=[2,2,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.16-7.0.2-2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,7];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,8,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [13, 14, 15, 16, 12, 11, 9, 10, 5, 6, 7, 8, 4, 3, 1, 2], [15, 16, 14, 13, 9, 10, 11, 12, 7, 8, 6, 5, 1, 2, 3, 4]];
cc:=[3,3,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [6, 5, 7, 8, 2, 1, 3, 4, 14, 13, 15, 16, 10, 9, 11, 12], [13, 14, 15, 16, 12, 11, 9, 10, 5, 6, 7, 8, 4, 3, 1, 2], [16, 15, 13, 14, 10, 9, 12, 11, 8, 7, 5, 6, 2, 1, 4, 3]];
cc:=[3,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [16, 15, 13, 14, 10, 9, 12, 11, 8, 7, 5, 6, 2, 1, 4, 3], [14, 13, 16, 15, 11, 12, 10, 9, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[3,3,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [13, 14, 15, 16, 12, 11, 9, 10, 5, 6, 7, 8, 4, 3, 1, 2], [15, 16, 14, 13, 9, 10, 11, 12, 7, 8, 6, 5, 1, 2, 3, 4]];
cc:=[4,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [10, 9, 11, 12, 16, 15, 14, 13, 2, 1, 3, 4, 8, 7, 6, 5], [13, 14, 15, 16, 12, 11, 9, 10, 5, 6, 7, 8, 4, 3, 1, 2], [16, 15, 13, 14, 10, 9, 12, 11, 8, 7, 5, 6, 2, 1, 4, 3]];
cc:=[4,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [16, 15, 13, 14, 10, 9, 12, 11, 8, 7, 5, 6, 2, 1, 4, 3], [14, 13, 16, 15, 11, 12, 10, 9, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[4,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[32,39];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.16-8.0.2-2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,8,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [6, 5, 7, 8, 2, 1, 3, 4, 14, 13, 15, 16, 10, 9, 11, 12], [13, 14, 15, 16, 12, 11, 9, 10, 6, 5, 8, 7, 3, 4, 2, 1], [15, 16, 14, 13, 9, 10, 11, 12, 8, 7, 5, 6, 2, 1, 4, 3]];
cc:=[3,3,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,42];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [13, 14, 15, 16, 12, 11, 9, 10, 6, 5, 8, 7, 3, 4, 2, 1], [16, 15, 13, 14, 10, 9, 12, 11, 7, 8, 6, 5, 1, 2, 3, 4]];
cc:=[3,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [6, 5, 7, 8, 2, 1, 3, 4, 14, 13, 15, 16, 10, 9, 11, 12], [14, 13, 16, 15, 11, 12, 10, 9, 5, 6, 7, 8, 4, 3, 1, 2], [16, 15, 13, 14, 10, 9, 12, 11, 7, 8, 6, 5, 1, 2, 3, 4]];
cc:=[3,3,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,42];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.24-8.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[24,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[4,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,38];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 7.16-7.0.2-2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,7];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [12, 11, 10, 9, 13, 14, 16, 15, 4, 3, 2, 1, 5, 6, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13]];
cc:=[3,3,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.6-2.0.3-6-6-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,6,6,6,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2]];
cc:=[3,5,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[3,6,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[4,5,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[4,5,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.8-2.0.2-4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,5,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,5,5,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,5,5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,5,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,5,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,5,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,6,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,6,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,6,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,5,5,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[4,5,5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,5,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,5,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,5,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[4,6,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[4,6,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,6,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.8-4.0.2-4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 8, 7, 2, 1, 3, 4], [6, 5, 7, 8, 1, 2, 4, 3]];
cc:=[2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [3, 4, 2, 1, 7, 8, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 8, 7, 2, 1, 3, 4], [5, 6, 8, 7, 2, 1, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.8-1.0.2-2-4-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[8,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,8,8];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 7, 8, 3, 4, 2, 1], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[2,2,3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [7, 8, 6, 5, 2, 1, 4, 3], [7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[2,2,3,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [8, 7, 5, 6, 1, 2, 3, 4], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,2,3,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 1, 2, 8, 7, 5, 6], [5, 6, 7, 8, 3, 4, 2, 1], [5, 6, 7, 8, 3, 4, 2, 1]];
cc:=[2,2,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 1, 2, 8, 7, 5, 6], [7, 8, 6, 5, 2, 1, 4, 3], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,2,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 1, 2, 8, 7, 5, 6], [6, 5, 8, 7, 4, 3, 1, 2], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[2,2,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.9-2.0.3-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[9,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3,3];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[2,2,2,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[2,2,2,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,2,2,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[2,2,3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,2,3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 2, 3, 1], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,2,3,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[2,2,4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,2,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,2,5,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[2,2,5,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,2,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,2,7,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,3,3,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[2,3,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,3,3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3]];
cc:=[2,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,3,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[2,3,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,3,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[2,3,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[2,3,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,3,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,3,9,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[2,4,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,4,4,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,4,5,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,4,5,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[2,4,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,4,7,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=29;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[2,5,5,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=30;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,5,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=31;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 1, 2, 3, 4, 5, 6], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,5,8,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=32;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,6,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=33;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,6,8,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=34;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,7,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=35;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[3,3,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=36;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[3,3,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=37;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,3,3,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=38;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[3,3,4,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=39;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[3,3,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=40;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[3,3,5,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=41;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,3,5,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=42;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[3,3,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=43;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,3,7,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=44;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,4,4,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=45;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[3,4,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=46;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[3,4,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=47;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[3,4,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=48;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,4,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=49;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,4,8,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=50;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[3,5,5,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=51;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[3,5,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=52;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,5,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=53;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,6,6,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=54;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[3,6,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=55;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,7,8,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=56;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[4,4,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=57;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[4,4,4,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=58;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[4,4,5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=59;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[4,4,6,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=60;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[4,4,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=61;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[4,5,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=62;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[4,5,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=63;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[4,5,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=64;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[4,5,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=65;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[4,5,9,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=66;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[4,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=67;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[4,6,8,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=68;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[4,7,7,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=69;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[5,5,5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=70;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[5,5,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=71;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[5,5,6,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=72;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[5,5,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=73;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[5,6,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=74;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[5,6,7,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=75;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[5,7,8,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=76;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[6,6,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=77;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[6,7,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=78;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[6,7,9,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=79;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 4, 5, 9, 7, 8, 3, 1, 2];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[7,7,7,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=80;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 7.10-2.0.2-2-2-5-10
// Create group as a permutation group and initialize signature information.
gp_id:=[10,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,5,10];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[2,2,2,3,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[2,2,2,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[2,2,2,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[2,2,2,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.12-3.0.2-2-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[12,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3,3];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3]];
cc:=[2,2,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6], [9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6], [9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6]];
cc:=[2,2,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.12-4.0.2-2-2-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[2,3,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[2,4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.12-5.0.2-2-2-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[2,2,3,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[2,2,3,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,2,4,5,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[2,2,4,6,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[2,3,3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[2,3,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[2,4,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[2,4,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[3,3,4,5,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[3,3,4,6,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[3,4,4,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[3,4,4,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.14-1.0.2-2-2-2-7
// Create group as a permutation group and initialize signature information.
gp_id:=[14,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,7];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8]];
cc:=[2,2,2,2,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4], [6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12]];
cc:=[2,2,2,2,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [12, 11, 10, 9, 8, 14, 13, 5, 4, 3, 2, 1, 7, 6], [4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10]];
cc:=[2,2,2,2,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.16-11.0.2-2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,11];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [16, 15, 14, 13, 11, 12, 9, 10, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,3,5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [14, 13, 16, 15, 9, 10, 11, 12, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,3,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [14, 13, 16, 15, 9, 10, 11, 12, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,3,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [16, 15, 14, 13, 11, 12, 9, 10, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,3,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,4,5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[2,4,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[2,4,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,4,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,3,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,3,5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,3,6,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,3,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [14, 13, 16, 15, 9, 10, 11, 12, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,4,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [16, 15, 14, 13, 11, 12, 9, 10, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,4,5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [16, 15, 14, 13, 11, 12, 9, 10, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,4,6,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [14, 13, 16, 15, 9, 10, 11, 12, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,4,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[4,4,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[4,4,5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[4,4,6,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[4,4,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[5,5,6,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[5,5,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[5,6,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[5,6,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[5,7,7,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[5,7,8,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[6,7,7,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[6,7,8,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.16-13.0.2-2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,13];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 14, 13, 12, 11, 9, 10, 7, 8, 6, 5, 4, 3, 1, 2], [3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13]];
cc:=[2,3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [16, 15, 13, 14, 11, 12, 10, 9, 8, 7, 5, 6, 3, 4, 2, 1], [4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14]];
cc:=[2,3,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 14, 13, 12, 11, 9, 10, 7, 8, 6, 5, 4, 3, 1, 2], [8, 7, 5, 6, 4, 3, 1, 2, 16, 15, 13, 14, 12, 11, 9, 10]];
cc:=[3,3,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 14, 13, 12, 11, 9, 10, 7, 8, 6, 5, 4, 3, 1, 2], [11, 12, 10, 9, 16, 15, 13, 14, 3, 4, 2, 1, 8, 7, 5, 6]];
cc:=[3,4,4,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 14, 13, 12, 11, 9, 10, 7, 8, 6, 5, 4, 3, 1, 2], [15, 16, 14, 13, 12, 11, 9, 10, 7, 8, 6, 5, 4, 3, 1, 2], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,4,5,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.18-1.0.2-2-2-2-3
// Create group as a permutation group and initialize signature information.
gp_id:=[18,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,3];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [16, 18, 17, 13, 15, 14, 10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16]];
cc:=[2,2,2,2,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.18-4.0.2-2-2-2-3
// Create group as a permutation group and initialize signature information.
gp_id:=[18,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,3];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [16, 18, 17, 13, 15, 14, 10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16]];
cc:=[2,2,2,2,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [12, 11, 10, 18, 17, 16, 15, 14, 13, 3, 2, 1, 9, 8, 7, 6, 5, 4], [18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12]];
cc:=[2,2,2,2,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [12, 11, 10, 18, 17, 16, 15, 14, 13, 3, 2, 1, 9, 8, 7, 6, 5, 4], [17, 16, 18, 14, 13, 15, 11, 10, 12, 8, 7, 9, 5, 4, 6, 2, 1, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10]];
cc:=[2,2,2,2,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [12, 11, 10, 18, 17, 16, 15, 14, 13, 3, 2, 1, 9, 8, 7, 6, 5, 4], [16, 18, 17, 13, 15, 14, 10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11]];
cc:=[2,2,2,2,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.24-6.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[24,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.24-12.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[24,12];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8], [13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8], [17, 18, 20, 19, 13, 14, 16, 15, 21, 22, 24, 23, 5, 6, 8, 7, 1, 2, 4, 3, 9, 10, 12, 11], [18, 17, 19, 20, 14, 13, 15, 16, 22, 21, 23, 24, 6, 5, 7, 8, 2, 1, 3, 4, 10, 9, 11, 12]];
cc:=[2,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.24-14.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[24,14];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4]];
cc:=[2,5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [18, 17, 16, 15, 14, 13, 24, 23, 22, 21, 20, 19, 6, 5, 4, 3, 2, 1, 12, 11, 10, 9, 8, 7], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [18, 17, 16, 15, 14, 13, 24, 23, 22, 21, 20, 19, 6, 5, 4, 3, 2, 1, 12, 11, 10, 9, 8, 7], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4]];
cc:=[3,5,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,6,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [18, 17, 16, 15, 14, 13, 24, 23, 22, 21, 20, 19, 6, 5, 4, 3, 2, 1, 12, 11, 10, 9, 8, 7], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4]];
cc:=[4,5,5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [18, 17, 16, 15, 14, 13, 24, 23, 22, 21, 20, 19, 6, 5, 4, 3, 2, 1, 12, 11, 10, 9, 8, 7], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,6,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.6-2.0.2-3-3-3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,3,3,3,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [6, 4, 5, 3, 1, 2]];
cc:=[2,3,3,3,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1]];
cc:=[2,3,3,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2]];
cc:=[2,3,4,4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1]];
cc:=[2,4,4,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 7.6-2.0.2-2-3-3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3,6,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,3,3,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[2,2,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.8-2.0.2-2-2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,2,2,3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,2,2,3,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,2,2,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,2,2,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,2,3,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,2,3,3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[2,2,3,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,2,3,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,2,3,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,2,3,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,2,4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,2,4,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,3,3,3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,3,3,3,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,3,3,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,3,3,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,3,4,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,3,4,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,4,4,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,4,4,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,3,3,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,3,3,3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,3,3,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,3,3,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,3,3,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,3,3,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,3,4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,3,4,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,4,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=29;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,4,4,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=30;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,4,4,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=31;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,4,4,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=32;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[4,4,4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=33;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,4,4,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=34;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.6-2.0.2-2-2-6-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,6,6,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[2,2,2,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,2,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.8-3.0.2-2-2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 6, 5, 3, 4, 2, 1], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[2,2,3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[2,2,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 6, 5, 3, 4, 2, 1], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[3,3,3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[3,3,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[4,4,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.12-4.0.2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4]];
cc:=[2,2,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.4-1.0.2-4-4-4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,4,4,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1]];
cc:=[2,3,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,3,3,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,3,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.6-1.0.2-2-2-2-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,3,3,3];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4]];
cc:=[2,2,2,2,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.8-3.0.2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [6, 5, 7, 8, 2, 1, 3, 4]];
cc:=[2,2,2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [6, 5, 7, 8, 2, 1, 3, 4]];
cc:=[2,3,3,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [6, 5, 7, 8, 2, 1, 3, 4]];
cc:=[2,3,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.6-2.0.2-2-2-2-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,3,3,3];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4]];
cc:=[2,2,2,2,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,2,2,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.6-2.0.2-2-2-2-2-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,3,6];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,2,2,2,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1]];
cc:=[2,2,2,2,2,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.8-5.0.2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[8,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,2,2,3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,2,3,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,2,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,2,2,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,2,2,3,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,3,3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,2,2,3,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,2,2,3,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,2,3,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,3,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,2,2,4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,4,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,2,5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,5,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,3,3,3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,3,3,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,3,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,3,3,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,3,4,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,4,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,3,5,5,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,5,5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,3,5,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,3,5,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,5,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,6,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,6,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=29;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,6,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=30;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,4,4,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=31;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,4,4,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=32;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,4,5,5,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=33;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,4,5,5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=34;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,4,5,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=35;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,4,5,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=36;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,4,5,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=37;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,4,6,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=38;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,4,6,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=39;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,4,6,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=40;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,3,3,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=41;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,3,3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=42;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,3,3,3,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=43;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,3,3,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=44;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,3,3,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=45;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,3,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=46;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,3,4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=47;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,4,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=48;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,3,5,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=49;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=50;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,3,5,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=51;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,3,5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=52;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,5,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=53;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=54;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,7,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=55;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,7,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=56;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,3,4,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=57;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,4,4,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=58;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,4,4,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=59;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,4,4,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=60;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,3,4,5,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=61;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,4,5,5,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=62;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,4,5,5,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=63;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,4,5,5,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=64;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,4,5,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=65;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,4,6,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=66;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,4,6,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=67;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,4,6,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=68;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,4,7,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=69;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,4,7,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=70;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,4,8,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=71;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,4,4,4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=72;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,4,4,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=73;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,4,4,5,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=74;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,4,5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=75;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,4,4,5,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=76;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,4,4,5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=77;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,4,5,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=78;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,4,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=79;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,4,7,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=80;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,4,7,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=81;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,5,5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=82;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,5,5,5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=83;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,5,5,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=84;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,5,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=85;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,5,7,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=86;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,5,7,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=87;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,5,6,6,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=88;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,6,6,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=89;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,5,6,7,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=90;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,6,7,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=91;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,6,8,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=92;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,6,6,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=93;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,6,6,7,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=94;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,6,6,7,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=95;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,3,3,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=96;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,3,3,3,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=97;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,3,3,4,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=98;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,3,4,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=99;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,3,5,5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=100;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,3,3,5,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=101;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,3,5,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=102;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,3,6,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=103;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,4,4,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=104;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,3,4,4,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=105;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,4,5,5,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=106;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,3,4,5,5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=107;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,4,5,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=108;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,4,5,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=109;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,4,5,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=110;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,3,4,6,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=111;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,3,4,6,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=112;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,4,6,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=113;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,4,4,4,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=114;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,4,4,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=115;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,4,4,5,5,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=116;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,4,5,5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=117;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,4,4,5,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=118;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,4,4,5,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=119;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,4,5,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=120;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,4,6,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=121;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,4,6,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=122;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,4,6,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=123;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,5,5,5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=124;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,5,5,5,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=125;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,5,5,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=126;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,5,6,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=127;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,5,6,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=128;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,5,6,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=129;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,5,6,6,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=130;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,5,6,6,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=131;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,6,6,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=132;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,7,7,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=133;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,7,8,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=134;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,6,6,6,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=135;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,6,7,7,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=136;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,6,7,7,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=137;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,4,4,5,5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=138;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,4,4,5,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=139;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,4,4,5,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=140;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,4,4,6,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=141;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,5,5,5,5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=142;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,5,5,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=143;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,5,5,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=144;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,5,5,6,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=145;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,5,5,6,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=146;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,5,6,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=147;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,6,6,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=148;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,6,6,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=149;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,6,6,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=150;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,7,7,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=151;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,7,7,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=152;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,6,6,6,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=153;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,6,7,7,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=154;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,6,7,8,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=155;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.4-1.0.2-2-2-2-4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,4,4,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1]];
cc:=[2,2,2,2,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,2,2,2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,2,2,2,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.6-1.0.2-2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[6,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [6, 5, 4, 3, 2, 1], [6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.4-1.0.2-2-2-2-2-2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,4,4];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1]];
cc:=[2,2,2,2,2,2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,2,2,2,2,2,2,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.3-1.0.3-3-3-3-3-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[3,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3,3,3,3,3,3];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1]];
cc:=[2,2,2,2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [3, 1, 2], [3, 1, 2], [3, 1, 2]];
cc:=[2,2,2,2,2,2,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [2, 3, 1], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2]];
cc:=[2,2,2,3,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2]];
cc:=[3,3,3,3,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 7.4-2.0.2-2-2-2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[4,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2,2,2];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2]];
cc:=[2,2,2,2,2,2,2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,2,2,2,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2]];
cc:=[2,2,2,2,2,2,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,2,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2]];
cc:=[2,2,2,2,3,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,3,3,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,3,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2]];
cc:=[2,2,3,3,3,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,3,3,3,3,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,3,3,3,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,3,3,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,4,4,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[3,3,3,3,3,3,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[3,3,3,3,3,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[3,3,3,3,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[3,3,4,4,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 7.2-1.0.2-2-2-2-2-2-2-2-2-2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[2,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2];
genus:=7;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1]];
cc:=[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);


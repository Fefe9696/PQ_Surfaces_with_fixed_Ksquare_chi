// Magma CODE FOR SEARCH RESULTS

// The results are stored in a list of records called 'data'

RecFormat:=recformat<group,gp_id, signature,gen_vectors,conj_classes,genus,dimension,r,g0, passport_label,gen_vect_label, is_hyperelliptic, hyp_involution, is_cyclic_trigonal,cyc_auto,full_auto, full_sign,topological_class,braid_class>;

data:=[];

// label = 4.40-8.0.2-4-10
// Create group as a permutation group and initialize signature information.
gp_id:=[40,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,10];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 36, 40, 39, 38, 37, 31, 35, 34, 33, 32, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 16, 20, 19, 18, 17, 11, 15, 14, 13, 12], [35, 34, 33, 32, 31, 40, 39, 38, 37, 36, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 15, 14, 13, 12, 11, 20, 19, 18, 17, 16, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 32, 33, 34, 35, 31, 37, 38, 39, 40, 36, 22, 23, 24, 25, 21, 27, 28, 29, 30, 26]];
cc:=[4,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 36, 40, 39, 38, 37, 31, 35, 34, 33, 32, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 16, 20, 19, 18, 17, 11, 15, 14, 13, 12], [33, 32, 31, 35, 34, 38, 37, 36, 40, 39, 28, 27, 26, 30, 29, 23, 22, 21, 25, 24, 13, 12, 11, 15, 14, 18, 17, 16, 20, 19, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 34, 35, 31, 32, 33, 39, 40, 36, 37, 38, 24, 25, 21, 22, 23, 29, 30, 26, 27, 28]];
cc:=[4,5,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 36, 40, 39, 38, 37, 31, 35, 34, 33, 32, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 16, 20, 19, 18, 17, 11, 15, 14, 13, 12], [34, 33, 32, 31, 35, 39, 38, 37, 36, 40, 29, 28, 27, 26, 30, 24, 23, 22, 21, 25, 14, 13, 12, 11, 15, 19, 18, 17, 16, 20, 9, 8, 7, 6, 10, 4, 3, 2, 1, 5], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 33, 34, 35, 31, 32, 38, 39, 40, 36, 37, 23, 24, 25, 21, 22, 28, 29, 30, 26, 27]];
cc:=[4,5,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 36, 40, 39, 38, 37, 31, 35, 34, 33, 32, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 16, 20, 19, 18, 17, 11, 15, 14, 13, 12], [32, 31, 35, 34, 33, 37, 36, 40, 39, 38, 27, 26, 30, 29, 28, 22, 21, 25, 24, 23, 12, 11, 15, 14, 13, 17, 16, 20, 19, 18, 7, 6, 10, 9, 8, 2, 1, 5, 4, 3], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 35, 31, 32, 33, 34, 40, 36, 37, 38, 39, 25, 21, 22, 23, 24, 30, 26, 27, 28, 29]];
cc:=[4,5,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.72-42.0.2-3-12
// Create group as a permutation group and initialize signature information.
gp_id:=[72,42];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,12];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 49, 51, 50, 52, 57, 59, 58, 60, 53, 55, 54, 56, 61, 63, 62, 64, 69, 71, 70, 72, 65, 67, 66, 68, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8, 13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 25, 27, 26, 28, 33, 35, 34, 36, 29, 31, 30, 32], [19, 18, 20, 17, 23, 22, 24, 21, 15, 14, 16, 13, 31, 30, 32, 29, 35, 34, 36, 33, 27, 26, 28, 25, 7, 6, 8, 5, 11, 10, 12, 9, 3, 2, 4, 1, 55, 54, 56, 53, 59, 58, 60, 57, 51, 50, 52, 49, 67, 66, 68, 65, 71, 70, 72, 69, 63, 62, 64, 61, 43, 42, 44, 41, 47, 46, 48, 45, 39, 38, 40, 37], [68, 67, 65, 66, 64, 63, 61, 62, 72, 71, 69, 70, 44, 43, 41, 42, 40, 39, 37, 38, 48, 47, 45, 46, 56, 55, 53, 54, 52, 51, 49, 50, 60, 59, 57, 58, 32, 31, 29, 30, 28, 27, 25, 26, 36, 35, 33, 34, 8, 7, 5, 6, 4, 3, 1, 2, 12, 11, 9, 10, 20, 19, 17, 18, 16, 15, 13, 14, 24, 23, 21, 22]];
cc:=[3,7,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 49, 51, 50, 52, 57, 59, 58, 60, 53, 55, 54, 56, 61, 63, 62, 64, 69, 71, 70, 72, 65, 67, 66, 68, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8, 13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 25, 27, 26, 28, 33, 35, 34, 36, 29, 31, 30, 32], [36, 34, 33, 35, 28, 26, 25, 27, 32, 30, 29, 31, 12, 10, 9, 11, 4, 2, 1, 3, 8, 6, 5, 7, 24, 22, 21, 23, 16, 14, 13, 15, 20, 18, 17, 19, 72, 70, 69, 71, 64, 62, 61, 63, 68, 66, 65, 67, 48, 46, 45, 47, 40, 38, 37, 39, 44, 42, 41, 43, 60, 58, 57, 59, 52, 50, 49, 51, 56, 54, 53, 55], [58, 59, 60, 57, 54, 55, 56, 53, 50, 51, 52, 49, 70, 71, 72, 69, 66, 67, 68, 65, 62, 63, 64, 61, 46, 47, 48, 45, 42, 43, 44, 41, 38, 39, 40, 37, 22, 23, 24, 21, 18, 19, 20, 17, 14, 15, 16, 13, 34, 35, 36, 33, 30, 31, 32, 29, 26, 27, 28, 25, 10, 11, 12, 9, 6, 7, 8, 5, 2, 3, 4, 1]];
cc:=[3,8,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 4.9-1.0.9-9-9
// Create group as a permutation group and initialize signature information.
gp_id:=[9,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,9,9,9];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 2, 3, 1], [4, 5, 6, 7, 8, 9, 2, 3, 1], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[4,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[18,2];
full_sign:=[0,2,9,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 2, 3, 1], [5, 6, 4, 8, 9, 7, 3, 1, 2], [5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[18,2];
full_sign:=[0,2,9,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 2, 3, 1, 5, 6, 4], [7, 8, 9, 2, 3, 1, 5, 6, 4], [8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[5,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[18,2];
full_sign:=[0,2,9,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 2, 3, 1, 5, 6, 4], [9, 7, 8, 1, 2, 3, 4, 5, 6], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[5,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[18,2];
full_sign:=[0,2,9,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 3, 1, 2], [6, 4, 5, 9, 7, 8, 1, 2, 3], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[18,2];
full_sign:=[0,2,9,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 3, 1, 2, 6, 4, 5], [8, 9, 7, 3, 1, 2, 6, 4, 5], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[7,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[18,2];
full_sign:=[0,2,9,18];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.12-2.0.3-12-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,12,12];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[3,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[4,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.16-9.0.4-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,9];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,8];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 2, 1, 3, 4, 13, 14, 16, 15, 10, 9, 11, 12], [9, 10, 12, 11, 15, 16, 13, 14, 2, 1, 3, 4, 8, 7, 6, 5], [13, 14, 15, 16, 11, 12, 10, 9, 6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,19];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 2, 1, 3, 4, 13, 14, 16, 15, 10, 9, 11, 12], [10, 9, 11, 12, 16, 15, 14, 13, 1, 2, 4, 3, 7, 8, 5, 6], [14, 13, 16, 15, 12, 11, 9, 10, 5, 6, 7, 8, 3, 4, 2, 1]];
cc:=[4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,19];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.16-1.0.2-16-16
// Create group as a permutation group and initialize signature information.
gp_id:=[16,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,16,16];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 3, 4, 2, 1], [15, 16, 14, 13, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[2,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,19];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [13, 14, 15, 16, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5], [11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[2,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,19];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 4, 3, 1, 2], [16, 15, 13, 14, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,19];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [14, 13, 16, 15, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6], [12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[32,19];
full_sign:=[0,2,4,16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.10-2.0.5-10-10
// Create group as a permutation group and initialize signature information.
gp_id:=[10,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,5,10,10];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[3,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[4,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[4,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[5,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[6,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.60-5.0.2-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[60,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,5,5];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[14, 10, 53, 6, 12, 4, 15, 38, 11, 2, 9, 5, 23, 1, 7, 39, 60, 48, 56, 37, 34, 30, 13, 26, 32, 24, 35, 58, 31, 22, 29, 25, 43, 21, 27, 59, 20, 8, 16, 57, 54, 50, 33, 46, 52, 44, 55, 18, 51, 42, 49, 45, 3, 41, 47, 19, 40, 28, 36, 17], [2, 54, 1, 55, 3, 7, 39, 6, 40, 8, 12, 24, 11, 25, 13, 17, 49, 16, 50, 18, 22, 14, 21, 15, 23, 27, 59, 26, 60, 28, 32, 44, 31, 45, 33, 37, 9, 36, 10, 38, 42, 34, 41, 35, 43, 47, 19, 46, 20, 48, 52, 4, 51, 5, 53, 57, 29, 56, 30, 58], [53, 14, 12, 45, 41, 38, 4, 2, 20, 16, 23, 9, 7, 30, 26, 48, 39, 37, 55, 51, 13, 34, 32, 5, 1, 58, 24, 22, 40, 36, 43, 29, 27, 50, 46, 8, 59, 57, 15, 11, 33, 54, 52, 25, 21, 18, 44, 42, 60, 56, 3, 49, 47, 10, 6, 28, 19, 17, 35, 31]];
cc:=[2,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[120,34];
full_sign:=[0,2,4,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.12-2.0.4-6-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,6,12];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1]];
cc:=[5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[6,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[6,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.15-1.0.3-5-15
// Create group as a permutation group and initialize signature information.
gp_id:=[15,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,5,15];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [15, 11, 12, 13, 14, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[2,4,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12], [14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[2,5,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [13, 14, 15, 11, 12, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7]];
cc:=[2,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14], [12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[2,7,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 5, 1, 2, 3, 4]];
cc:=[3,4,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3]];
cc:=[3,5,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 3, 4, 5, 1, 2]];
cc:=[3,6,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1]];
cc:=[3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 4.24-3.0.3-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6], [4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22], [21, 22, 18, 17, 19, 20, 24, 23, 5, 6, 2, 1, 3, 4, 8, 7, 13, 14, 10, 9, 11, 12, 16, 15]];
cc:=[3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 21, 22, 23, 24, 19, 20, 1, 2, 5, 6, 7, 8, 3, 4, 9, 10, 13, 14, 15, 16, 11, 12], [3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13, 19, 20, 18, 17, 23, 24, 22, 21], [16, 15, 9, 10, 14, 13, 11, 12, 24, 23, 17, 18, 22, 21, 19, 20, 8, 7, 1, 2, 6, 5, 3, 4]];
cc:=[4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.18-5.0.3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[18,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,6,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [13, 14, 15, 16, 17, 18, 10, 11, 12, 4, 5, 6, 7, 8, 9, 1, 2, 3], [18, 16, 17, 12, 10, 11, 15, 13, 14, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[3,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [16, 17, 18, 10, 11, 12, 13, 14, 15, 7, 8, 9, 1, 2, 3, 4, 5, 6], [15, 13, 14, 18, 16, 17, 12, 10, 11, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[3,14,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [14, 15, 13, 17, 18, 16, 11, 12, 10, 5, 6, 4, 8, 9, 7, 2, 3, 1], [17, 18, 16, 11, 12, 10, 14, 15, 13, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,15,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [13, 14, 15, 16, 17, 18, 10, 11, 12, 4, 5, 6, 7, 8, 9, 1, 2, 3], [17, 18, 16, 11, 12, 10, 14, 15, 13, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[4,13,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [16, 17, 18, 10, 11, 12, 13, 14, 15, 7, 8, 9, 1, 2, 3, 4, 5, 6], [14, 15, 13, 17, 18, 16, 11, 12, 10, 5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[4,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [18, 16, 17, 12, 10, 11, 15, 13, 14, 9, 7, 8, 3, 1, 2, 6, 4, 5], [15, 13, 14, 18, 16, 17, 12, 10, 11, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[4,16,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [18, 16, 17, 12, 10, 11, 15, 13, 14, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[5,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [17, 18, 16, 11, 12, 10, 14, 15, 13, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[5,12,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [14, 15, 13, 17, 18, 16, 11, 12, 10, 5, 6, 4, 8, 9, 7, 2, 3, 1], [15, 13, 14, 18, 16, 17, 12, 10, 11, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[5,15,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [15, 13, 14, 18, 16, 17, 12, 10, 11, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[6,11,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [14, 15, 13, 17, 18, 16, 11, 12, 10, 5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[6,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [18, 16, 17, 12, 10, 11, 15, 13, 14, 9, 7, 8, 3, 1, 2, 6, 4, 5], [17, 18, 16, 11, 12, 10, 14, 15, 13, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[6,16,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [17, 18, 16, 11, 12, 10, 14, 15, 13, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[7,11,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [16, 17, 18, 10, 11, 12, 13, 14, 15, 7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[7,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [13, 14, 15, 16, 17, 18, 10, 11, 12, 4, 5, 6, 7, 8, 9, 1, 2, 3], [15, 13, 14, 18, 16, 17, 12, 10, 11, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[7,13,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [13, 14, 15, 16, 17, 18, 10, 11, 12, 4, 5, 6, 7, 8, 9, 1, 2, 3]];
cc:=[8,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [15, 13, 14, 18, 16, 17, 12, 10, 11, 6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[8,12,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [16, 17, 18, 10, 11, 12, 13, 14, 15, 7, 8, 9, 1, 2, 3, 4, 5, 6], [17, 18, 16, 11, 12, 10, 14, 15, 13, 8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[8,14,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11], [11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [16, 17, 18, 10, 11, 12, 13, 14, 15, 7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[9,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11], [12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [18, 16, 17, 12, 10, 11, 15, 13, 14, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[9,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11], [13, 14, 15, 16, 17, 18, 10, 11, 12, 4, 5, 6, 7, 8, 9, 1, 2, 3], [14, 15, 13, 17, 18, 16, 11, 12, 10, 5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[9,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [11, 12, 10, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7], [14, 15, 13, 17, 18, 16, 11, 12, 10, 5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[10,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [12, 10, 11, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8], [13, 14, 15, 16, 17, 18, 10, 11, 12, 4, 5, 6, 7, 8, 9, 1, 2, 3]];
cc:=[10,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13], [16, 17, 18, 10, 11, 12, 13, 14, 15, 7, 8, 9, 1, 2, 3, 4, 5, 6], [18, 16, 17, 12, 10, 11, 15, 13, 14, 9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[10,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.20-1.0.4-4-5
// Create group as a permutation group and initialize signature information.
gp_id:=[20,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,5];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 5, 4, 3, 2, 1, 10, 9, 8, 7, 6], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 3, 2, 1, 5, 4, 8, 7, 6, 10, 9], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18]];
cc:=[3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.20-5.0.2-10-10
// Create group as a permutation group and initialize signature information.
gp_id:=[20,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,10,10];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [20, 16, 17, 18, 19, 15, 11, 12, 13, 14, 10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[2,13,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [18, 19, 20, 16, 17, 13, 14, 15, 11, 12, 8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[2,14,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [19, 20, 16, 17, 18, 14, 15, 11, 12, 13, 9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[2,15,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [17, 18, 19, 20, 16, 12, 13, 14, 15, 11, 7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[2,16,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 17, 18, 19, 20, 16, 12, 13, 14, 15, 11], [20, 16, 17, 18, 19, 15, 11, 12, 13, 14, 10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[3,9,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 19, 20, 16, 17, 18, 14, 15, 11, 12, 13], [18, 19, 20, 16, 17, 13, 14, 15, 11, 12, 8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[3,10,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2, 18, 19, 20, 16, 17, 13, 14, 15, 11, 12], [19, 20, 16, 17, 18, 14, 15, 11, 12, 13, 9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[3,11,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4, 20, 16, 17, 18, 19, 15, 11, 12, 13, 14], [17, 18, 19, 20, 16, 12, 13, 14, 15, 11, 7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[3,12,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 17, 18, 19, 20, 16, 12, 13, 14, 15, 11], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[4,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 19, 20, 16, 17, 18, 14, 15, 11, 12, 13], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7]];
cc:=[4,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2, 18, 19, 20, 16, 17, 13, 14, 15, 11, 12], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[4,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4, 20, 16, 17, 18, 19, 15, 11, 12, 13, 14], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[4,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[40,8];
full_sign:=[0,2,4,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.18-2.0.2-9-18
// Create group as a permutation group and initialize signature information.
gp_id:=[18,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,9,18];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [4, 5, 6, 7, 8, 9, 2, 3, 1, 13, 14, 15, 16, 17, 18, 11, 12, 10], [18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[2,7,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [7, 8, 9, 2, 3, 1, 5, 6, 4, 16, 17, 18, 11, 12, 10, 14, 15, 13], [15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[2,8,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [5, 6, 4, 8, 9, 7, 3, 1, 2, 14, 15, 13, 17, 18, 16, 12, 10, 11], [17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[2,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [8, 9, 7, 3, 1, 2, 6, 4, 5, 17, 18, 16, 12, 10, 11, 15, 13, 14], [14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[2,10,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [6, 4, 5, 9, 7, 8, 1, 2, 3, 15, 13, 14, 18, 16, 17, 10, 11, 12], [16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4]];
cc:=[2,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9], [9, 7, 8, 1, 2, 3, 4, 5, 6, 18, 16, 17, 10, 11, 12, 13, 14, 15], [13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1]];
cc:=[2,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 13, 14, 15, 16, 17, 18, 1, 2, 3, 4, 5, 6, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.32-19.0.2-4-16
// Create group as a permutation group and initialize signature information.
gp_id:=[32,19];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,16];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6, 25, 26, 28, 27, 31, 32, 29, 30, 17, 18, 20, 19, 23, 24, 21, 22], [18, 17, 19, 20, 24, 23, 22, 21, 30, 29, 31, 32, 26, 25, 27, 28, 1, 2, 4, 3, 7, 8, 5, 6, 13, 14, 16, 15, 9, 10, 12, 11], [25, 26, 27, 28, 29, 30, 31, 32, 23, 24, 22, 21, 17, 18, 19, 20, 10, 9, 12, 11, 14, 13, 16, 15, 8, 7, 5, 6, 2, 1, 4, 3]];
cc:=[3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6, 25, 26, 28, 27, 31, 32, 29, 30, 17, 18, 20, 19, 23, 24, 21, 22], [19, 20, 17, 18, 22, 21, 23, 24, 31, 32, 29, 30, 27, 28, 25, 26, 4, 3, 2, 1, 5, 6, 8, 7, 16, 15, 14, 13, 12, 11, 10, 9], [27, 28, 26, 25, 31, 32, 30, 29, 22, 21, 24, 23, 19, 20, 18, 17, 12, 11, 9, 10, 16, 15, 13, 14, 5, 6, 7, 8, 4, 3, 1, 2]];
cc:=[3,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6, 25, 26, 28, 27, 31, 32, 29, 30, 17, 18, 20, 19, 23, 24, 21, 22], [17, 18, 20, 19, 23, 24, 21, 22, 29, 30, 32, 31, 25, 26, 28, 27, 2, 1, 3, 4, 8, 7, 6, 5, 14, 13, 15, 16, 10, 9, 11, 12], [26, 25, 28, 27, 30, 29, 32, 31, 24, 23, 21, 22, 18, 17, 20, 19, 9, 10, 11, 12, 13, 14, 15, 16, 7, 8, 6, 5, 1, 2, 3, 4]];
cc:=[3,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6, 25, 26, 28, 27, 31, 32, 29, 30, 17, 18, 20, 19, 23, 24, 21, 22], [20, 19, 18, 17, 21, 22, 24, 23, 32, 31, 30, 29, 28, 27, 26, 25, 3, 4, 1, 2, 6, 5, 7, 8, 15, 16, 13, 14, 11, 12, 9, 10], [28, 27, 25, 26, 32, 31, 29, 30, 21, 22, 23, 24, 20, 19, 17, 18, 11, 12, 10, 9, 15, 16, 14, 13, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[3,5,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.36-12.0.2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[36,12];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[19, 21, 20, 22, 24, 23, 25, 27, 26, 28, 30, 29, 31, 33, 32, 34, 36, 35, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14, 16, 18, 17], [14, 15, 13, 17, 18, 16, 11, 12, 10, 5, 6, 4, 8, 9, 7, 2, 3, 1, 32, 33, 31, 35, 36, 34, 29, 30, 28, 23, 24, 22, 26, 27, 25, 20, 21, 19], [35, 34, 36, 29, 28, 30, 32, 31, 33, 26, 25, 27, 20, 19, 21, 23, 22, 24, 17, 16, 18, 11, 10, 12, 14, 13, 15, 8, 7, 9, 2, 1, 3, 5, 4, 6]];
cc:=[3,13,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21, 31, 32, 33, 34, 35, 36, 28, 29, 30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[19, 21, 20, 22, 24, 23, 25, 27, 26, 28, 30, 29, 31, 33, 32, 34, 36, 35, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14, 16, 18, 17], [18, 16, 17, 12, 10, 11, 15, 13, 14, 9, 7, 8, 3, 1, 2, 6, 4, 5, 36, 34, 35, 30, 28, 29, 33, 31, 32, 27, 25, 26, 21, 19, 20, 24, 22, 23], [33, 32, 31, 36, 35, 34, 30, 29, 28, 24, 23, 22, 27, 26, 25, 21, 20, 19, 15, 14, 13, 18, 17, 16, 12, 11, 10, 6, 5, 4, 9, 8, 7, 3, 2, 1]];
cc:=[3,14,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21, 31, 32, 33, 34, 35, 36, 28, 29, 30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 31, 33, 32, 34, 36, 35, 19, 21, 20, 22, 24, 23, 25, 27, 26, 10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [14, 15, 13, 17, 18, 16, 11, 12, 10, 5, 6, 4, 8, 9, 7, 2, 3, 1, 32, 33, 31, 35, 36, 34, 29, 30, 28, 23, 24, 22, 26, 27, 25, 20, 21, 19], [26, 25, 27, 20, 19, 21, 23, 22, 24, 35, 34, 36, 29, 28, 30, 32, 31, 33, 8, 7, 9, 2, 1, 3, 5, 4, 6, 17, 16, 18, 11, 10, 12, 14, 13, 15]];
cc:=[4,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21, 31, 32, 33, 34, 35, 36, 28, 29, 30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 31, 33, 32, 34, 36, 35, 19, 21, 20, 22, 24, 23, 25, 27, 26, 10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [18, 16, 17, 12, 10, 11, 15, 13, 14, 9, 7, 8, 3, 1, 2, 6, 4, 5, 36, 34, 35, 30, 28, 29, 33, 31, 32, 27, 25, 26, 21, 19, 20, 24, 22, 23], [24, 23, 22, 27, 26, 25, 21, 20, 19, 33, 32, 31, 36, 35, 34, 30, 29, 28, 6, 5, 4, 9, 8, 7, 3, 2, 1, 15, 14, 13, 18, 17, 16, 12, 11, 10]];
cc:=[4,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21, 31, 32, 33, 34, 35, 36, 28, 29, 30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 4.72-40.0.2-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[72,40];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[19, 22, 25, 20, 23, 26, 21, 24, 27, 28, 31, 34, 29, 32, 35, 30, 33, 36, 1, 4, 7, 2, 5, 8, 3, 6, 9, 10, 13, 16, 11, 14, 17, 12, 15, 18, 55, 58, 61, 56, 59, 62, 57, 60, 63, 64, 67, 70, 65, 68, 71, 66, 69, 72, 37, 40, 43, 38, 41, 44, 39, 42, 45, 46, 49, 52, 47, 50, 53, 48, 51, 54], [60, 63, 57, 59, 62, 56, 58, 61, 55, 69, 72, 66, 68, 71, 65, 67, 70, 64, 51, 54, 48, 50, 53, 47, 49, 52, 46, 42, 45, 39, 41, 44, 38, 40, 43, 37, 24, 27, 21, 23, 26, 20, 22, 25, 19, 33, 36, 30, 32, 35, 29, 31, 34, 28, 15, 18, 12, 14, 17, 11, 13, 16, 10, 6, 9, 3, 5, 8, 2, 4, 7, 1], [54, 53, 52, 48, 47, 46, 51, 50, 49, 45, 44, 43, 39, 38, 37, 42, 41, 40, 63, 62, 61, 57, 56, 55, 60, 59, 58, 72, 71, 70, 66, 65, 64, 69, 68, 67, 18, 17, 16, 12, 11, 10, 15, 14, 13, 9, 8, 7, 3, 2, 1, 6, 5, 4, 27, 26, 25, 21, 20, 19, 24, 23, 22, 36, 35, 34, 30, 29, 28, 33, 32, 31]];
cc:=[2,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 29, 30, 28, 32, 33, 31, 35, 36, 34, 38, 39, 37, 41, 42, 40, 44, 45, 43, 47, 48, 46, 50, 51, 49, 53, 54, 52, 56, 57, 55, 59, 60, 58, 62, 63, 61, 65, 66, 64, 68, 69, 67, 71, 72, 70];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[37, 38, 39, 43, 44, 45, 40, 41, 42, 46, 47, 48, 52, 53, 54, 49, 50, 51, 64, 65, 66, 70, 71, 72, 67, 68, 69, 55, 56, 57, 61, 62, 63, 58, 59, 60, 1, 2, 3, 7, 8, 9, 4, 5, 6, 10, 11, 12, 16, 17, 18, 13, 14, 15, 28, 29, 30, 34, 35, 36, 31, 32, 33, 19, 20, 21, 25, 26, 27, 22, 23, 24], [63, 57, 60, 62, 56, 59, 61, 55, 58, 72, 66, 69, 71, 65, 68, 70, 64, 67, 54, 48, 51, 53, 47, 50, 52, 46, 49, 45, 39, 42, 44, 38, 41, 43, 37, 40, 27, 21, 24, 26, 20, 23, 25, 19, 22, 36, 30, 33, 35, 29, 32, 34, 28, 31, 18, 12, 15, 17, 11, 14, 16, 10, 13, 9, 3, 6, 8, 2, 5, 7, 1, 4], [23, 26, 20, 24, 27, 21, 22, 25, 19, 32, 35, 29, 33, 36, 30, 31, 34, 28, 5, 8, 2, 6, 9, 3, 4, 7, 1, 14, 17, 11, 15, 18, 12, 13, 16, 10, 59, 62, 56, 60, 63, 57, 58, 61, 55, 68, 71, 65, 69, 72, 66, 67, 70, 64, 41, 44, 38, 42, 45, 39, 40, 43, 37, 50, 53, 47, 51, 54, 48, 49, 52, 46]];
cc:=[3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19, 32, 33, 31, 35, 36, 34, 29, 30, 28, 41, 42, 40, 44, 45, 43, 38, 39, 37, 50, 51, 49, 53, 54, 52, 47, 48, 46, 59, 60, 58, 62, 63, 61, 56, 57, 55, 68, 69, 67, 71, 72, 70, 65, 66, 64];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 4.120-34.0.2-4-5
// Create group as a permutation group and initialize signature information.
gp_id:=[120,34];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,5];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 19, 23, 87, 65, 1, 44, 13, 92, 70, 31, 49, 8, 97, 20, 36, 54, 78, 2, 15, 26, 39, 3, 107, 45, 21, 64, 33, 112, 50, 11, 69, 28, 117, 40, 16, 74, 58, 22, 35, 46, 59, 103, 7, 25, 41, 84, 53, 12, 30, 111, 89, 48, 17, 60, 116, 94, 38, 42, 55, 66, 79, 83, 27, 5, 61, 104, 73, 32, 10, 91, 109, 68, 37, 80, 96, 114, 18, 62, 75, 86, 99, 63, 47, 105, 81, 4, 93, 52, 110, 71, 9, 88, 57, 100, 76, 14, 118, 82, 95, 106, 119, 43, 67, 85, 101, 24, 113, 72, 90, 51, 29, 108, 77, 120, 56, 34, 98, 102, 115], [7, 20, 21, 89, 63, 2, 45, 11, 94, 68, 32, 50, 6, 99, 18, 37, 55, 76, 4, 13, 27, 40, 1, 109, 43, 22, 65, 31, 114, 48, 12, 70, 26, 119, 38, 17, 75, 56, 24, 33, 47, 60, 101, 9, 23, 42, 85, 51, 14, 28, 112, 90, 46, 19, 58, 117, 95, 36, 44, 53, 67, 80, 81, 29, 3, 62, 105, 71, 34, 8, 92, 110, 66, 39, 78, 97, 115, 16, 64, 73, 87, 100, 61, 49, 103, 82, 5, 91, 54, 108, 72, 10, 86, 59, 98, 77, 15, 116, 84, 93, 107, 120, 41, 69, 83, 102, 25, 111, 74, 88, 52, 30, 106, 79, 118, 57, 35, 96, 104, 113], [3, 1, 5, 2, 4, 8, 6, 10, 7, 9, 13, 11, 15, 12, 14, 18, 16, 20, 17, 19, 23, 21, 25, 22, 24, 28, 26, 30, 27, 29, 33, 31, 35, 32, 34, 38, 36, 40, 37, 39, 43, 41, 45, 42, 44, 48, 46, 50, 47, 49, 53, 51, 55, 52, 54, 58, 56, 60, 57, 59, 63, 61, 65, 62, 64, 68, 66, 70, 67, 69, 73, 71, 75, 72, 74, 78, 76, 80, 77, 79, 83, 81, 85, 82, 84, 88, 86, 90, 87, 89, 93, 91, 95, 92, 94, 98, 96, 100, 97, 99, 103, 101, 105, 102, 104, 108, 106, 110, 107, 109, 113, 111, 115, 112, 114, 118, 116, 120, 117, 119]];
cc:=[2,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.12-5.0.6-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,6,6,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[7,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[8,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.18-3.0.3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[18,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,6,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [13, 15, 14, 16, 18, 17, 10, 12, 11, 4, 6, 5, 7, 9, 8, 1, 3, 2], [18, 17, 16, 12, 11, 10, 15, 14, 13, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[72,40];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [13, 15, 14, 16, 18, 17, 10, 12, 11, 4, 6, 5, 7, 9, 8, 1, 3, 2], [15, 14, 13, 18, 17, 16, 12, 11, 10, 6, 5, 4, 9, 8, 7, 3, 2, 1]];
cc:=[6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [16, 18, 17, 10, 12, 11, 13, 15, 14, 7, 9, 8, 1, 3, 2, 4, 6, 5], [17, 16, 18, 11, 10, 12, 14, 13, 15, 8, 7, 9, 2, 1, 3, 5, 4, 6]];
cc:=[7,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[36,12];
full_sign:=[0,2,6,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.36-9.0.3-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[36,9];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,4];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 29, 30, 28, 32, 33, 31, 35, 36, 34], [19, 27, 23, 24, 20, 25, 26, 22, 21, 28, 36, 32, 33, 29, 34, 35, 31, 30, 10, 18, 14, 15, 11, 16, 17, 13, 12, 1, 9, 5, 6, 2, 7, 8, 4, 3], [30, 31, 35, 34, 29, 33, 32, 36, 28, 21, 22, 26, 25, 20, 24, 23, 27, 19, 3, 4, 8, 7, 2, 6, 5, 9, 1, 12, 13, 17, 16, 11, 15, 14, 18, 10]];
cc:=[3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[72,40];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12, 22, 23, 24, 25, 26, 27, 19, 20, 21, 31, 32, 33, 34, 35, 36, 28, 29, 30], [19, 27, 23, 24, 20, 25, 26, 22, 21, 28, 36, 32, 33, 29, 34, 35, 31, 30, 10, 18, 14, 15, 11, 16, 17, 13, 12, 1, 9, 5, 6, 2, 7, 8, 4, 3], [34, 29, 33, 32, 36, 28, 30, 31, 35, 25, 20, 24, 23, 27, 19, 21, 22, 26, 7, 2, 6, 5, 9, 1, 3, 4, 8, 16, 11, 15, 14, 18, 10, 12, 13, 17]];
cc:=[4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[72,40];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.36-11.0.3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[36,11];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 16, 14, 15, 17, 20, 18, 19, 21, 24, 22, 23, 25, 28, 26, 27, 29, 32, 30, 31, 33, 36, 34, 35, 1, 4, 2, 3, 5, 8, 6, 7, 9, 12, 10, 11], [36, 34, 33, 35, 28, 26, 25, 27, 32, 30, 29, 31, 12, 10, 9, 11, 4, 2, 1, 3, 8, 6, 5, 7, 24, 22, 21, 23, 16, 14, 13, 15, 20, 18, 17, 19], [8, 7, 6, 5, 12, 11, 10, 9, 4, 3, 2, 1, 20, 19, 18, 17, 24, 23, 22, 21, 16, 15, 14, 13, 32, 31, 30, 29, 36, 35, 34, 33, 28, 27, 26, 25]];
cc:=[5,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 16, 14, 15, 17, 20, 18, 19, 21, 24, 22, 23, 25, 28, 26, 27, 29, 32, 30, 31, 33, 36, 34, 35, 1, 4, 2, 3, 5, 8, 6, 7, 9, 12, 10, 11], [32, 30, 29, 31, 36, 34, 33, 35, 28, 26, 25, 27, 8, 6, 5, 7, 12, 10, 9, 11, 4, 2, 1, 3, 20, 18, 17, 19, 24, 22, 21, 23, 16, 14, 13, 15], [12, 11, 10, 9, 4, 3, 2, 1, 8, 7, 6, 5, 24, 23, 22, 21, 16, 15, 14, 13, 20, 19, 18, 17, 36, 35, 34, 33, 28, 27, 26, 25, 32, 31, 30, 29]];
cc:=[5,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[25, 27, 28, 26, 29, 31, 32, 30, 33, 35, 36, 34, 1, 3, 4, 2, 5, 7, 8, 6, 9, 11, 12, 10, 13, 15, 16, 14, 17, 19, 20, 18, 21, 23, 24, 22], [19, 18, 20, 17, 23, 22, 24, 21, 15, 14, 16, 13, 31, 30, 32, 29, 35, 34, 36, 33, 27, 26, 28, 25, 7, 6, 8, 5, 11, 10, 12, 9, 3, 2, 4, 1], [11, 12, 9, 10, 3, 4, 1, 2, 7, 8, 5, 6, 23, 24, 21, 22, 15, 16, 13, 14, 19, 20, 17, 18, 35, 36, 33, 34, 27, 28, 25, 26, 31, 32, 29, 30]];
cc:=[6,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[25, 27, 28, 26, 29, 31, 32, 30, 33, 35, 36, 34, 1, 3, 4, 2, 5, 7, 8, 6, 9, 11, 12, 10, 13, 15, 16, 14, 17, 19, 20, 18, 21, 23, 24, 22], [23, 22, 24, 21, 15, 14, 16, 13, 19, 18, 20, 17, 35, 34, 36, 33, 27, 26, 28, 25, 31, 30, 32, 29, 11, 10, 12, 9, 3, 2, 4, 1, 7, 6, 8, 5], [7, 8, 5, 6, 11, 12, 9, 10, 3, 4, 1, 2, 19, 20, 17, 18, 23, 24, 21, 22, 15, 16, 13, 14, 31, 32, 29, 30, 35, 36, 33, 34, 27, 28, 25, 26]];
cc:=[6,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15, 29, 32, 30, 31, 33, 36, 34, 35, 25, 28, 26, 27, 5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [32, 30, 29, 31, 36, 34, 33, 35, 28, 26, 25, 27, 8, 6, 5, 7, 12, 10, 9, 11, 4, 2, 1, 3, 20, 18, 17, 19, 24, 22, 21, 23, 16, 14, 13, 15], [8, 7, 6, 5, 12, 11, 10, 9, 4, 3, 2, 1, 20, 19, 18, 17, 24, 23, 22, 21, 16, 15, 14, 13, 32, 31, 30, 29, 36, 35, 34, 33, 28, 27, 26, 25]];
cc:=[7,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[33, 35, 36, 34, 25, 27, 28, 26, 29, 31, 32, 30, 9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6, 21, 23, 24, 22, 13, 15, 16, 14, 17, 19, 20, 18], [23, 22, 24, 21, 15, 14, 16, 13, 19, 18, 20, 17, 35, 34, 36, 33, 27, 26, 28, 25, 31, 30, 32, 29, 11, 10, 12, 9, 3, 2, 4, 1, 7, 6, 8, 5], [11, 12, 9, 10, 3, 4, 1, 2, 7, 8, 5, 6, 23, 24, 21, 22, 15, 16, 13, 14, 19, 20, 17, 18, 35, 36, 33, 34, 27, 28, 25, 26, 31, 32, 29, 30]];
cc:=[8,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.36-10.0.2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[36,10];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[28, 30, 29, 34, 36, 35, 31, 33, 32, 19, 21, 20, 25, 27, 26, 22, 24, 23, 10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [17, 18, 16, 14, 15, 13, 11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1, 35, 36, 34, 32, 33, 31, 29, 30, 28, 26, 27, 25, 23, 24, 22, 20, 21, 19], [23, 22, 24, 26, 25, 27, 20, 19, 21, 32, 31, 33, 35, 34, 36, 29, 28, 30, 5, 4, 6, 8, 7, 9, 2, 1, 3, 14, 13, 15, 17, 16, 18, 11, 10, 12]];
cc:=[4,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[72,40];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.20-3.0.4-4-5
// Create group as a permutation group and initialize signature information.
gp_id:=[20,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,5];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[11, 13, 15, 12, 14, 16, 18, 20, 17, 19, 6, 8, 10, 7, 9, 1, 3, 5, 2, 4], [19, 17, 20, 18, 16, 14, 12, 15, 13, 11, 4, 2, 5, 3, 1, 9, 7, 10, 8, 6], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17]];
cc:=[3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[120,34];
full_sign:=[0,2,4,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.24-10.0.2-6-12
// Create group as a permutation group and initialize signature information.
gp_id:=[24,10];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,12];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [15, 16, 17, 18, 13, 14, 22, 21, 24, 23, 20, 19, 3, 4, 5, 6, 1, 2, 10, 9, 12, 11, 8, 7], [23, 24, 19, 20, 21, 22, 18, 17, 14, 13, 16, 15, 11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[3,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [17, 18, 13, 14, 15, 16, 24, 23, 20, 19, 22, 21, 5, 6, 1, 2, 3, 4, 12, 11, 8, 7, 10, 9], [21, 22, 23, 24, 19, 20, 16, 15, 18, 17, 14, 13, 9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1]];
cc:=[3,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 16, 17, 18, 20, 19, 22, 21, 24, 23, 1, 2, 3, 4, 5, 6, 8, 7, 10, 9, 12, 11], [9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2, 21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14], [24, 23, 20, 19, 22, 21, 17, 18, 13, 14, 15, 16, 12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[4,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 16, 17, 18, 20, 19, 22, 21, 24, 23, 1, 2, 3, 4, 5, 6, 8, 7, 10, 9, 12, 11], [11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4, 23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16], [22, 21, 24, 23, 20, 19, 15, 16, 17, 18, 13, 14, 10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[4,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[72,42];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.8-4.0.2-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,4];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 8, 7, 2, 1, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.12-5.0.2-2-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,3,5,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[2,3,6,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[2,4,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[2,4,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[3,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[3,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 4.20-4.0.2-2-2-5
// Create group as a permutation group and initialize signature information.
gp_id:=[20,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,5];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18]];
cc:=[2,3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.9-2.0.3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[9,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,2,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[2,2,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,2,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6]];
cc:=[2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[2,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,3,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,4,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[2,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[2,5,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 1, 2, 3, 4, 5, 6], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,5,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[2,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[2,7,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[3,3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[3,3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 2, 3, 1], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,3,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1]];
cc:=[3,4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 1, 2, 3], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[3,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,5,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[3,5,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[3,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[3,7,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [4, 5, 6, 7, 8, 9, 1, 2, 3], [9, 7, 8, 3, 1, 2, 6, 4, 5], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[4,4,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5]];
cc:=[4,5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [7, 8, 9, 1, 2, 3, 4, 5, 6], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[4,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [5, 6, 4, 8, 9, 7, 2, 3, 1], [8, 9, 7, 2, 3, 1, 5, 6, 4], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[4,6,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 1, 2, 3], [9, 7, 8, 3, 1, 2, 6, 4, 5], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[4,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6], [7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[5,5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6], [5, 6, 4, 8, 9, 7, 2, 3, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[5,6,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 1, 2, 3, 4, 5, 6], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2], [6, 4, 5, 9, 7, 8, 3, 1, 2]];
cc:=[5,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=29;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 8, 9, 7, 2, 3, 1], [9, 7, 8, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 3, 1, 2], [8, 9, 7, 2, 3, 1, 5, 6, 4]];
cc:=[6,7,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=30;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.36-10.0.2-2-2-3
// Create group as a permutation group and initialize signature information.
gp_id:=[36,10];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 16, 17, 18, 13, 14, 15, 1, 2, 3, 7, 8, 9, 4, 5, 6, 28, 29, 30, 34, 35, 36, 31, 32, 33, 19, 20, 21, 25, 26, 27, 22, 23, 24], [19, 21, 20, 22, 24, 23, 25, 27, 26, 28, 30, 29, 31, 33, 32, 34, 36, 35, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14, 16, 18, 17], [36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19, 32, 33, 31, 35, 36, 34, 29, 30, 28]];
cc:=[2,3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10, 23, 24, 22, 26, 27, 25, 20, 21, 19, 32, 33, 31, 35, 36, 34, 29, 30, 28];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 4.6-2.0.3-3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,6,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[3,3,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[12,5];
full_sign:=[0,2,2,3,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2]];
cc:=[3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[12,4];
full_sign:=[0,2,2,3,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[12,5];
full_sign:=[0,2,2,3,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.8-1.0.2-2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[8,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,8,8];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 3, 4, 2, 1], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,2,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[16,7];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [7, 8, 6, 5, 2, 1, 4, 3], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[2,2,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[16,7];
full_sign:=[0,2,2,2,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.10-1.0.2-2-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[10,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,5,5];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7]];
cc:=[2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[2,2,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.10-2.0.2-2-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[10,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,5,5];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[2,2,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[2,2,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.5-1.0.5-5-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[5,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,5,5,5,5];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [3, 4, 5, 1, 2]];
cc:=[2,2,2,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[2,2,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4]];
cc:=[2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3]];
cc:=[2,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [5, 1, 2, 3, 4]];
cc:=[3,3,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3]];
cc:=[3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[4,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.16-7.0.2-2-2-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,7];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,8];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [10, 9, 11, 12, 16, 15, 14, 13, 2, 1, 3, 4, 8, 7, 6, 5], [13, 14, 15, 16, 12, 11, 9, 10, 5, 6, 7, 8, 4, 3, 1, 2]];
cc:=[2,3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [14, 13, 16, 15, 11, 12, 10, 9, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[2,3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.6-2.0.2-6-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,6,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[2,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[2,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.12-3.0.2-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[12,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,3,3];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [6, 7, 5, 8, 10, 11, 9, 12, 2, 3, 1, 4]];
cc:=[2,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6], [9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6], [10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5]];
cc:=[2,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.12-4.0.2-2-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 4.18-3.0.2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[18,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [12, 11, 10, 15, 14, 13, 18, 17, 16, 3, 2, 1, 6, 5, 4, 9, 8, 7], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13]];
cc:=[2,2,3,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [12, 11, 10, 15, 14, 13, 18, 17, 16, 3, 2, 1, 6, 5, 4, 9, 8, 7], [7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10]];
cc:=[2,2,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [10, 12, 11, 13, 15, 14, 16, 18, 17, 1, 3, 2, 4, 6, 5, 7, 9, 8], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14]];
cc:=[2,2,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.24-12.0.2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[24,12];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8], [16, 14, 15, 13, 24, 22, 23, 21, 20, 18, 19, 17, 4, 2, 3, 1, 12, 10, 11, 9, 8, 6, 7, 5], [21, 24, 23, 22, 17, 20, 19, 18, 13, 16, 15, 14, 9, 12, 11, 10, 5, 8, 7, 6, 1, 4, 3, 2], [24, 21, 22, 23, 20, 17, 18, 19, 16, 13, 14, 15, 12, 9, 10, 11, 8, 5, 6, 7, 4, 1, 2, 3]];
cc:=[3,3,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.18-4.0.2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[18,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12]];
cc:=[2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [16, 18, 17, 13, 15, 14, 10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10]];
cc:=[2,2,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [16, 18, 17, 13, 15, 14, 10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11]];
cc:=[2,2,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [12, 11, 10, 18, 17, 16, 15, 14, 13, 3, 2, 1, 9, 8, 7, 6, 5, 4], [7, 8, 9, 1, 2, 3, 4, 5, 6, 16, 17, 18, 10, 11, 12, 13, 14, 15], [5, 6, 4, 8, 9, 7, 2, 3, 1, 14, 15, 13, 17, 18, 16, 11, 12, 10]];
cc:=[2,2,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [12, 11, 10, 18, 17, 16, 15, 14, 13, 3, 2, 1, 9, 8, 7, 6, 5, 4], [4, 5, 6, 7, 8, 9, 1, 2, 3, 13, 14, 15, 16, 17, 18, 10, 11, 12], [8, 9, 7, 2, 3, 1, 5, 6, 4, 17, 18, 16, 11, 12, 10, 14, 15, 13]];
cc:=[2,2,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 16, 18, 17, 13, 15, 14, 1, 3, 2, 7, 9, 8, 4, 6, 5], [12, 11, 10, 18, 17, 16, 15, 14, 13, 3, 2, 1, 9, 8, 7, 6, 5, 4], [9, 7, 8, 3, 1, 2, 6, 4, 5, 18, 16, 17, 12, 10, 11, 15, 13, 14], [6, 4, 5, 9, 7, 8, 3, 1, 2, 15, 13, 14, 18, 16, 17, 12, 10, 11]];
cc:=[2,2,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[36,10];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 4.6-2.0.2-2-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3,3];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4]];
cc:=[2,2,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 4.6-2.0.2-2-2-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3,6];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,2,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1]];
cc:=[2,2,2,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.4-1.0.2-4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,4,4];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2]];
cc:=[2,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.6-1.0.2-2-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3,3];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4]];
cc:=[2,2,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 4.8-3.0.2-2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,4];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[2,2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[3,3,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[3,4,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.12-4.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.3-1.0.3-3-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[3,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3,3,3];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1]];
cc:=[2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [2, 3, 1], [3, 1, 2], [3, 1, 2], [3, 1, 2]];
cc:=[2,2,2,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2]];
cc:=[3,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 4.4-1.0.2-2-2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,4,4];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [4, 3, 1, 2]];
cc:=[2,2,2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.6-1.0.2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[6,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [6, 5, 4, 3, 2, 1], [6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.4-2.0.2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[4,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,2,2,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,3,3,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,3,3,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,3,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 4.2-1.0.2-2-2-2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[2,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2,2,2];
genus:=4;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1]];
cc:=[2,2,2,2,2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);


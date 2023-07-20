// Magma CODE FOR SEARCH RESULTS

// The results are stored in a list of records called 'data'

RecFormat:=recformat<group,gp_id, signature,gen_vectors,conj_classes,genus,dimension,r,g0, passport_label,gen_vect_label, is_hyperelliptic, hyp_involution, is_cyclic_trigonal,cyc_auto,full_auto, full_sign,topological_class,braid_class>;

data:=[];

// label = 2.10-2.0.2-5-10
// Create group as a permutation group and initialize signature information.
gp_id:=[10,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,5,10];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[2,3,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[2,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[2,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[2,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 2.24-3.0.3-3-4
// Create group as a permutation group and initialize signature information.
gp_id:=[24,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,4];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6], [24, 23, 19, 20, 17, 18, 22, 21, 8, 7, 3, 4, 1, 2, 6, 5, 16, 15, 11, 12, 9, 10, 14, 13], [7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9, 23, 24, 21, 22, 20, 19, 18, 17]];
cc:=[3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,29];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.24-8.0.2-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,6];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4, 20, 21, 19, 23, 24, 22, 14, 15, 13, 17, 18, 16]];
cc:=[4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [20, 19, 21, 23, 22, 24, 17, 16, 18, 14, 13, 15, 8, 7, 9, 11, 10, 12, 5, 4, 6, 2, 1, 3], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5, 21, 19, 20, 24, 22, 23, 15, 13, 14, 18, 16, 17]];
cc:=[4,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 2.5-1.0.5-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[5,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,5,5,5];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [4, 5, 1, 2, 3]];
cc:=[2,2,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[10,2];
full_sign:=[0,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2]];
cc:=[2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[10,2];
full_sign:=[0,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[10,2];
full_sign:=[0,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4]];
cc:=[4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[10,2];
full_sign:=[0,2,5,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.48-29.0.2-3-8
// Create group as a permutation group and initialize signature information.
gp_id:=[48,29];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,8];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 26, 29, 30, 27, 28, 32, 31, 41, 42, 45, 46, 43, 44, 48, 47, 33, 34, 37, 38, 35, 36, 40, 39, 1, 2, 5, 6, 3, 4, 8, 7, 17, 18, 21, 22, 19, 20, 24, 23, 9, 10, 13, 14, 11, 12, 16, 15], [13, 14, 11, 12, 15, 16, 9, 10, 21, 22, 19, 20, 23, 24, 17, 18, 5, 6, 3, 4, 7, 8, 1, 2, 37, 38, 35, 36, 39, 40, 33, 34, 45, 46, 43, 44, 47, 48, 41, 42, 29, 30, 27, 28, 31, 32, 25, 26], [40, 39, 37, 38, 33, 34, 35, 36, 32, 31, 29, 30, 25, 26, 27, 28, 48, 47, 45, 46, 41, 42, 43, 44, 16, 15, 13, 14, 9, 10, 11, 12, 8, 7, 5, 6, 1, 2, 3, 4, 24, 23, 21, 22, 17, 18, 19, 20]];
cc:=[3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 26, 29, 30, 27, 28, 32, 31, 41, 42, 45, 46, 43, 44, 48, 47, 33, 34, 37, 38, 35, 36, 40, 39, 1, 2, 5, 6, 3, 4, 8, 7, 17, 18, 21, 22, 19, 20, 24, 23, 9, 10, 13, 14, 11, 12, 16, 15], [16, 15, 9, 10, 13, 14, 12, 11, 24, 23, 17, 18, 21, 22, 20, 19, 8, 7, 1, 2, 5, 6, 4, 3, 40, 39, 33, 34, 37, 38, 36, 35, 48, 47, 41, 42, 45, 46, 44, 43, 32, 31, 25, 26, 29, 30, 28, 27], [37, 38, 39, 40, 35, 36, 34, 33, 29, 30, 31, 32, 27, 28, 26, 25, 45, 46, 47, 48, 43, 44, 42, 41, 13, 14, 15, 16, 11, 12, 10, 9, 5, 6, 7, 8, 3, 4, 2, 1, 21, 22, 23, 24, 19, 20, 18, 17]];
cc:=[3,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 2.6-2.0.3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,6,6];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.8-4.0.4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,4];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 8, 7, 2, 1, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,29];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.8-1.0.2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[8,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,8,8];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 3, 4, 2, 1], [7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[2,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,29];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [6, 5, 8, 7, 4, 3, 1, 2], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,29];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.12-1.0.3-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[12,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,4];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.12-5.0.2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,6];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[2,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[3,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[3,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[4,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[4,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.16-8.0.2-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,8];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [10, 9, 11, 12, 16, 15, 14, 13, 1, 2, 4, 3, 7, 8, 5, 6], [13, 14, 15, 16, 12, 11, 9, 10, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,29];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 2, 1, 3, 4, 8, 7, 6, 5], [14, 13, 16, 15, 11, 12, 10, 9, 5, 6, 7, 8, 4, 3, 1, 2]];
cc:=[3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,29];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.8-3.0.2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 2.12-4.0.2-2-2-3
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10]];
cc:=[2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 2.4-1.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [4, 3, 1, 2]];
cc:=[2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[8,3];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.6-1.0.2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[12,4];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.6-2.0.2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[12,4];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.3-1.0.3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[3,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [3, 1, 2], [3, 1, 2]];
cc:=[2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[12,4];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 2.4-2.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[4,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 2.2-1.0.2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[2,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2];
genus:=2;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1]];
cc:=[2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);


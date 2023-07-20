// Magma CODE FOR SEARCH RESULTS

// The results are stored in a list of records called 'data'

RecFormat:=recformat<group,gp_id, signature,gen_vectors,conj_classes,genus,dimension,r,g0, passport_label,gen_vect_label, is_hyperelliptic, hyp_involution, is_cyclic_trigonal,cyc_auto,full_auto, full_sign,topological_class,braid_class>;

data:=[];

// label = 6.120-34.0.2-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[120,34];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,6];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[45, 13, 27, 54, 81, 20, 23, 32, 59, 71, 70, 28, 2, 84, 76, 75, 58, 97, 89, 6, 65, 33, 7, 74, 101, 40, 3, 12, 79, 51, 50, 8, 22, 104, 56, 55, 78, 117, 109, 26, 85, 53, 107, 94, 1, 60, 103, 112, 99, 31, 30, 108, 42, 4, 36, 35, 98, 17, 9, 46, 105, 73, 87, 114, 21, 80, 83, 92, 119, 11, 10, 88, 62, 24, 16, 15, 118, 37, 29, 66, 5, 93, 67, 14, 41, 100, 63, 72, 19, 111, 110, 68, 82, 44, 116, 115, 18, 57, 49, 86, 25, 113, 47, 34, 61, 120, 43, 52, 39, 91, 90, 48, 102, 64, 96, 95, 38, 77, 69, 106], [19, 87, 6, 65, 23, 44, 92, 1, 70, 13, 49, 97, 31, 20, 8, 54, 2, 36, 15, 78, 39, 107, 26, 45, 3, 64, 112, 21, 50, 33, 69, 117, 11, 40, 28, 74, 22, 16, 35, 58, 59, 7, 46, 25, 103, 84, 12, 41, 30, 53, 89, 17, 111, 60, 48, 94, 42, 116, 55, 38, 79, 27, 66, 5, 83, 104, 32, 61, 10, 73, 109, 37, 91, 80, 68, 114, 62, 96, 75, 18, 99, 47, 86, 105, 63, 4, 52, 81, 110, 93, 9, 57, 71, 100, 88, 14, 82, 76, 95, 118, 119, 67, 106, 85, 43, 24, 72, 101, 90, 113, 29, 77, 51, 120, 108, 34, 102, 56, 115, 98], [32, 58, 101, 100, 114, 27, 53, 76, 110, 119, 22, 103, 71, 115, 89, 117, 108, 66, 45, 84, 12, 78, 81, 120, 94, 7, 73, 56, 90, 99, 2, 83, 51, 95, 109, 97, 88, 46, 65, 104, 112, 98, 61, 20, 74, 107, 93, 36, 70, 79, 102, 63, 31, 75, 9, 77, 68, 26, 85, 4, 92, 118, 41, 40, 54, 87, 113, 16, 50, 59, 82, 43, 11, 55, 29, 57, 48, 6, 105, 24, 72, 18, 21, 60, 34, 67, 13, 116, 30, 39, 62, 23, 111, 35, 49, 37, 28, 106, 5, 44, 52, 38, 1, 80, 14, 47, 33, 96, 10, 19, 42, 3, 91, 15, 69, 17, 8, 86, 25, 64]];
cc:=[3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.24-2.0.2-24-24
// Create group as a permutation group and initialize signature information.
gp_id:=[24,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,24,24];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 7, 8, 6, 5, 11, 12, 10, 9, 3, 4, 2, 1], [23, 24, 22, 21, 15, 16, 14, 13, 19, 20, 18, 17, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[2,17,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,6];
full_sign:=[0,2,4,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [22, 21, 24, 23, 14, 13, 16, 15, 18, 17, 20, 19, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6], [20, 19, 17, 18, 24, 23, 21, 22, 16, 15, 13, 14, 5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4]];
cc:=[2,18,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,6];
full_sign:=[0,2,4,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [18, 17, 20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 8, 7, 5, 6, 12, 11, 9, 10, 4, 3, 1, 2], [24, 23, 21, 22, 16, 15, 13, 14, 20, 19, 17, 18, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,21,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[48,6];
full_sign:=[0,2,4,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 19, 20, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5], [19, 20, 18, 17, 23, 24, 22, 21, 15, 16, 14, 13, 6, 5, 8, 7, 10, 9, 12, 11, 2, 1, 4, 3]];
cc:=[2,22,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[48,6];
full_sign:=[0,2,4,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.75-2.0.3-3-5
// Create group as a permutation group and initialize signature information.
gp_id:=[75,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,5];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[26, 34, 37, 45, 48, 33, 36, 44, 47, 30, 40, 43, 46, 29, 32, 42, 50, 28, 31, 39, 49, 27, 35, 38, 41, 51, 59, 62, 70, 73, 58, 61, 69, 72, 55, 65, 68, 71, 54, 57, 67, 75, 53, 56, 64, 74, 52, 60, 63, 66, 1, 9, 12, 20, 23, 8, 11, 19, 22, 5, 15, 18, 21, 4, 7, 17, 25, 3, 6, 14, 24, 2, 10, 13, 16], [73, 69, 65, 56, 52, 61, 57, 53, 74, 70, 54, 75, 66, 62, 58, 67, 63, 59, 55, 71, 60, 51, 72, 68, 64, 23, 19, 15, 6, 2, 11, 7, 3, 24, 20, 4, 25, 16, 12, 8, 17, 13, 9, 5, 21, 10, 1, 22, 18, 14, 48, 44, 40, 31, 27, 36, 32, 28, 49, 45, 29, 50, 41, 37, 33, 42, 38, 34, 30, 46, 35, 26, 47, 43, 39], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 34, 35, 31, 32, 33, 39, 40, 36, 37, 38, 44, 45, 41, 42, 43, 49, 50, 46, 47, 48, 29, 30, 26, 27, 28, 59, 60, 56, 57, 58, 64, 65, 61, 62, 63, 69, 70, 66, 67, 68, 74, 75, 71, 72, 73, 54, 55, 51, 52, 53]];
cc:=[2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 34, 37, 45, 48, 33, 36, 44, 47, 30, 40, 43, 46, 29, 32, 42, 50, 28, 31, 39, 49, 27, 35, 38, 41, 51, 59, 62, 70, 73, 58, 61, 69, 72, 55, 65, 68, 71, 54, 57, 67, 75, 53, 56, 64, 74, 52, 60, 63, 66, 1, 9, 12, 20, 23, 8, 11, 19, 22, 5, 15, 18, 21, 4, 7, 17, 25, 3, 6, 14, 24, 2, 10, 13, 16], [70, 61, 57, 53, 74, 58, 54, 75, 66, 62, 71, 67, 63, 59, 55, 64, 60, 51, 72, 68, 52, 73, 69, 65, 56, 20, 11, 7, 3, 24, 8, 4, 25, 16, 12, 21, 17, 13, 9, 5, 14, 10, 1, 22, 18, 2, 23, 19, 15, 6, 45, 36, 32, 28, 49, 33, 29, 50, 41, 37, 46, 42, 38, 34, 30, 39, 35, 26, 47, 43, 27, 48, 44, 40, 31], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 37, 38, 39, 40, 36, 42, 43, 44, 45, 41, 47, 48, 49, 50, 46, 27, 28, 29, 30, 26, 32, 33, 34, 35, 31, 62, 63, 64, 65, 61, 67, 68, 69, 70, 66, 72, 73, 74, 75, 71, 52, 53, 54, 55, 51, 57, 58, 59, 60, 56]];
cc:=[2,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 34, 37, 45, 48, 33, 36, 44, 47, 30, 40, 43, 46, 29, 32, 42, 50, 28, 31, 39, 49, 27, 35, 38, 41, 51, 59, 62, 70, 73, 58, 61, 69, 72, 55, 65, 68, 71, 54, 57, 67, 75, 53, 56, 64, 74, 52, 60, 63, 66, 1, 9, 12, 20, 23, 8, 11, 19, 22, 5, 15, 18, 21, 4, 7, 17, 25, 3, 6, 14, 24, 2, 10, 13, 16], [68, 64, 60, 51, 72, 56, 52, 73, 69, 65, 74, 70, 61, 57, 53, 62, 58, 54, 75, 66, 55, 71, 67, 63, 59, 18, 14, 10, 1, 22, 6, 2, 23, 19, 15, 24, 20, 11, 7, 3, 12, 8, 4, 25, 16, 5, 21, 17, 13, 9, 43, 39, 35, 26, 47, 31, 27, 48, 44, 40, 49, 45, 36, 32, 28, 37, 33, 29, 50, 41, 30, 46, 42, 38, 34], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 39, 40, 36, 37, 38, 44, 45, 41, 42, 43, 49, 50, 46, 47, 48, 29, 30, 26, 27, 28, 34, 35, 31, 32, 33, 64, 65, 61, 62, 63, 69, 70, 66, 67, 68, 74, 75, 71, 72, 73, 54, 55, 51, 52, 53, 59, 60, 56, 57, 58]];
cc:=[2,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 34, 37, 45, 48, 33, 36, 44, 47, 30, 40, 43, 46, 29, 32, 42, 50, 28, 31, 39, 49, 27, 35, 38, 41, 51, 59, 62, 70, 73, 58, 61, 69, 72, 55, 65, 68, 71, 54, 57, 67, 75, 53, 56, 64, 74, 52, 60, 63, 66, 1, 9, 12, 20, 23, 8, 11, 19, 22, 5, 15, 18, 21, 4, 7, 17, 25, 3, 6, 14, 24, 2, 10, 13, 16], [72, 68, 64, 60, 51, 65, 56, 52, 73, 69, 53, 74, 70, 61, 57, 66, 62, 58, 54, 75, 59, 55, 71, 67, 63, 22, 18, 14, 10, 1, 15, 6, 2, 23, 19, 3, 24, 20, 11, 7, 16, 12, 8, 4, 25, 9, 5, 21, 17, 13, 47, 43, 39, 35, 26, 40, 31, 27, 48, 44, 28, 49, 45, 36, 32, 41, 37, 33, 29, 50, 34, 30, 46, 42, 38], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 35, 31, 32, 33, 34, 40, 36, 37, 38, 39, 45, 41, 42, 43, 44, 50, 46, 47, 48, 49, 30, 26, 27, 28, 29, 60, 56, 57, 58, 59, 65, 61, 62, 63, 64, 70, 66, 67, 68, 69, 75, 71, 72, 73, 74, 55, 51, 52, 53, 54]];
cc:=[2,3,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 34, 37, 45, 48, 33, 36, 44, 47, 30, 40, 43, 46, 29, 32, 42, 50, 28, 31, 39, 49, 27, 35, 38, 41, 51, 59, 62, 70, 73, 58, 61, 69, 72, 55, 65, 68, 71, 54, 57, 67, 75, 53, 56, 64, 74, 52, 60, 63, 66, 1, 9, 12, 20, 23, 8, 11, 19, 22, 5, 15, 18, 21, 4, 7, 17, 25, 3, 6, 14, 24, 2, 10, 13, 16], [71, 67, 63, 59, 55, 64, 60, 51, 72, 68, 52, 73, 69, 65, 56, 70, 61, 57, 53, 74, 58, 54, 75, 66, 62, 21, 17, 13, 9, 5, 14, 10, 1, 22, 18, 2, 23, 19, 15, 6, 20, 11, 7, 3, 24, 8, 4, 25, 16, 12, 46, 42, 38, 34, 30, 39, 35, 26, 47, 43, 27, 48, 44, 40, 31, 45, 36, 32, 28, 49, 33, 29, 50, 41, 37], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 26, 27, 28, 29, 30, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 51, 52, 53, 54, 55]];
cc:=[2,3,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 34, 37, 45, 48, 33, 36, 44, 47, 30, 40, 43, 46, 29, 32, 42, 50, 28, 31, 39, 49, 27, 35, 38, 41, 51, 59, 62, 70, 73, 58, 61, 69, 72, 55, 65, 68, 71, 54, 57, 67, 75, 53, 56, 64, 74, 52, 60, 63, 66, 1, 9, 12, 20, 23, 8, 11, 19, 22, 5, 15, 18, 21, 4, 7, 17, 25, 3, 6, 14, 24, 2, 10, 13, 16], [66, 62, 58, 54, 75, 59, 55, 71, 67, 63, 72, 68, 64, 60, 51, 65, 56, 52, 73, 69, 53, 74, 70, 61, 57, 16, 12, 8, 4, 25, 9, 5, 21, 17, 13, 22, 18, 14, 10, 1, 15, 6, 2, 23, 19, 3, 24, 20, 11, 7, 41, 37, 33, 29, 50, 34, 30, 46, 42, 38, 47, 43, 39, 35, 26, 40, 31, 27, 48, 44, 28, 49, 45, 36, 32], [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]];
cc:=[2,3,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 34, 37, 45, 48, 33, 36, 44, 47, 30, 40, 43, 46, 29, 32, 42, 50, 28, 31, 39, 49, 27, 35, 38, 41, 51, 59, 62, 70, 73, 58, 61, 69, 72, 55, 65, 68, 71, 54, 57, 67, 75, 53, 56, 64, 74, 52, 60, 63, 66, 1, 9, 12, 20, 23, 8, 11, 19, 22, 5, 15, 18, 21, 4, 7, 17, 25, 3, 6, 14, 24, 2, 10, 13, 16], [61, 57, 53, 74, 70, 54, 75, 66, 62, 58, 67, 63, 59, 55, 71, 60, 51, 72, 68, 64, 73, 69, 65, 56, 52, 11, 7, 3, 24, 20, 4, 25, 16, 12, 8, 17, 13, 9, 5, 21, 10, 1, 22, 18, 14, 23, 19, 15, 6, 2, 36, 32, 28, 49, 45, 29, 50, 41, 37, 33, 42, 38, 34, 30, 46, 35, 26, 47, 43, 39, 48, 44, 40, 31, 27], [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65]];
cc:=[2,3,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 34, 37, 45, 48, 33, 36, 44, 47, 30, 40, 43, 46, 29, 32, 42, 50, 28, 31, 39, 49, 27, 35, 38, 41, 51, 59, 62, 70, 73, 58, 61, 69, 72, 55, 65, 68, 71, 54, 57, 67, 75, 53, 56, 64, 74, 52, 60, 63, 66, 1, 9, 12, 20, 23, 8, 11, 19, 22, 5, 15, 18, 21, 4, 7, 17, 25, 3, 6, 14, 24, 2, 10, 13, 16], [56, 52, 73, 69, 65, 74, 70, 61, 57, 53, 62, 58, 54, 75, 66, 55, 71, 67, 63, 59, 68, 64, 60, 51, 72, 6, 2, 23, 19, 15, 24, 20, 11, 7, 3, 12, 8, 4, 25, 16, 5, 21, 17, 13, 9, 18, 14, 10, 1, 22, 31, 27, 48, 44, 40, 49, 45, 36, 32, 28, 37, 33, 29, 50, 41, 30, 46, 42, 38, 34, 43, 39, 35, 26, 47], [21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 46, 47, 48, 49, 50, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 71, 72, 73, 74, 75, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70]];
cc:=[2,3,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.56-7.0.2-4-14
// Create group as a permutation group and initialize signature information.
gp_id:=[56,7];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,14];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [49, 48, 47, 46, 45, 44, 43, 56, 55, 54, 53, 52, 51, 50, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 21, 20, 19, 18, 17, 16, 15, 28, 27, 26, 25, 24, 23, 22, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [16, 17, 18, 19, 20, 21, 15, 23, 24, 25, 26, 27, 28, 22, 2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8, 44, 45, 46, 47, 48, 49, 43, 51, 52, 53, 54, 55, 56, 50, 30, 31, 32, 33, 34, 35, 29, 37, 38, 39, 40, 41, 42, 36]];
cc:=[4,5,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [47, 46, 45, 44, 43, 49, 48, 54, 53, 52, 51, 50, 56, 55, 40, 39, 38, 37, 36, 42, 41, 33, 32, 31, 30, 29, 35, 34, 19, 18, 17, 16, 15, 21, 20, 26, 25, 24, 23, 22, 28, 27, 12, 11, 10, 9, 8, 14, 13, 5, 4, 3, 2, 1, 7, 6], [18, 19, 20, 21, 15, 16, 17, 25, 26, 27, 28, 22, 23, 24, 4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10, 46, 47, 48, 49, 43, 44, 45, 53, 54, 55, 56, 50, 51, 52, 32, 33, 34, 35, 29, 30, 31, 39, 40, 41, 42, 36, 37, 38]];
cc:=[4,5,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [45, 44, 43, 49, 48, 47, 46, 52, 51, 50, 56, 55, 54, 53, 38, 37, 36, 42, 41, 40, 39, 31, 30, 29, 35, 34, 33, 32, 17, 16, 15, 21, 20, 19, 18, 24, 23, 22, 28, 27, 26, 25, 10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4], [20, 21, 15, 16, 17, 18, 19, 27, 28, 22, 23, 24, 25, 26, 6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12, 48, 49, 43, 44, 45, 46, 47, 55, 56, 50, 51, 52, 53, 54, 34, 35, 29, 30, 31, 32, 33, 41, 42, 36, 37, 38, 39, 40]];
cc:=[4,5,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [48, 47, 46, 45, 44, 43, 49, 55, 54, 53, 52, 51, 50, 56, 41, 40, 39, 38, 37, 36, 42, 34, 33, 32, 31, 30, 29, 35, 20, 19, 18, 17, 16, 15, 21, 27, 26, 25, 24, 23, 22, 28, 13, 12, 11, 10, 9, 8, 14, 6, 5, 4, 3, 2, 1, 7], [17, 18, 19, 20, 21, 15, 16, 24, 25, 26, 27, 28, 22, 23, 3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9, 45, 46, 47, 48, 49, 43, 44, 52, 53, 54, 55, 56, 50, 51, 31, 32, 33, 34, 35, 29, 30, 38, 39, 40, 41, 42, 36, 37]];
cc:=[4,5,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [46, 45, 44, 43, 49, 48, 47, 53, 52, 51, 50, 56, 55, 54, 39, 38, 37, 36, 42, 41, 40, 32, 31, 30, 29, 35, 34, 33, 18, 17, 16, 15, 21, 20, 19, 25, 24, 23, 22, 28, 27, 26, 11, 10, 9, 8, 14, 13, 12, 4, 3, 2, 1, 7, 6, 5], [19, 20, 21, 15, 16, 17, 18, 26, 27, 28, 22, 23, 24, 25, 5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11, 47, 48, 49, 43, 44, 45, 46, 54, 55, 56, 50, 51, 52, 53, 33, 34, 35, 29, 30, 31, 32, 40, 41, 42, 36, 37, 38, 39]];
cc:=[4,5,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[29, 35, 34, 33, 32, 31, 30, 36, 42, 41, 40, 39, 38, 37, 50, 56, 55, 54, 53, 52, 51, 43, 49, 48, 47, 46, 45, 44, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9, 22, 28, 27, 26, 25, 24, 23, 15, 21, 20, 19, 18, 17, 16], [44, 43, 49, 48, 47, 46, 45, 51, 50, 56, 55, 54, 53, 52, 37, 36, 42, 41, 40, 39, 38, 30, 29, 35, 34, 33, 32, 31, 16, 15, 21, 20, 19, 18, 17, 23, 22, 28, 27, 26, 25, 24, 9, 8, 14, 13, 12, 11, 10, 2, 1, 7, 6, 5, 4, 3], [21, 15, 16, 17, 18, 19, 20, 28, 22, 23, 24, 25, 26, 27, 7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13, 49, 43, 44, 45, 46, 47, 48, 56, 50, 51, 52, 53, 54, 55, 35, 29, 30, 31, 32, 33, 34, 42, 36, 37, 38, 39, 40, 41]];
cc:=[4,5,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 36, 37, 38, 39, 40, 41, 42, 29, 30, 31, 32, 33, 34, 35, 50, 51, 52, 53, 54, 55, 56, 43, 44, 45, 46, 47, 48, 49];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.25-2.0.5-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[25,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,5,5,5];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5], [25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19]];
cc:=[2,6,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21], [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14]];
cc:=[2,7,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21], [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[2,8,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21], [21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4]];
cc:=[2,9,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1], [24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18]];
cc:=[2,10,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12]];
cc:=[2,11,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21], [19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[2,12,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2], [23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17]];
cc:=[2,14,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21], [17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[2,16,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3], [22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[2,18,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5], [24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18]];
cc:=[3,6,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22], [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13]];
cc:=[3,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22], [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[3,8,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22], [21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3]];
cc:=[3,9,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1], [23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17]];
cc:=[3,10,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11]];
cc:=[3,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22], [25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4]];
cc:=[3,13,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2], [22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[3,14,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14]];
cc:=[3,15,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12]];
cc:=[3,19,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5], [23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17]];
cc:=[4,6,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23], [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12]];
cc:=[4,7,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23], [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7]];
cc:=[4,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23], [21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2]];
cc:=[4,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1], [22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[4,10,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23], [19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[4,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23], [25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3]];
cc:=[4,13,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23], [17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[4,16,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23], [24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4]];
cc:=[4,17,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=29;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23], [20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[4,20,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=30;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24], [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5], [22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[5,6,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=31;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24], [11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11]];
cc:=[5,7,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=32;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24], [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[5,8,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=33;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24], [21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1]];
cc:=[5,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=34;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14]];
cc:=[5,11,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=35;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24], [19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[5,12,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=36;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24], [25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2]];
cc:=[5,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=37;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12]];
cc:=[5,15,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=38;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24], [24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3]];
cc:=[5,17,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=39;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24], [23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4]];
cc:=[5,21,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=40;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1], [20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14]];
cc:=[6,10,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=41;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[6,11,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=42;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5], [19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2]];
cc:=[6,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=43;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[6,15,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=44;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5], [17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4]];
cc:=[6,16,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=45;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3], [18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12]];
cc:=[6,18,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=46;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[7,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=47;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3]];
cc:=[7,11,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=48;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[7,13,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=49;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[7,14,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=50;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18], [23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17]];
cc:=[7,17,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=51;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4]];
cc:=[7,19,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=52;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4]];
cc:=[8,10,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=53;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17]];
cc:=[8,12,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=54;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11]];
cc:=[8,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=55;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3]];
cc:=[8,14,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=56;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18], [18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12]];
cc:=[8,17,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=57;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], [20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14], [22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[8,20,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=58;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18]];
cc:=[9,11,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=59;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12]];
cc:=[9,12,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=60;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[9,13,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=61;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[9,15,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=62;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14]];
cc:=[9,16,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=63;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[21, 22, 23, 24, 25, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[9,21,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=64;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2], [18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12]];
cc:=[10,14,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=65;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1], [17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3]];
cc:=[10,16,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=66;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[10,19,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=67;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[11,14,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=68;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4]];
cc:=[11,15,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=69;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17], [22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[11,21,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=70;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[12,16,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=71;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18], [20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14]];
cc:=[12,17,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=72;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4]];
cc:=[12,18,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=73;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17]];
cc:=[13,15,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=74;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[13,17,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=75;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19], [20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14], [18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12]];
cc:=[13,20,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=76;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2], [20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4]];
cc:=[14,20,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=77;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[15,18,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=78;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17], [18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12]];
cc:=[16,21,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=79;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16]];
cc:=[17,19,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=80;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.28-1.0.4-4-7
// Create group as a permutation group and initialize signature information.
gp_id:=[28,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,7];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 7, 6, 5, 4, 3, 2, 1, 14, 13, 12, 11, 10, 9, 8], [2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8, 16, 17, 18, 19, 20, 21, 15, 23, 24, 25, 26, 27, 28, 22]];
cc:=[3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [24, 23, 22, 28, 27, 26, 25, 17, 16, 15, 21, 20, 19, 18, 3, 2, 1, 7, 6, 5, 4, 10, 9, 8, 14, 13, 12, 11], [6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12, 20, 21, 15, 16, 17, 18, 19, 27, 28, 22, 23, 24, 25, 26]];
cc:=[3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [26, 25, 24, 23, 22, 28, 27, 19, 18, 17, 16, 15, 21, 20, 5, 4, 3, 2, 1, 7, 6, 12, 11, 10, 9, 8, 14, 13], [4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10, 18, 19, 20, 21, 15, 16, 17, 25, 26, 27, 28, 22, 23, 24]];
cc:=[3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.28-4.0.2-14-14
// Create group as a permutation group and initialize signature information.
gp_id:=[28,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,14,14];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [16, 17, 18, 19, 20, 21, 15, 23, 24, 25, 26, 27, 28, 22, 2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8], [28, 22, 23, 24, 25, 26, 27, 21, 15, 16, 17, 18, 19, 20, 14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6]];
cc:=[2,17,28];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [18, 19, 20, 21, 15, 16, 17, 25, 26, 27, 28, 22, 23, 24, 4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10], [26, 27, 28, 22, 23, 24, 25, 19, 20, 21, 15, 16, 17, 18, 12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4]];
cc:=[2,18,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [20, 21, 15, 16, 17, 18, 19, 27, 28, 22, 23, 24, 25, 26, 6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12], [24, 25, 26, 27, 28, 22, 23, 17, 18, 19, 20, 21, 15, 16, 10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2]];
cc:=[2,19,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [17, 18, 19, 20, 21, 15, 16, 24, 25, 26, 27, 28, 22, 23, 3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9], [27, 28, 22, 23, 24, 25, 26, 20, 21, 15, 16, 17, 18, 19, 13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5]];
cc:=[2,20,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [19, 20, 21, 15, 16, 17, 18, 26, 27, 28, 22, 23, 24, 25, 5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11], [25, 26, 27, 28, 22, 23, 24, 18, 19, 20, 21, 15, 16, 17, 11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3]];
cc:=[2,21,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [21, 15, 16, 17, 18, 19, 20, 28, 22, 23, 24, 25, 26, 27, 7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13], [23, 24, 25, 26, 27, 28, 22, 16, 17, 18, 19, 20, 21, 15, 9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1]];
cc:=[2,22,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1, 23, 24, 25, 26, 27, 28, 22, 16, 17, 18, 19, 20, 21, 15], [28, 22, 23, 24, 25, 26, 27, 21, 15, 16, 17, 18, 19, 20, 14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6]];
cc:=[3,11,28];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3, 25, 26, 27, 28, 22, 23, 24, 18, 19, 20, 21, 15, 16, 17], [26, 27, 28, 22, 23, 24, 25, 19, 20, 21, 15, 16, 17, 18, 12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4]];
cc:=[3,12,27];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5, 27, 28, 22, 23, 24, 25, 26, 20, 21, 15, 16, 17, 18, 19], [24, 25, 26, 27, 28, 22, 23, 17, 18, 19, 20, 21, 15, 16, 10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2]];
cc:=[3,13,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2, 24, 25, 26, 27, 28, 22, 23, 17, 18, 19, 20, 21, 15, 16], [27, 28, 22, 23, 24, 25, 26, 20, 21, 15, 16, 17, 18, 19, 13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5]];
cc:=[3,14,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4, 26, 27, 28, 22, 23, 24, 25, 19, 20, 21, 15, 16, 17, 18], [25, 26, 27, 28, 22, 23, 24, 18, 19, 20, 21, 15, 16, 17, 11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3]];
cc:=[3,15,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6, 28, 22, 23, 24, 25, 26, 27, 21, 15, 16, 17, 18, 19, 20], [23, 24, 25, 26, 27, 28, 22, 16, 17, 18, 19, 20, 21, 15, 9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1]];
cc:=[3,16,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1, 23, 24, 25, 26, 27, 28, 22, 16, 17, 18, 19, 20, 21, 15], [21, 15, 16, 17, 18, 19, 20, 28, 22, 23, 24, 25, 26, 27, 7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13]];
cc:=[4,11,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3, 25, 26, 27, 28, 22, 23, 24, 18, 19, 20, 21, 15, 16, 17], [19, 20, 21, 15, 16, 17, 18, 26, 27, 28, 22, 23, 24, 25, 5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11]];
cc:=[4,12,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5, 27, 28, 22, 23, 24, 25, 26, 20, 21, 15, 16, 17, 18, 19], [17, 18, 19, 20, 21, 15, 16, 24, 25, 26, 27, 28, 22, 23, 3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9]];
cc:=[4,13,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2, 24, 25, 26, 27, 28, 22, 23, 17, 18, 19, 20, 21, 15, 16], [20, 21, 15, 16, 17, 18, 19, 27, 28, 22, 23, 24, 25, 26, 6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12]];
cc:=[4,14,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4, 26, 27, 28, 22, 23, 24, 25, 19, 20, 21, 15, 16, 17, 18], [18, 19, 20, 21, 15, 16, 17, 25, 26, 27, 28, 22, 23, 24, 4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10]];
cc:=[4,15,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21, 8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6, 28, 22, 23, 24, 25, 26, 27, 21, 15, 16, 17, 18, 19, 20], [16, 17, 18, 19, 20, 21, 15, 23, 24, 25, 26, 27, 28, 22, 2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8]];
cc:=[4,16,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.15-1.0.5-15-15
// Create group as a permutation group and initialize signature information.
gp_id:=[15,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,5,15,15];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1], [14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[4,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [13, 14, 15, 11, 12, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 3, 4, 5, 1, 2]];
cc:=[4,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[30,1];
full_sign:=[0,2,10,15];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11], [12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3]];
cc:=[4,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1], [13, 14, 15, 11, 12, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7]];
cc:=[5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 5, 1, 2, 3, 4], [15, 11, 12, 13, 14, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[5,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[30,1];
full_sign:=[0,2,10,15];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 13, 14, 15, 11, 12], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 3, 4, 5, 1, 2], [12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[5,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1], [12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[6,8,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[30,1];
full_sign:=[0,2,10,15];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 5, 1, 2, 3, 4], [14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[6,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3], [15, 11, 12, 13, 14, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[6,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14], [13, 14, 15, 11, 12, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 5, 1, 2, 3, 4]];
cc:=[7,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 3, 4, 5, 1, 2], [15, 11, 12, 13, 14, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[7,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14], [14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3]];
cc:=[7,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[30,1];
full_sign:=[0,2,10,15];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.16-1.0.4-16-16
// Create group as a permutation group and initialize signature information.
gp_id:=[16,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,16,16];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 3, 4, 2, 1], [14, 13, 16, 15, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[3,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [13, 14, 15, 16, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5], [10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[3,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 2, 1, 4, 3], [15, 16, 14, 13, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[3,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 1, 2, 3, 4], [16, 15, 13, 14, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[3,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14], [9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 3, 4, 2, 1], [13, 14, 15, 16, 11, 12, 10, 9, 3, 4, 2, 1, 7, 8, 6, 5]];
cc:=[4,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14], [11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 2, 1, 4, 3], [16, 15, 13, 14, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[4,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14], [15, 16, 14, 13, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[4,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14], [10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 4, 3, 1, 2], [14, 13, 16, 15, 12, 11, 9, 10, 4, 3, 1, 2, 8, 7, 5, 6]];
cc:=[4,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.18-2.0.3-18-18
// Create group as a permutation group and initialize signature information.
gp_id:=[18,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,18,18];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1], [17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[3,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3], [18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[3,15,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4], [14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[3,16,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [13, 14, 15, 16, 17, 18, 11, 12, 10, 4, 5, 6, 7, 8, 9, 2, 3, 1], [16, 17, 18, 11, 12, 10, 14, 15, 13, 7, 8, 9, 2, 3, 1, 5, 6, 4]];
cc:=[4,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [17, 18, 16, 12, 10, 11, 15, 13, 14, 8, 9, 7, 3, 1, 2, 6, 4, 5], [15, 13, 14, 18, 16, 17, 10, 11, 12, 6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[4,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [14, 15, 13, 17, 18, 16, 12, 10, 11, 5, 6, 4, 8, 9, 7, 3, 1, 2], [18, 16, 17, 10, 11, 12, 13, 14, 15, 9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[4,17,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.20-2.0.4-5-20
// Create group as a permutation group and initialize signature information.
gp_id:=[20,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,5,20];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9], [3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 13, 14, 15, 16, 17, 18, 19, 20, 11, 12], [20, 19, 12, 11, 14, 13, 16, 15, 18, 17, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[3,5,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9], [5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 15, 16, 17, 18, 19, 20, 11, 12, 13, 14], [18, 17, 20, 19, 12, 11, 14, 13, 16, 15, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6]];
cc:=[3,6,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9], [7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 17, 18, 19, 20, 11, 12, 13, 14, 15, 16], [16, 15, 18, 17, 20, 19, 12, 11, 14, 13, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4]];
cc:=[3,7,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9], [9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 19, 20, 11, 12, 13, 14, 15, 16, 17, 18], [14, 13, 16, 15, 18, 17, 20, 19, 12, 11, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2]];
cc:=[3,8,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 13, 14, 15, 16, 17, 18, 19, 20, 11, 12], [19, 20, 11, 12, 13, 14, 15, 16, 17, 18, 10, 9, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[4,5,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 15, 16, 17, 18, 19, 20, 11, 12, 13, 14], [17, 18, 19, 20, 11, 12, 13, 14, 15, 16, 8, 7, 10, 9, 2, 1, 4, 3, 6, 5]];
cc:=[4,6,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 17, 18, 19, 20, 11, 12, 13, 14, 15, 16], [15, 16, 17, 18, 19, 20, 11, 12, 13, 14, 6, 5, 8, 7, 10, 9, 2, 1, 4, 3]];
cc:=[4,7,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 19, 20, 11, 12, 13, 14, 15, 16, 17, 18], [13, 14, 15, 16, 17, 18, 19, 20, 11, 12, 4, 3, 6, 5, 8, 7, 10, 9, 2, 1]];
cc:=[4,8,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.21-2.0.3-7-21
// Create group as a permutation group and initialize signature information.
gp_id:=[21,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,7,21];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7], [2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8, 16, 17, 18, 19, 20, 21, 15], [21, 15, 16, 17, 18, 19, 20, 7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13]];
cc:=[2,4,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7], [3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9, 17, 18, 19, 20, 21, 15, 16], [20, 21, 15, 16, 17, 18, 19, 6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12]];
cc:=[2,5,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7], [4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10, 18, 19, 20, 21, 15, 16, 17], [19, 20, 21, 15, 16, 17, 18, 5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11]];
cc:=[2,6,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7], [5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11, 19, 20, 21, 15, 16, 17, 18], [18, 19, 20, 21, 15, 16, 17, 4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10]];
cc:=[2,7,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7], [6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12, 20, 21, 15, 16, 17, 18, 19], [17, 18, 19, 20, 21, 15, 16, 3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9]];
cc:=[2,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7], [7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13, 21, 15, 16, 17, 18, 19, 20], [16, 17, 18, 19, 20, 21, 15, 2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8]];
cc:=[2,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8, 16, 17, 18, 19, 20, 21, 15], [14, 8, 9, 10, 11, 12, 13, 21, 15, 16, 17, 18, 19, 20, 7, 1, 2, 3, 4, 5, 6]];
cc:=[3,4,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9, 17, 18, 19, 20, 21, 15, 16], [13, 14, 8, 9, 10, 11, 12, 20, 21, 15, 16, 17, 18, 19, 6, 7, 1, 2, 3, 4, 5]];
cc:=[3,5,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10, 18, 19, 20, 21, 15, 16, 17], [12, 13, 14, 8, 9, 10, 11, 19, 20, 21, 15, 16, 17, 18, 5, 6, 7, 1, 2, 3, 4]];
cc:=[3,6,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11, 19, 20, 21, 15, 16, 17, 18], [11, 12, 13, 14, 8, 9, 10, 18, 19, 20, 21, 15, 16, 17, 4, 5, 6, 7, 1, 2, 3]];
cc:=[3,7,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12, 20, 21, 15, 16, 17, 18, 19], [10, 11, 12, 13, 14, 8, 9, 17, 18, 19, 20, 21, 15, 16, 3, 4, 5, 6, 7, 1, 2]];
cc:=[3,8,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], [7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13, 21, 15, 16, 17, 18, 19, 20], [9, 10, 11, 12, 13, 14, 8, 16, 17, 18, 19, 20, 21, 15, 2, 3, 4, 5, 6, 7, 1]];
cc:=[3,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.48-6.0.2-4-24
// Create group as a permutation group and initialize signature information.
gp_id:=[48,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,24];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [41, 40, 42, 38, 37, 39, 44, 43, 45, 47, 46, 48, 26, 25, 27, 29, 28, 30, 35, 34, 36, 32, 31, 33, 17, 16, 18, 14, 13, 15, 20, 19, 21, 23, 22, 24, 2, 1, 3, 5, 4, 6, 11, 10, 12, 8, 7, 9], [21, 19, 20, 24, 22, 23, 18, 16, 17, 15, 13, 14, 6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8, 45, 43, 44, 48, 46, 47, 42, 40, 41, 39, 37, 38, 30, 28, 29, 27, 25, 26, 36, 34, 35, 33, 31, 32]];
cc:=[3,6,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21, 28, 29, 30, 25, 26, 27, 34, 35, 36, 31, 32, 33, 40, 41, 42, 37, 38, 39, 46, 47, 48, 43, 44, 45];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [39, 38, 37, 42, 41, 40, 48, 47, 46, 45, 44, 43, 30, 29, 28, 27, 26, 25, 33, 32, 31, 36, 35, 34, 15, 14, 13, 18, 17, 16, 24, 23, 22, 21, 20, 19, 6, 5, 4, 3, 2, 1, 9, 8, 7, 12, 11, 10], [23, 24, 22, 20, 21, 19, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 47, 48, 46, 44, 45, 43, 38, 39, 37, 41, 42, 40, 26, 27, 25, 29, 30, 28, 32, 33, 31, 35, 36, 34]];
cc:=[3,6,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21, 28, 29, 30, 25, 26, 27, 34, 35, 36, 31, 32, 33, 40, 41, 42, 37, 38, 39, 46, 47, 48, 43, 44, 45];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [38, 37, 39, 41, 40, 42, 47, 46, 48, 44, 43, 45, 29, 28, 30, 26, 25, 27, 32, 31, 33, 35, 34, 36, 14, 13, 15, 17, 16, 18, 23, 22, 24, 20, 19, 21, 5, 4, 6, 2, 1, 3, 8, 7, 9, 11, 10, 12], [24, 22, 23, 21, 19, 20, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 48, 46, 47, 45, 43, 44, 39, 37, 38, 42, 40, 41, 27, 25, 26, 30, 28, 29, 33, 31, 32, 36, 34, 35]];
cc:=[3,6,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21, 28, 29, 30, 25, 26, 27, 34, 35, 36, 31, 32, 33, 40, 41, 42, 37, 38, 39, 46, 47, 48, 43, 44, 45];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [42, 41, 40, 39, 38, 37, 45, 44, 43, 48, 47, 46, 27, 26, 25, 30, 29, 28, 36, 35, 34, 33, 32, 31, 18, 17, 16, 15, 14, 13, 21, 20, 19, 24, 23, 22, 3, 2, 1, 6, 5, 4, 12, 11, 10, 9, 8, 7], [20, 21, 19, 23, 24, 22, 17, 18, 16, 14, 15, 13, 5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7, 44, 45, 43, 47, 48, 46, 41, 42, 40, 38, 39, 37, 29, 30, 28, 26, 27, 25, 35, 36, 34, 32, 33, 31]];
cc:=[3,6,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21, 28, 29, 30, 25, 26, 27, 34, 35, 36, 31, 32, 33, 40, 41, 42, 37, 38, 39, 46, 47, 48, 43, 44, 45];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.24-1.0.3-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[24,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,8,8];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 3, 2, 1, 6, 5, 4, 9, 8, 7, 12, 11, 10]];
cc:=[3,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,15];
full_sign:=[0,2,6,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22], [19, 21, 20, 22, 24, 23, 16, 18, 17, 13, 15, 14, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [18, 17, 16, 15, 14, 13, 24, 23, 22, 21, 20, 19, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[3,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,15];
full_sign:=[0,2,6,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.26-2.0.2-13-26
// Create group as a permutation group and initialize signature information.
gp_id:=[26,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,13,26];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 14], [26, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[2,3,26];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 14, 15], [25, 26, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]];
cc:=[2,4,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 14, 15, 16], [24, 25, 26, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[2,5,25];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 18, 19, 20, 21, 22, 23, 24, 25, 26, 14, 15, 16, 17], [23, 24, 25, 26, 14, 15, 16, 17, 18, 19, 20, 21, 22, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[2,6,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 19, 20, 21, 22, 23, 24, 25, 26, 14, 15, 16, 17, 18], [22, 23, 24, 25, 26, 14, 15, 16, 17, 18, 19, 20, 21, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,7,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 20, 21, 22, 23, 24, 25, 26, 14, 15, 16, 17, 18, 19], [21, 22, 23, 24, 25, 26, 14, 15, 16, 17, 18, 19, 20, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7]];
cc:=[2,8,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 21, 22, 23, 24, 25, 26, 14, 15, 16, 17, 18, 19, 20], [20, 21, 22, 23, 24, 25, 26, 14, 15, 16, 17, 18, 19, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6]];
cc:=[2,9,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 22, 23, 24, 25, 26, 14, 15, 16, 17, 18, 19, 20, 21], [19, 20, 21, 22, 23, 24, 25, 26, 14, 15, 16, 17, 18, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5]];
cc:=[2,10,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 23, 24, 25, 26, 14, 15, 16, 17, 18, 19, 20, 21, 22], [18, 19, 20, 21, 22, 23, 24, 25, 26, 14, 15, 16, 17, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4]];
cc:=[2,11,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 24, 25, 26, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23], [17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 14, 15, 16, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3]];
cc:=[2,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 25, 26, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24], [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 14, 15, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2]];
cc:=[2,13,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], [13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 26, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25], [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 14, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1]];
cc:=[2,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.30-1.0.2-10-15
// Create group as a permutation group and initialize signature information.
gp_id:=[30,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,10,15];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[16, 18, 17, 19, 21, 20, 22, 24, 23, 25, 27, 26, 28, 30, 29, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14], [21, 20, 19, 24, 23, 22, 27, 26, 25, 30, 29, 28, 18, 17, 16, 6, 5, 4, 9, 8, 7, 12, 11, 10, 15, 14, 13, 3, 2, 1], [14, 15, 13, 2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 29, 30, 28, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25]];
cc:=[2,8,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 18, 17, 19, 21, 20, 22, 24, 23, 25, 27, 26, 28, 30, 29, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14], [27, 26, 25, 30, 29, 28, 18, 17, 16, 21, 20, 19, 24, 23, 22, 12, 11, 10, 15, 14, 13, 3, 2, 1, 6, 5, 4, 9, 8, 7], [8, 9, 7, 11, 12, 10, 14, 15, 13, 2, 3, 1, 5, 6, 4, 23, 24, 22, 26, 27, 25, 29, 30, 28, 17, 18, 16, 20, 21, 19]];
cc:=[2,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 18, 17, 19, 21, 20, 22, 24, 23, 25, 27, 26, 28, 30, 29, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14], [24, 23, 22, 27, 26, 25, 30, 29, 28, 18, 17, 16, 21, 20, 19, 9, 8, 7, 12, 11, 10, 15, 14, 13, 3, 2, 1, 6, 5, 4], [11, 12, 10, 14, 15, 13, 2, 3, 1, 5, 6, 4, 8, 9, 7, 26, 27, 25, 29, 30, 28, 17, 18, 16, 20, 21, 19, 23, 24, 22]];
cc:=[2,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 18, 17, 19, 21, 20, 22, 24, 23, 25, 27, 26, 28, 30, 29, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 15, 14], [30, 29, 28, 18, 17, 16, 21, 20, 19, 24, 23, 22, 27, 26, 25, 15, 14, 13, 3, 2, 1, 6, 5, 4, 9, 8, 7, 12, 11, 10], [5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 2, 3, 1, 20, 21, 19, 23, 24, 22, 26, 27, 25, 29, 30, 28, 17, 18, 16]];
cc:=[2,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.39-1.0.3-3-13
// Create group as a permutation group and initialize signature information.
gp_id:=[39,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,13];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[14, 17, 20, 23, 26, 16, 19, 22, 25, 15, 18, 21, 24, 27, 30, 33, 36, 39, 29, 32, 35, 38, 28, 31, 34, 37, 1, 4, 7, 10, 13, 3, 6, 9, 12, 2, 5, 8, 11], [37, 33, 29, 38, 34, 30, 39, 35, 31, 27, 36, 32, 28, 11, 7, 3, 12, 8, 4, 13, 9, 5, 1, 10, 6, 2, 24, 20, 16, 25, 21, 17, 26, 22, 18, 14, 23, 19, 15], [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 14, 15, 16, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 27, 28, 29]];
cc:=[2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 17, 20, 23, 26, 16, 19, 22, 25, 15, 18, 21, 24, 27, 30, 33, 36, 39, 29, 32, 35, 38, 28, 31, 34, 37, 1, 4, 7, 10, 13, 3, 6, 9, 12, 2, 5, 8, 11], [34, 30, 39, 35, 31, 27, 36, 32, 28, 37, 33, 29, 38, 8, 4, 13, 9, 5, 1, 10, 6, 2, 11, 7, 3, 12, 21, 17, 26, 22, 18, 14, 23, 19, 15, 24, 20, 16, 25], [7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 20, 21, 22, 23, 24, 25, 26, 14, 15, 16, 17, 18, 19, 33, 34, 35, 36, 37, 38, 39, 27, 28, 29, 30, 31, 32]];
cc:=[2,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 17, 20, 23, 26, 16, 19, 22, 25, 15, 18, 21, 24, 27, 30, 33, 36, 39, 29, 32, 35, 38, 28, 31, 34, 37, 1, 4, 7, 10, 13, 3, 6, 9, 12, 2, 5, 8, 11], [36, 32, 28, 37, 33, 29, 38, 34, 30, 39, 35, 31, 27, 10, 6, 2, 11, 7, 3, 12, 8, 4, 13, 9, 5, 1, 23, 19, 15, 24, 20, 16, 25, 21, 17, 26, 22, 18, 14], [5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 18, 19, 20, 21, 22, 23, 24, 25, 26, 14, 15, 16, 17, 31, 32, 33, 34, 35, 36, 37, 38, 39, 27, 28, 29, 30]];
cc:=[2,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 17, 20, 23, 26, 16, 19, 22, 25, 15, 18, 21, 24, 27, 30, 33, 36, 39, 29, 32, 35, 38, 28, 31, 34, 37, 1, 4, 7, 10, 13, 3, 6, 9, 12, 2, 5, 8, 11], [32, 28, 37, 33, 29, 38, 34, 30, 39, 35, 31, 27, 36, 6, 2, 11, 7, 3, 12, 8, 4, 13, 9, 5, 1, 10, 19, 15, 24, 20, 16, 25, 21, 17, 26, 22, 18, 14, 23], [9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 22, 23, 24, 25, 26, 14, 15, 16, 17, 18, 19, 20, 21, 35, 36, 37, 38, 39, 27, 28, 29, 30, 31, 32, 33, 34]];
cc:=[2,3,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.48-15.0.2-6-8
// Create group as a permutation group and initialize signature information.
gp_id:=[48,15];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,8];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [14, 15, 13, 17, 18, 16, 23, 24, 22, 20, 21, 19, 2, 3, 1, 5, 6, 4, 11, 12, 10, 8, 9, 7, 38, 39, 37, 41, 42, 40, 47, 48, 46, 44, 45, 43, 26, 27, 25, 29, 30, 28, 35, 36, 34, 32, 33, 31], [44, 43, 45, 47, 46, 48, 41, 40, 42, 38, 37, 39, 26, 25, 27, 29, 28, 30, 32, 31, 33, 35, 34, 36, 20, 19, 21, 23, 22, 24, 17, 16, 18, 14, 13, 15, 2, 1, 3, 5, 4, 6, 8, 7, 9, 11, 10, 12]];
cc:=[4,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 29, 30, 28, 32, 33, 31, 35, 36, 34, 38, 39, 37, 41, 42, 40, 44, 45, 43, 47, 48, 46];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [17, 18, 16, 14, 15, 13, 20, 21, 19, 23, 24, 22, 5, 6, 4, 2, 3, 1, 8, 9, 7, 11, 12, 10, 41, 42, 40, 38, 39, 37, 44, 45, 43, 47, 48, 46, 29, 30, 28, 26, 27, 25, 32, 33, 31, 35, 36, 34], [47, 46, 48, 44, 43, 45, 38, 37, 39, 41, 40, 42, 29, 28, 30, 26, 25, 27, 35, 34, 36, 32, 31, 33, 23, 22, 24, 20, 19, 21, 14, 13, 15, 17, 16, 18, 5, 4, 6, 2, 1, 3, 11, 10, 12, 8, 7, 9]];
cc:=[4,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 29, 30, 28, 32, 33, 31, 35, 36, 34, 38, 39, 37, 41, 42, 40, 44, 45, 43, 47, 48, 46];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [15, 13, 14, 18, 16, 17, 24, 22, 23, 21, 19, 20, 3, 1, 2, 6, 4, 5, 12, 10, 11, 9, 7, 8, 39, 37, 38, 42, 40, 41, 48, 46, 47, 45, 43, 44, 27, 25, 26, 30, 28, 29, 36, 34, 35, 33, 31, 32], [45, 44, 43, 48, 47, 46, 42, 41, 40, 39, 38, 37, 27, 26, 25, 30, 29, 28, 33, 32, 31, 36, 35, 34, 21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 3, 2, 1, 6, 5, 4, 9, 8, 7, 12, 11, 10]];
cc:=[4,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 29, 30, 28, 32, 33, 31, 35, 36, 34, 38, 39, 37, 41, 42, 40, 44, 45, 43, 47, 48, 46];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 34, 36, 35, 31, 33, 32, 43, 45, 44, 46, 48, 47, 37, 39, 38, 40, 42, 41, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8, 19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17], [18, 16, 17, 15, 13, 14, 21, 19, 20, 24, 22, 23, 6, 4, 5, 3, 1, 2, 9, 7, 8, 12, 10, 11, 42, 40, 41, 39, 37, 38, 45, 43, 44, 48, 46, 47, 30, 28, 29, 27, 25, 26, 33, 31, 32, 36, 34, 35], [48, 47, 46, 45, 44, 43, 39, 38, 37, 42, 41, 40, 30, 29, 28, 27, 26, 25, 36, 35, 34, 33, 32, 31, 24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 6, 5, 4, 3, 2, 1, 12, 11, 10, 9, 8, 7]];
cc:=[4,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 26, 27, 25, 29, 30, 28, 32, 33, 31, 35, 36, 34, 38, 39, 37, 41, 42, 40, 44, 45, 43, 47, 48, 46];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.48-29.0.2-6-8
// Create group as a permutation group and initialize signature information.
gp_id:=[48,29];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,8];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 26, 29, 30, 27, 28, 32, 31, 41, 42, 45, 46, 43, 44, 48, 47, 33, 34, 37, 38, 35, 36, 40, 39, 1, 2, 5, 6, 3, 4, 8, 7, 17, 18, 21, 22, 19, 20, 24, 23, 9, 10, 13, 14, 11, 12, 16, 15], [15, 16, 10, 9, 14, 13, 11, 12, 23, 24, 18, 17, 22, 21, 19, 20, 7, 8, 2, 1, 6, 5, 3, 4, 39, 40, 34, 33, 38, 37, 35, 36, 47, 48, 42, 41, 46, 45, 43, 44, 31, 32, 26, 25, 30, 29, 27, 28], [38, 37, 40, 39, 36, 35, 33, 34, 30, 29, 32, 31, 28, 27, 25, 26, 46, 45, 48, 47, 44, 43, 41, 42, 14, 13, 16, 15, 12, 11, 9, 10, 6, 5, 8, 7, 4, 3, 1, 2, 22, 21, 24, 23, 20, 19, 17, 18]];
cc:=[3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 26, 29, 30, 27, 28, 32, 31, 41, 42, 45, 46, 43, 44, 48, 47, 33, 34, 37, 38, 35, 36, 40, 39, 1, 2, 5, 6, 3, 4, 8, 7, 17, 18, 21, 22, 19, 20, 24, 23, 9, 10, 13, 14, 11, 12, 16, 15], [14, 13, 12, 11, 16, 15, 10, 9, 22, 21, 20, 19, 24, 23, 18, 17, 6, 5, 4, 3, 8, 7, 2, 1, 38, 37, 36, 35, 40, 39, 34, 33, 46, 45, 44, 43, 48, 47, 42, 41, 30, 29, 28, 27, 32, 31, 26, 25], [39, 40, 38, 37, 34, 33, 36, 35, 31, 32, 30, 29, 26, 25, 28, 27, 47, 48, 46, 45, 42, 41, 44, 43, 15, 16, 14, 13, 10, 9, 12, 11, 7, 8, 6, 5, 2, 1, 4, 3, 23, 24, 22, 21, 18, 17, 20, 19]];
cc:=[3,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.72-15.0.2-4-9
// Create group as a permutation group and initialize signature information.
gp_id:=[72,15];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,9];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 65, 67, 66, 68, 61, 63, 62, 64, 69, 71, 70, 72, 53, 55, 54, 56, 49, 51, 50, 52, 57, 59, 58, 60, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8, 29, 31, 30, 32, 25, 27, 26, 28, 33, 35, 34, 36, 17, 19, 18, 20, 13, 15, 14, 16, 21, 23, 22, 24], [68, 65, 66, 67, 64, 61, 62, 63, 72, 69, 70, 71, 56, 53, 54, 55, 52, 49, 50, 51, 60, 57, 58, 59, 44, 41, 42, 43, 40, 37, 38, 39, 48, 45, 46, 47, 32, 29, 30, 31, 28, 25, 26, 27, 36, 33, 34, 35, 20, 17, 18, 19, 16, 13, 14, 15, 24, 21, 22, 23, 8, 5, 6, 7, 4, 1, 2, 3, 12, 9, 10, 11], [15, 14, 16, 13, 19, 18, 20, 17, 23, 22, 24, 21, 27, 26, 28, 25, 31, 30, 32, 29, 35, 34, 36, 33, 11, 10, 12, 9, 3, 2, 4, 1, 7, 6, 8, 5, 51, 50, 52, 49, 55, 54, 56, 53, 59, 58, 60, 57, 63, 62, 64, 61, 67, 66, 68, 65, 71, 70, 72, 69, 47, 46, 48, 45, 39, 38, 40, 37, 43, 42, 44, 41]];
cc:=[3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40, 53, 54, 55, 56, 57, 58, 59, 60, 49, 50, 51, 52, 65, 66, 67, 68, 69, 70, 71, 72, 61, 62, 63, 64];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 65, 67, 66, 68, 61, 63, 62, 64, 69, 71, 70, 72, 53, 55, 54, 56, 49, 51, 50, 52, 57, 59, 58, 60, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8, 29, 31, 30, 32, 25, 27, 26, 28, 33, 35, 34, 36, 17, 19, 18, 20, 13, 15, 14, 16, 21, 23, 22, 24], [64, 61, 62, 63, 72, 69, 70, 71, 68, 65, 66, 67, 52, 49, 50, 51, 60, 57, 58, 59, 56, 53, 54, 55, 40, 37, 38, 39, 48, 45, 46, 47, 44, 41, 42, 43, 28, 25, 26, 27, 36, 33, 34, 35, 32, 29, 30, 31, 16, 13, 14, 15, 24, 21, 22, 23, 20, 17, 18, 19, 4, 1, 2, 3, 12, 9, 10, 11, 8, 5, 6, 7], [19, 18, 20, 17, 23, 22, 24, 21, 15, 14, 16, 13, 31, 30, 32, 29, 35, 34, 36, 33, 27, 26, 28, 25, 3, 2, 4, 1, 7, 6, 8, 5, 11, 10, 12, 9, 55, 54, 56, 53, 59, 58, 60, 57, 51, 50, 52, 49, 67, 66, 68, 65, 71, 70, 72, 69, 63, 62, 64, 61, 39, 38, 40, 37, 43, 42, 44, 41, 47, 46, 48, 45]];
cc:=[3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40, 53, 54, 55, 56, 57, 58, 59, 60, 49, 50, 51, 52, 65, 66, 67, 68, 69, 70, 71, 72, 61, 62, 63, 64];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 65, 67, 66, 68, 61, 63, 62, 64, 69, 71, 70, 72, 53, 55, 54, 56, 49, 51, 50, 52, 57, 59, 58, 60, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8, 29, 31, 30, 32, 25, 27, 26, 28, 33, 35, 34, 36, 17, 19, 18, 20, 13, 15, 14, 16, 21, 23, 22, 24], [72, 69, 70, 71, 68, 65, 66, 67, 64, 61, 62, 63, 60, 57, 58, 59, 56, 53, 54, 55, 52, 49, 50, 51, 48, 45, 46, 47, 44, 41, 42, 43, 40, 37, 38, 39, 36, 33, 34, 35, 32, 29, 30, 31, 28, 25, 26, 27, 24, 21, 22, 23, 20, 17, 18, 19, 16, 13, 14, 15, 12, 9, 10, 11, 8, 5, 6, 7, 4, 1, 2, 3], [23, 22, 24, 21, 15, 14, 16, 13, 19, 18, 20, 17, 35, 34, 36, 33, 27, 26, 28, 25, 31, 30, 32, 29, 7, 6, 8, 5, 11, 10, 12, 9, 3, 2, 4, 1, 59, 58, 60, 57, 51, 50, 52, 49, 55, 54, 56, 53, 71, 70, 72, 69, 63, 62, 64, 61, 67, 66, 68, 65, 43, 42, 44, 41, 47, 46, 48, 45, 39, 38, 40, 37]];
cc:=[3,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![5, 6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 17, 18, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 25, 26, 27, 28, 41, 42, 43, 44, 45, 46, 47, 48, 37, 38, 39, 40, 53, 54, 55, 56, 57, 58, 59, 60, 49, 50, 51, 52, 65, 66, 67, 68, 69, 70, 71, 72, 61, 62, 63, 64];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.150-5.0.2-3-10
// Create group as a permutation group and initialize signature information.
gp_id:=[150,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,10];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[76, 100, 94, 88, 82, 81, 80, 99, 93, 87, 86, 85, 79, 98, 92, 91, 90, 84, 78, 97, 96, 95, 89, 83, 77, 126, 150, 144, 138, 132, 131, 130, 149, 143, 137, 136, 135, 129, 148, 142, 141, 140, 134, 128, 147, 146, 145, 139, 133, 127, 101, 125, 119, 113, 107, 106, 105, 124, 118, 112, 111, 110, 104, 123, 117, 116, 115, 109, 103, 122, 121, 120, 114, 108, 102, 1, 25, 19, 13, 7, 6, 5, 24, 18, 12, 11, 10, 4, 23, 17, 16, 15, 9, 3, 22, 21, 20, 14, 8, 2, 51, 75, 69, 63, 57, 56, 55, 74, 68, 62, 61, 60, 54, 73, 67, 66, 65, 59, 53, 72, 71, 70, 64, 58, 52, 26, 50, 44, 38, 32, 31, 30, 49, 43, 37, 36, 35, 29, 48, 42, 41, 40, 34, 28, 47, 46, 45, 39, 33, 27], [48, 41, 39, 32, 30, 26, 49, 42, 40, 33, 34, 27, 50, 43, 36, 37, 35, 28, 46, 44, 45, 38, 31, 29, 47, 73, 66, 64, 57, 55, 51, 74, 67, 65, 58, 59, 52, 75, 68, 61, 62, 60, 53, 71, 69, 70, 63, 56, 54, 72, 23, 16, 14, 7, 5, 1, 24, 17, 15, 8, 9, 2, 25, 18, 11, 12, 10, 3, 21, 19, 20, 13, 6, 4, 22, 123, 116, 114, 107, 105, 101, 124, 117, 115, 108, 109, 102, 125, 118, 111, 112, 110, 103, 121, 119, 120, 113, 106, 104, 122, 148, 141, 139, 132, 130, 126, 149, 142, 140, 133, 134, 127, 150, 143, 136, 137, 135, 128, 146, 144, 145, 138, 131, 129, 147, 98, 91, 89, 82, 80, 76, 99, 92, 90, 83, 84, 77, 100, 93, 86, 87, 85, 78, 96, 94, 95, 88, 81, 79, 97], [106, 110, 109, 108, 107, 114, 113, 112, 111, 115, 117, 116, 120, 119, 118, 125, 124, 123, 122, 121, 103, 102, 101, 105, 104, 81, 85, 84, 83, 82, 89, 88, 87, 86, 90, 92, 91, 95, 94, 93, 100, 99, 98, 97, 96, 78, 77, 76, 80, 79, 131, 135, 134, 133, 132, 139, 138, 137, 136, 140, 142, 141, 145, 144, 143, 150, 149, 148, 147, 146, 128, 127, 126, 130, 129, 31, 35, 34, 33, 32, 39, 38, 37, 36, 40, 42, 41, 45, 44, 43, 50, 49, 48, 47, 46, 28, 27, 26, 30, 29, 6, 10, 9, 8, 7, 14, 13, 12, 11, 15, 17, 16, 20, 19, 18, 25, 24, 23, 22, 21, 3, 2, 1, 5, 4, 56, 60, 59, 58, 57, 64, 63, 62, 61, 65, 67, 66, 70, 69, 68, 75, 74, 73, 72, 71, 53, 52, 51, 55, 54]];
cc:=[2,3,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[76, 100, 94, 88, 82, 81, 80, 99, 93, 87, 86, 85, 79, 98, 92, 91, 90, 84, 78, 97, 96, 95, 89, 83, 77, 126, 150, 144, 138, 132, 131, 130, 149, 143, 137, 136, 135, 129, 148, 142, 141, 140, 134, 128, 147, 146, 145, 139, 133, 127, 101, 125, 119, 113, 107, 106, 105, 124, 118, 112, 111, 110, 104, 123, 117, 116, 115, 109, 103, 122, 121, 120, 114, 108, 102, 1, 25, 19, 13, 7, 6, 5, 24, 18, 12, 11, 10, 4, 23, 17, 16, 15, 9, 3, 22, 21, 20, 14, 8, 2, 51, 75, 69, 63, 57, 56, 55, 74, 68, 62, 61, 60, 54, 73, 67, 66, 65, 59, 53, 72, 71, 70, 64, 58, 52, 26, 50, 44, 38, 32, 31, 30, 49, 43, 37, 36, 35, 29, 48, 42, 41, 40, 34, 28, 47, 46, 45, 39, 33, 27], [40, 33, 26, 49, 42, 43, 36, 34, 27, 50, 46, 44, 37, 35, 28, 29, 47, 45, 38, 31, 32, 30, 48, 41, 39, 65, 58, 51, 74, 67, 68, 61, 59, 52, 75, 71, 69, 62, 60, 53, 54, 72, 70, 63, 56, 57, 55, 73, 66, 64, 15, 8, 1, 24, 17, 18, 11, 9, 2, 25, 21, 19, 12, 10, 3, 4, 22, 20, 13, 6, 7, 5, 23, 16, 14, 115, 108, 101, 124, 117, 118, 111, 109, 102, 125, 121, 119, 112, 110, 103, 104, 122, 120, 113, 106, 107, 105, 123, 116, 114, 140, 133, 126, 149, 142, 143, 136, 134, 127, 150, 146, 144, 137, 135, 128, 129, 147, 145, 138, 131, 132, 130, 148, 141, 139, 90, 83, 76, 99, 92, 93, 86, 84, 77, 100, 96, 94, 87, 85, 78, 79, 97, 95, 88, 81, 82, 80, 98, 91, 89], [119, 118, 117, 116, 120, 122, 121, 125, 124, 123, 105, 104, 103, 102, 101, 108, 107, 106, 110, 109, 111, 115, 114, 113, 112, 94, 93, 92, 91, 95, 97, 96, 100, 99, 98, 80, 79, 78, 77, 76, 83, 82, 81, 85, 84, 86, 90, 89, 88, 87, 144, 143, 142, 141, 145, 147, 146, 150, 149, 148, 130, 129, 128, 127, 126, 133, 132, 131, 135, 134, 136, 140, 139, 138, 137, 44, 43, 42, 41, 45, 47, 46, 50, 49, 48, 30, 29, 28, 27, 26, 33, 32, 31, 35, 34, 36, 40, 39, 38, 37, 19, 18, 17, 16, 20, 22, 21, 25, 24, 23, 5, 4, 3, 2, 1, 8, 7, 6, 10, 9, 11, 15, 14, 13, 12, 69, 68, 67, 66, 70, 72, 71, 75, 74, 73, 55, 54, 53, 52, 51, 58, 57, 56, 60, 59, 61, 65, 64, 63, 62]];
cc:=[2,3,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[76, 100, 94, 88, 82, 81, 80, 99, 93, 87, 86, 85, 79, 98, 92, 91, 90, 84, 78, 97, 96, 95, 89, 83, 77, 126, 150, 144, 138, 132, 131, 130, 149, 143, 137, 136, 135, 129, 148, 142, 141, 140, 134, 128, 147, 146, 145, 139, 133, 127, 101, 125, 119, 113, 107, 106, 105, 124, 118, 112, 111, 110, 104, 123, 117, 116, 115, 109, 103, 122, 121, 120, 114, 108, 102, 1, 25, 19, 13, 7, 6, 5, 24, 18, 12, 11, 10, 4, 23, 17, 16, 15, 9, 3, 22, 21, 20, 14, 8, 2, 51, 75, 69, 63, 57, 56, 55, 74, 68, 62, 61, 60, 54, 73, 67, 66, 65, 59, 53, 72, 71, 70, 64, 58, 52, 26, 50, 44, 38, 32, 31, 30, 49, 43, 37, 36, 35, 29, 48, 42, 41, 40, 34, 28, 47, 46, 45, 39, 33, 27], [45, 38, 31, 29, 47, 48, 41, 39, 32, 30, 26, 49, 42, 40, 33, 34, 27, 50, 43, 36, 37, 35, 28, 46, 44, 70, 63, 56, 54, 72, 73, 66, 64, 57, 55, 51, 74, 67, 65, 58, 59, 52, 75, 68, 61, 62, 60, 53, 71, 69, 20, 13, 6, 4, 22, 23, 16, 14, 7, 5, 1, 24, 17, 15, 8, 9, 2, 25, 18, 11, 12, 10, 3, 21, 19, 120, 113, 106, 104, 122, 123, 116, 114, 107, 105, 101, 124, 117, 115, 108, 109, 102, 125, 118, 111, 112, 110, 103, 121, 119, 145, 138, 131, 129, 147, 148, 141, 139, 132, 130, 126, 149, 142, 140, 133, 134, 127, 150, 143, 136, 137, 135, 128, 146, 144, 95, 88, 81, 79, 97, 98, 91, 89, 82, 80, 76, 99, 92, 90, 83, 84, 77, 100, 93, 86, 87, 85, 78, 96, 94], [111, 115, 114, 113, 112, 119, 118, 117, 116, 120, 122, 121, 125, 124, 123, 105, 104, 103, 102, 101, 108, 107, 106, 110, 109, 86, 90, 89, 88, 87, 94, 93, 92, 91, 95, 97, 96, 100, 99, 98, 80, 79, 78, 77, 76, 83, 82, 81, 85, 84, 136, 140, 139, 138, 137, 144, 143, 142, 141, 145, 147, 146, 150, 149, 148, 130, 129, 128, 127, 126, 133, 132, 131, 135, 134, 36, 40, 39, 38, 37, 44, 43, 42, 41, 45, 47, 46, 50, 49, 48, 30, 29, 28, 27, 26, 33, 32, 31, 35, 34, 11, 15, 14, 13, 12, 19, 18, 17, 16, 20, 22, 21, 25, 24, 23, 5, 4, 3, 2, 1, 8, 7, 6, 10, 9, 61, 65, 64, 63, 62, 69, 68, 67, 66, 70, 72, 71, 75, 74, 73, 55, 54, 53, 52, 51, 58, 57, 56, 60, 59]];
cc:=[2,3,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[76, 100, 94, 88, 82, 81, 80, 99, 93, 87, 86, 85, 79, 98, 92, 91, 90, 84, 78, 97, 96, 95, 89, 83, 77, 126, 150, 144, 138, 132, 131, 130, 149, 143, 137, 136, 135, 129, 148, 142, 141, 140, 134, 128, 147, 146, 145, 139, 133, 127, 101, 125, 119, 113, 107, 106, 105, 124, 118, 112, 111, 110, 104, 123, 117, 116, 115, 109, 103, 122, 121, 120, 114, 108, 102, 1, 25, 19, 13, 7, 6, 5, 24, 18, 12, 11, 10, 4, 23, 17, 16, 15, 9, 3, 22, 21, 20, 14, 8, 2, 51, 75, 69, 63, 57, 56, 55, 74, 68, 62, 61, 60, 54, 73, 67, 66, 65, 59, 53, 72, 71, 70, 64, 58, 52, 26, 50, 44, 38, 32, 31, 30, 49, 43, 37, 36, 35, 29, 48, 42, 41, 40, 34, 28, 47, 46, 45, 39, 33, 27], [32, 30, 48, 41, 39, 40, 33, 26, 49, 42, 43, 36, 34, 27, 50, 46, 44, 37, 35, 28, 29, 47, 45, 38, 31, 57, 55, 73, 66, 64, 65, 58, 51, 74, 67, 68, 61, 59, 52, 75, 71, 69, 62, 60, 53, 54, 72, 70, 63, 56, 7, 5, 23, 16, 14, 15, 8, 1, 24, 17, 18, 11, 9, 2, 25, 21, 19, 12, 10, 3, 4, 22, 20, 13, 6, 107, 105, 123, 116, 114, 115, 108, 101, 124, 117, 118, 111, 109, 102, 125, 121, 119, 112, 110, 103, 104, 122, 120, 113, 106, 132, 130, 148, 141, 139, 140, 133, 126, 149, 142, 143, 136, 134, 127, 150, 146, 144, 137, 135, 128, 129, 147, 145, 138, 131, 82, 80, 98, 91, 89, 90, 83, 76, 99, 92, 93, 86, 84, 77, 100, 96, 94, 87, 85, 78, 79, 97, 95, 88, 81], [124, 123, 122, 121, 125, 102, 101, 105, 104, 103, 110, 109, 108, 107, 106, 113, 112, 111, 115, 114, 116, 120, 119, 118, 117, 99, 98, 97, 96, 100, 77, 76, 80, 79, 78, 85, 84, 83, 82, 81, 88, 87, 86, 90, 89, 91, 95, 94, 93, 92, 149, 148, 147, 146, 150, 127, 126, 130, 129, 128, 135, 134, 133, 132, 131, 138, 137, 136, 140, 139, 141, 145, 144, 143, 142, 49, 48, 47, 46, 50, 27, 26, 30, 29, 28, 35, 34, 33, 32, 31, 38, 37, 36, 40, 39, 41, 45, 44, 43, 42, 24, 23, 22, 21, 25, 2, 1, 5, 4, 3, 10, 9, 8, 7, 6, 13, 12, 11, 15, 14, 16, 20, 19, 18, 17, 74, 73, 72, 71, 75, 52, 51, 55, 54, 53, 60, 59, 58, 57, 56, 63, 62, 61, 65, 64, 66, 70, 69, 68, 67]];
cc:=[2,3,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.13-1.0.13-13-13
// Create group as a permutation group and initialize signature information.
gp_id:=[13,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,13,13,13];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1], [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1], [12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]];
cc:=[2,2,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1], [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2], [11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[2,3,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1], [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3], [10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[2,4,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[39,1];
full_sign:=[0,3,3,13];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1], [5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4], [9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1], [6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5], [8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7]];
cc:=[2,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1], [7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6]];
cc:=[2,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2], [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2], [10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[3,3,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2], [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3], [9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[3,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2], [5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4], [8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7]];
cc:=[3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2], [6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5], [7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6]];
cc:=[3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[39,1];
full_sign:=[0,3,3,13];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2], [13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[3,13,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3], [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3], [8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7]];
cc:=[4,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3], [5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4], [7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6]];
cc:=[4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3], [6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5]];
cc:=[4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3], [12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[4,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4], [5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4], [6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5]];
cc:=[5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4], [11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[5,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[39,1];
full_sign:=[0,3,3,13];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4], [12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]];
cc:=[5,12,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5], [10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9], [13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[6,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5], [11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]];
cc:=[6,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6], [9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8], [13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[7,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6], [10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9], [12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]];
cc:=[7,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6], [11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[7,11,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7], [13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]];
cc:=[8,8,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7], [9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8], [12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]];
cc:=[8,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
full_auto:=[39,1];
full_sign:=[0,3,3,13];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7], [10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9], [11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[8,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8], [9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[9,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8], [10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9], [10, 11, 12, 13, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[9,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
full_auto:=[26,2];
full_sign:=[0,2,13,26];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.24-3.0.4-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,6,6];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13, 19, 20, 18, 17, 23, 24, 22, 21], [10, 9, 16, 15, 12, 11, 14, 13, 18, 17, 24, 23, 20, 19, 22, 21, 2, 1, 8, 7, 4, 3, 6, 5], [19, 20, 23, 24, 22, 21, 18, 17, 3, 4, 7, 8, 6, 5, 2, 1, 11, 12, 15, 16, 14, 13, 10, 9]];
cc:=[5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,29];
full_sign:=[0,2,6,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.24-10.0.4-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,10];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,6,6];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 14, 13, 16, 15, 18, 17, 7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2, 21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14], [17, 18, 13, 14, 15, 16, 24, 23, 20, 19, 22, 21, 5, 6, 1, 2, 3, 4, 12, 11, 8, 7, 10, 9]];
cc:=[7,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,15];
full_sign:=[0,2,6,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[19, 20, 21, 22, 23, 24, 14, 13, 16, 15, 18, 17, 7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4, 23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16], [15, 16, 17, 18, 13, 14, 22, 21, 24, 23, 20, 19, 3, 4, 5, 6, 1, 2, 10, 9, 12, 11, 8, 7]];
cc:=[7,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,15];
full_sign:=[0,2,6,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.24-4.0.4-4-12
// Create group as a permutation group and initialize signature information.
gp_id:=[24,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,12];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 7, 9, 8, 10, 12, 11], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [8, 9, 7, 11, 12, 10, 5, 6, 4, 2, 3, 1, 20, 21, 19, 23, 24, 22, 17, 18, 16, 14, 15, 13]];
cc:=[5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,6];
full_sign:=[0,2,4,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 7, 9, 8, 10, 12, 11], [20, 19, 21, 23, 22, 24, 14, 13, 15, 17, 16, 18, 11, 10, 12, 8, 7, 9, 5, 4, 6, 2, 1, 3], [9, 7, 8, 12, 10, 11, 6, 4, 5, 3, 1, 2, 21, 19, 20, 24, 22, 23, 18, 16, 17, 15, 13, 14]];
cc:=[5,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,6];
full_sign:=[0,2,4,24];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.36-3.0.2-9-9
// Create group as a permutation group and initialize signature information.
gp_id:=[36,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,9,9];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35], [13, 16, 14, 15, 17, 20, 18, 19, 21, 24, 22, 23, 25, 28, 26, 27, 29, 32, 30, 31, 33, 36, 34, 35, 5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [34, 36, 35, 33, 26, 28, 27, 25, 30, 32, 31, 29, 2, 4, 3, 1, 6, 8, 7, 5, 10, 12, 11, 9, 14, 16, 15, 13, 18, 20, 19, 17, 22, 24, 23, 21]];
cc:=[2,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[72,15];
full_sign:=[0,2,4,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35], [25, 27, 28, 26, 29, 31, 32, 30, 33, 35, 36, 34, 5, 7, 8, 6, 9, 11, 12, 10, 1, 3, 4, 2, 17, 19, 20, 18, 21, 23, 24, 22, 13, 15, 16, 14], [22, 23, 21, 24, 14, 15, 13, 16, 18, 19, 17, 20, 34, 35, 33, 36, 26, 27, 25, 28, 30, 31, 29, 32, 2, 3, 1, 4, 6, 7, 5, 8, 10, 11, 9, 12]];
cc:=[2,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[72,15];
full_sign:=[0,2,4,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35], [17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15, 29, 32, 30, 31, 33, 36, 34, 35, 25, 28, 26, 27, 9, 12, 10, 11, 1, 4, 2, 3, 5, 8, 6, 7], [30, 32, 31, 29, 34, 36, 35, 33, 26, 28, 27, 25, 10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5, 22, 24, 23, 21, 14, 16, 15, 13, 18, 20, 19, 17]];
cc:=[2,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[72,15];
full_sign:=[0,2,4,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.14-2.0.7-14-14
// Create group as a permutation group and initialize signature information.
gp_id:=[14,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,7,14,14];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5]];
cc:=[3,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3]];
cc:=[3,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8], [10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2], [12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4]];
cc:=[3,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1], [12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4]];
cc:=[4,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3], [10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2]];
cc:=[4,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9], [14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6], [14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6]];
cc:=[4,14,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3]];
cc:=[5,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5], [14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6]];
cc:=[5,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10], [10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2], [10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2]];
cc:=[5,12,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1], [10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2]];
cc:=[6,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5]];
cc:=[6,11,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11], [12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4], [14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6]];
cc:=[6,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1]];
cc:=[7,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3], [14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6]];
cc:=[7,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5], [12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4]];
cc:=[7,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5]];
cc:=[8,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13], [10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2], [14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6]];
cc:=[8,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13], [12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4], [12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4]];
cc:=[8,13,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[56,7];
full_sign:=[0,2,4,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.50-3.0.2-5-10
// Create group as a permutation group and initialize signature information.
gp_id:=[50,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,5,10];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 41, 45, 44, 43, 42, 46, 50, 49, 48, 47, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 21, 25, 24, 23, 22], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 32, 33, 34, 35, 31, 37, 38, 39, 40, 36, 42, 43, 44, 45, 41, 47, 48, 49, 50, 46, 27, 28, 29, 30, 26], [47, 46, 50, 49, 48, 27, 26, 30, 29, 28, 32, 31, 35, 34, 33, 37, 36, 40, 39, 38, 42, 41, 45, 44, 43, 22, 21, 25, 24, 23, 2, 1, 5, 4, 3, 7, 6, 10, 9, 8, 12, 11, 15, 14, 13, 17, 16, 20, 19, 18]];
cc:=[2,9,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 41, 45, 44, 43, 42, 46, 50, 49, 48, 47, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 21, 25, 24, 23, 22], [13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7, 38, 39, 40, 36, 37, 43, 44, 45, 41, 42, 48, 49, 50, 46, 47, 28, 29, 30, 26, 27, 33, 34, 35, 31, 32], [43, 42, 41, 45, 44, 48, 47, 46, 50, 49, 28, 27, 26, 30, 29, 33, 32, 31, 35, 34, 38, 37, 36, 40, 39, 18, 17, 16, 20, 19, 23, 22, 21, 25, 24, 3, 2, 1, 5, 4, 8, 7, 6, 10, 9, 13, 12, 11, 15, 14]];
cc:=[2,10,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 41, 45, 44, 43, 42, 46, 50, 49, 48, 47, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 21, 25, 24, 23, 22], [19, 20, 16, 17, 18, 24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 44, 45, 41, 42, 43, 49, 50, 46, 47, 48, 29, 30, 26, 27, 28, 34, 35, 31, 32, 33, 39, 40, 36, 37, 38], [39, 38, 37, 36, 40, 44, 43, 42, 41, 45, 49, 48, 47, 46, 50, 29, 28, 27, 26, 30, 34, 33, 32, 31, 35, 14, 13, 12, 11, 15, 19, 18, 17, 16, 20, 24, 23, 22, 21, 25, 4, 3, 2, 1, 5, 9, 8, 7, 6, 10]];
cc:=[2,11,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 41, 45, 44, 43, 42, 46, 50, 49, 48, 47, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 21, 25, 24, 23, 22], [25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 50, 46, 47, 48, 49, 30, 26, 27, 28, 29, 35, 31, 32, 33, 34, 40, 36, 37, 38, 39, 45, 41, 42, 43, 44], [35, 34, 33, 32, 31, 40, 39, 38, 37, 36, 45, 44, 43, 42, 41, 50, 49, 48, 47, 46, 30, 29, 28, 27, 26, 10, 9, 8, 7, 6, 15, 14, 13, 12, 11, 20, 19, 18, 17, 16, 25, 24, 23, 22, 21, 5, 4, 3, 2, 1]];
cc:=[2,12,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 41, 45, 44, 43, 42, 46, 50, 49, 48, 47, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 21, 25, 24, 23, 22], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 18, 19, 20, 16, 17, 23, 24, 25, 21, 22, 3, 4, 5, 1, 2, 33, 34, 35, 31, 32, 38, 39, 40, 36, 37, 43, 44, 45, 41, 42, 48, 49, 50, 46, 47, 28, 29, 30, 26, 27], [48, 47, 46, 50, 49, 28, 27, 26, 30, 29, 33, 32, 31, 35, 34, 38, 37, 36, 40, 39, 43, 42, 41, 45, 44, 23, 22, 21, 25, 24, 3, 2, 1, 5, 4, 8, 7, 6, 10, 9, 13, 12, 11, 15, 14, 18, 17, 16, 20, 19]];
cc:=[2,13,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 41, 45, 44, 43, 42, 46, 50, 49, 48, 47, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 21, 25, 24, 23, 22], [15, 11, 12, 13, 14, 20, 16, 17, 18, 19, 25, 21, 22, 23, 24, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9, 40, 36, 37, 38, 39, 45, 41, 42, 43, 44, 50, 46, 47, 48, 49, 30, 26, 27, 28, 29, 35, 31, 32, 33, 34], [45, 44, 43, 42, 41, 50, 49, 48, 47, 46, 30, 29, 28, 27, 26, 35, 34, 33, 32, 31, 40, 39, 38, 37, 36, 20, 19, 18, 17, 16, 25, 24, 23, 22, 21, 5, 4, 3, 2, 1, 10, 9, 8, 7, 6, 15, 14, 13, 12, 11]];
cc:=[2,14,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 41, 45, 44, 43, 42, 46, 50, 49, 48, 47, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 21, 25, 24, 23, 22], [17, 18, 19, 20, 16, 22, 23, 24, 25, 21, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 42, 43, 44, 45, 41, 47, 48, 49, 50, 46, 27, 28, 29, 30, 26, 32, 33, 34, 35, 31, 37, 38, 39, 40, 36], [37, 36, 40, 39, 38, 42, 41, 45, 44, 43, 47, 46, 50, 49, 48, 27, 26, 30, 29, 28, 32, 31, 35, 34, 33, 12, 11, 15, 14, 13, 17, 16, 20, 19, 18, 22, 21, 25, 24, 23, 2, 1, 5, 4, 3, 7, 6, 10, 9, 8]];
cc:=[2,15,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 41, 45, 44, 43, 42, 46, 50, 49, 48, 47, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 21, 25, 24, 23, 22], [24, 25, 21, 22, 23, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 49, 50, 46, 47, 48, 29, 30, 26, 27, 28, 34, 35, 31, 32, 33, 39, 40, 36, 37, 38, 44, 45, 41, 42, 43], [34, 33, 32, 31, 35, 39, 38, 37, 36, 40, 44, 43, 42, 41, 45, 49, 48, 47, 46, 50, 29, 28, 27, 26, 30, 9, 8, 7, 6, 10, 14, 13, 12, 11, 15, 19, 18, 17, 16, 20, 24, 23, 22, 21, 25, 4, 3, 2, 1, 5]];
cc:=[2,16,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[150,5];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.9-1.0.3-3-9-9
// Create group as a permutation group and initialize signature information.
gp_id:=[9,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,9,9];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 2, 3, 1], [7, 8, 9, 2, 3, 1, 5, 6, 4]];
cc:=[2,2,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [5, 6, 4, 8, 9, 7, 3, 1, 2], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[2,2,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [2, 3, 1, 5, 6, 4, 8, 9, 7], [8, 9, 7, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[2,2,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 2, 3, 1], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[2,3,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[18,1];
full_sign:=[0,2,2,3,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 2, 3, 1, 5, 6, 4], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[2,3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[18,1];
full_sign:=[0,2,2,3,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 3, 1, 2], [8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[2,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[18,1];
full_sign:=[0,2,2,3,9];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 2, 3, 1], [8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[3,3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [7, 8, 9, 2, 3, 1, 5, 6, 4], [5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[3,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [3, 1, 2, 6, 4, 5, 9, 7, 8], [6, 4, 5, 9, 7, 8, 1, 2, 3], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[3,3,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.10-2.0.2-5-5-10
// Create group as a permutation group and initialize signature information.
gp_id:=[10,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,5,5,10];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[2,3,3,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[2,3,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[2,3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1]];
cc:=[2,4,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[2,4,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[2,5,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3]];
cc:=[2,5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [5, 1, 2, 3, 4, 10, 6, 7, 8, 9], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[2,6,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.12-5.0.2-3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,6,6];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[2,5,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,6,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[3,5,7,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[3,6,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[4,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[4,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.12-2.0.2-3-4-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,4,12];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[2,3,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[2,3,6,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1]];
cc:=[2,4,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[2,4,6,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.18-1.0.2-2-3-9
// Create group as a permutation group and initialize signature information.
gp_id:=[18,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,9];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [16, 18, 17, 13, 15, 14, 10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 15, 13, 14, 18, 16, 17], [4, 5, 6, 7, 8, 9, 2, 3, 1, 13, 14, 15, 16, 17, 18, 11, 12, 10]];
cc:=[2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [6, 4, 5, 9, 7, 8, 1, 2, 3, 15, 13, 14, 18, 16, 17, 10, 11, 12]];
cc:=[2,2,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 18, 17, 16, 15, 14, 13, 1, 3, 2, 9, 8, 7, 6, 5, 4], [16, 18, 17, 13, 15, 14, 10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16], [5, 6, 4, 8, 9, 7, 3, 1, 2, 14, 15, 13, 17, 18, 16, 12, 10, 11]];
cc:=[2,2,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.24-12.0.2-2-3-4
// Create group as a permutation group and initialize signature information.
gp_id:=[24,12];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8], [7, 6, 8, 5, 11, 10, 12, 9, 3, 2, 4, 1, 19, 18, 20, 17, 23, 22, 24, 21, 15, 14, 16, 13], [19, 20, 18, 17, 15, 16, 14, 13, 23, 24, 22, 21, 7, 8, 6, 5, 3, 4, 2, 1, 11, 12, 10, 9]];
cc:=[2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.28-3.0.2-2-2-7
// Create group as a permutation group and initialize signature information.
gp_id:=[28,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,7];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8, 16, 17, 18, 19, 20, 21, 15, 23, 24, 25, 26, 27, 28, 22]];
cc:=[2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [24, 23, 22, 28, 27, 26, 25, 17, 16, 15, 21, 20, 19, 18, 10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4], [6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12, 20, 21, 15, 16, 17, 18, 19, 27, 28, 22, 23, 24, 25, 26]];
cc:=[2,3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21], [15, 21, 20, 19, 18, 17, 16, 22, 28, 27, 26, 25, 24, 23, 1, 7, 6, 5, 4, 3, 2, 8, 14, 13, 12, 11, 10, 9], [26, 25, 24, 23, 22, 28, 27, 19, 18, 17, 16, 15, 21, 20, 12, 11, 10, 9, 8, 14, 13, 5, 4, 3, 2, 1, 7, 6], [4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10, 18, 19, 20, 21, 15, 16, 17, 25, 26, 27, 28, 22, 23, 24]];
cc:=[2,3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7, 22, 23, 24, 25, 26, 27, 28, 15, 16, 17, 18, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.60-5.0.2-2-2-3
// Create group as a permutation group and initialize signature information.
gp_id:=[60,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[14, 10, 53, 6, 12, 4, 15, 38, 11, 2, 9, 5, 23, 1, 7, 39, 60, 48, 56, 37, 34, 30, 13, 26, 32, 24, 35, 58, 31, 22, 29, 25, 43, 21, 27, 59, 20, 8, 16, 57, 54, 50, 33, 46, 52, 44, 55, 18, 51, 42, 49, 45, 3, 41, 47, 19, 40, 28, 36, 17], [51, 25, 24, 43, 42, 36, 55, 54, 18, 17, 21, 40, 39, 28, 27, 46, 10, 9, 53, 52, 11, 45, 44, 3, 2, 56, 15, 14, 38, 37, 41, 60, 59, 48, 47, 6, 30, 29, 13, 12, 31, 5, 4, 23, 22, 16, 35, 34, 58, 57, 1, 20, 19, 8, 7, 26, 50, 49, 33, 32], [39, 43, 22, 46, 55, 24, 18, 52, 56, 40, 54, 28, 37, 31, 25, 29, 53, 7, 41, 50, 59, 3, 42, 6, 15, 44, 38, 12, 16, 60, 14, 48, 57, 51, 45, 49, 13, 27, 1, 10, 19, 23, 2, 26, 35, 4, 58, 32, 36, 20, 34, 8, 17, 11, 5, 9, 33, 47, 21, 30], [23, 6, 52, 39, 15, 53, 11, 37, 24, 5, 38, 1, 22, 54, 10, 8, 56, 47, 29, 40, 43, 26, 12, 59, 35, 13, 31, 57, 44, 25, 58, 21, 42, 14, 30, 28, 16, 7, 49, 60, 3, 46, 32, 19, 55, 33, 51, 17, 4, 45, 18, 41, 2, 34, 50, 48, 36, 27, 9, 20]];
cc:=[2,2,2,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.12-2.0.3-3-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,4,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6]];
cc:=[3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,6];
full_sign:=[0,2,2,3,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.12-2.0.2-2-12-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,12,12];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[2,2,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,6];
full_sign:=[0,2,2,2,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[2,2,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[24,6];
full_sign:=[0,2,2,2,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.14-1.0.2-2-7-7
// Create group as a permutation group and initialize signature information.
gp_id:=[14,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,7,7];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8], [7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13]];
cc:=[2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [12, 11, 10, 9, 8, 14, 13, 5, 4, 3, 2, 1, 7, 6], [2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8], [3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9]];
cc:=[2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4], [2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8], [5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11]];
cc:=[2,2,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9], [6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12]];
cc:=[2,2,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [10, 9, 8, 14, 13, 12, 11, 3, 2, 1, 7, 6, 5, 4], [3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9], [4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10]];
cc:=[2,2,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [8, 14, 13, 12, 11, 10, 9, 1, 7, 6, 5, 4, 3, 2], [4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10], [5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11]];
cc:=[2,2,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.14-2.0.2-2-7-7
// Create group as a permutation group and initialize signature information.
gp_id:=[14,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,7,7];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8], [7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13]];
cc:=[2,2,3,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9], [6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12]];
cc:=[2,2,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10], [5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11]];
cc:=[2,2,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.7-1.0.7-7-7-7
// Create group as a permutation group and initialize signature information.
gp_id:=[7,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,7,7,7,7];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1], [2, 3, 4, 5, 6, 7, 1], [2, 3, 4, 5, 6, 7, 1], [5, 6, 7, 1, 2, 3, 4]];
cc:=[2,2,2,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1], [2, 3, 4, 5, 6, 7, 1], [3, 4, 5, 6, 7, 1, 2], [4, 5, 6, 7, 1, 2, 3]];
cc:=[2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1], [2, 3, 4, 5, 6, 7, 1], [7, 1, 2, 3, 4, 5, 6], [7, 1, 2, 3, 4, 5, 6]];
cc:=[2,2,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1], [3, 4, 5, 6, 7, 1, 2], [3, 4, 5, 6, 7, 1, 2], [3, 4, 5, 6, 7, 1, 2]];
cc:=[2,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1], [3, 4, 5, 6, 7, 1, 2], [6, 7, 1, 2, 3, 4, 5], [7, 1, 2, 3, 4, 5, 6]];
cc:=[2,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1], [4, 5, 6, 7, 1, 2, 3], [5, 6, 7, 1, 2, 3, 4], [7, 1, 2, 3, 4, 5, 6]];
cc:=[2,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1], [4, 5, 6, 7, 1, 2, 3], [6, 7, 1, 2, 3, 4, 5], [6, 7, 1, 2, 3, 4, 5]];
cc:=[2,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1], [5, 6, 7, 1, 2, 3, 4], [5, 6, 7, 1, 2, 3, 4], [6, 7, 1, 2, 3, 4, 5]];
cc:=[2,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 1, 2], [3, 4, 5, 6, 7, 1, 2], [5, 6, 7, 1, 2, 3, 4], [7, 1, 2, 3, 4, 5, 6]];
cc:=[3,3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 1, 2], [3, 4, 5, 6, 7, 1, 2], [6, 7, 1, 2, 3, 4, 5], [6, 7, 1, 2, 3, 4, 5]];
cc:=[3,3,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 1, 2], [4, 5, 6, 7, 1, 2, 3], [4, 5, 6, 7, 1, 2, 3], [7, 1, 2, 3, 4, 5, 6]];
cc:=[3,4,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 1, 2], [4, 5, 6, 7, 1, 2, 3], [5, 6, 7, 1, 2, 3, 4], [6, 7, 1, 2, 3, 4, 5]];
cc:=[3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 1, 2], [5, 6, 7, 1, 2, 3, 4], [5, 6, 7, 1, 2, 3, 4], [5, 6, 7, 1, 2, 3, 4]];
cc:=[3,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 1, 2, 3], [4, 5, 6, 7, 1, 2, 3], [4, 5, 6, 7, 1, 2, 3], [6, 7, 1, 2, 3, 4, 5]];
cc:=[4,4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 1, 2, 3], [4, 5, 6, 7, 1, 2, 3], [5, 6, 7, 1, 2, 3, 4], [5, 6, 7, 1, 2, 3, 4]];
cc:=[4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 1, 2, 3], [7, 1, 2, 3, 4, 5, 6], [7, 1, 2, 3, 4, 5, 6], [7, 1, 2, 3, 4, 5, 6]];
cc:=[4,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 1, 2, 3, 4], [6, 7, 1, 2, 3, 4, 5], [7, 1, 2, 3, 4, 5, 6], [7, 1, 2, 3, 4, 5, 6]];
cc:=[5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 1, 2, 3, 4, 5], [6, 7, 1, 2, 3, 4, 5], [6, 7, 1, 2, 3, 4, 5], [7, 1, 2, 3, 4, 5, 6]];
cc:=[6,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[28,3];
full_sign:=[0,2,2,2,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.16-8.0.2-2-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,8];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 2, 1, 3, 4, 8, 7, 6, 5], [13, 14, 15, 16, 12, 11, 9, 10, 6, 5, 8, 7, 3, 4, 2, 1]];
cc:=[2,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [10, 9, 11, 12, 16, 15, 14, 13, 1, 2, 4, 3, 7, 8, 5, 6], [14, 13, 16, 15, 11, 12, 10, 9, 5, 6, 7, 8, 4, 3, 1, 2]];
cc:=[2,3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.8-1.0.4-4-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[8,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,8,8];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 7, 8, 3, 4, 2, 1], [7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[3,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [3, 4, 2, 1, 7, 8, 6, 5], [6, 5, 8, 7, 4, 3, 1, 2], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[3,3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [4, 3, 1, 2, 8, 7, 5, 6], [5, 6, 7, 8, 3, 4, 2, 1], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[3,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[16,7];
full_sign:=[0,2,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [4, 3, 1, 2, 8, 7, 5, 6], [7, 8, 6, 5, 2, 1, 4, 3], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[3,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[16,7];
full_sign:=[0,2,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 1, 2, 8, 7, 5, 6], [4, 3, 1, 2, 8, 7, 5, 6], [5, 6, 7, 8, 3, 4, 2, 1], [7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 1, 2, 8, 7, 5, 6], [4, 3, 1, 2, 8, 7, 5, 6], [6, 5, 8, 7, 4, 3, 1, 2], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[4,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.12-1.0.2-4-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,4,6];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[2,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.16-7.0.2-2-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,7];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,8];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14], [15, 16, 14, 13, 9, 10, 11, 12, 7, 8, 6, 5, 1, 2, 3, 4]];
cc:=[3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13], [16, 15, 13, 14, 10, 9, 12, 11, 8, 7, 5, 6, 2, 1, 4, 3]];
cc:=[3,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.20-3.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[20,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 10, 9, 8, 7, 1, 5, 4, 3, 2, 16, 20, 19, 18, 17, 11, 15, 14, 13, 12], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2, 16, 20, 19, 18, 17, 11, 15, 14, 13, 12], [15, 12, 14, 11, 13, 20, 17, 19, 16, 18, 10, 7, 9, 6, 8, 5, 2, 4, 1, 3], [19, 17, 20, 18, 16, 14, 12, 15, 13, 11, 4, 2, 5, 3, 1, 9, 7, 10, 8, 6]];
cc:=[2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.24-6.0.2-2-3-4
// Create group as a permutation group and initialize signature information.
gp_id:=[24,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22], [10, 11, 12, 7, 8, 9, 1, 2, 3, 4, 5, 6, 22, 23, 24, 19, 20, 21, 13, 14, 15, 16, 17, 18]];
cc:=[3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.24-8.0.2-2-3-4
// Create group as a permutation group and initialize signature information.
gp_id:=[24,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22], [20, 19, 21, 23, 22, 24, 17, 16, 18, 14, 13, 15, 8, 7, 9, 11, 10, 12, 5, 4, 6, 2, 1, 3]];
cc:=[3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.24-6.0.2-2-2-12
// Create group as a permutation group and initialize signature information.
gp_id:=[24,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,12];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [8, 9, 7, 11, 12, 10, 5, 6, 4, 2, 3, 1, 20, 21, 19, 23, 24, 22, 17, 18, 16, 14, 15, 13]];
cc:=[2,3,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [20, 19, 21, 23, 22, 24, 14, 13, 15, 17, 16, 18, 8, 7, 9, 11, 10, 12, 2, 1, 3, 5, 4, 6], [9, 7, 8, 12, 10, 11, 6, 4, 5, 3, 1, 2, 21, 19, 20, 24, 22, 23, 18, 16, 17, 15, 13, 14]];
cc:=[2,3,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.12-1.0.3-3-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[12,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,4,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [11, 10, 12, 8, 7, 9, 2, 1, 3, 5, 4, 6]];
cc:=[3,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,2,3,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 6.5-1.0.5-5-5-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[5,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,5,5,5,5,5];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [2, 3, 4, 5, 1]];
cc:=[2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4]];
cc:=[2,2,2,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [5, 1, 2, 3, 4]];
cc:=[2,2,3,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3]];
cc:=[2,2,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [4, 5, 1, 2, 3]];
cc:=[2,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [3, 4, 5, 1, 2], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[2,3,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 1], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[2,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [3, 4, 5, 1, 2]];
cc:=[3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2], [3, 4, 5, 1, 2], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[3,3,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 1, 2], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [5, 1, 2, 3, 4]];
cc:=[3,4,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3], [4, 5, 1, 2, 3]];
cc:=[4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 1, 2, 3, 4], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4], [5, 1, 2, 3, 4]];
cc:=[5,5,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.6-2.0.2-3-6-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,6,6,6];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[2,3,5,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2]];
cc:=[2,4,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.8-3.0.2-2-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1], [7, 8, 6, 5, 3, 4, 2, 1], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[3,4,5,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.8-1.0.2-2-2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[8,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,8,8];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 3, 4, 2, 1], [7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[2,2,2,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [6, 5, 8, 7, 4, 3, 1, 2], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,2,2,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.12-3.0.2-2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[12,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3,3];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5]];
cc:=[2,2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.12-4.0.2-2-2-2-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,6];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[2,2,3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[3,3,3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[3,4,4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.6-2.0.3-3-3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,6,6];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2]];
cc:=[3,3,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[3,3,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[3,4,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2]];
cc:=[4,4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.8-4.0.2-2-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 8, 7, 2, 1, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.12-5.0.2-2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[12,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3,3];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11]];
cc:=[2,3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.12-4.0.2-2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3,3];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11]];
cc:=[2,3,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.20-4.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[20,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [13, 12, 11, 15, 14, 18, 17, 16, 20, 19, 3, 2, 1, 5, 4, 8, 7, 6, 10, 9], [18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4]];
cc:=[2,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [16, 20, 19, 18, 17, 11, 15, 14, 13, 12, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4]];
cc:=[2,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.4-1.0.4-4-4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,4,4,4,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2]];
cc:=[3,3,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[3,3,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[3,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.6-2.0.2-2-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3,3,3];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.6-2.0.2-2-2-3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3,3,6];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [5, 6, 4, 2, 3, 1]];
cc:=[2,2,2,3,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,2,4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.6-2.0.2-2-2-2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,6,6];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,2,2,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.10-1.0.2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[10,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [8, 7, 6, 10, 9, 3, 2, 1, 5, 4]];
cc:=[2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.8-3.0.2-2-2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[2,2,2,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[2,3,3,3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[2,3,4,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.6-1.0.2-2-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3,3,3];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.4-1.0.2-2-2-4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4,4,4,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2]];
cc:=[2,2,2,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,2,2,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.6-1.0.2-2-2-2-2-2-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,3];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4]];
cc:=[2,2,2,2,2,2,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.3-1.0.3-3-3-3-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[3,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3,3,3,3,3];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [3, 1, 2]];
cc:=[2,2,2,2,2,2,2,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2]];
cc:=[2,2,2,2,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2]];
cc:=[2,3,3,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 6.4-1.0.2-2-2-2-2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,4,4];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [4, 3, 1, 2]];
cc:=[2,2,2,2,2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.4-2.0.2-2-2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[4,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2,2];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,2,2,3,3,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,3,3,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,3,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1]];
cc:=[2,3,3,3,3,3,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,3,3,3,3,3,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,3,3,3,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,3,4,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 6.2-1.0.2-2-2-2-2-2-2-2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[2,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2,2,2,2,2,2,2];
genus:=6;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1]];
cc:=[2,2,2,2,2,2,2,2,2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);


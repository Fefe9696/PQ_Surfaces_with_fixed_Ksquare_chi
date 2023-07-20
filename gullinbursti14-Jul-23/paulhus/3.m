// Magma CODE FOR SEARCH RESULTS

// The results are stored in a list of records called 'data'

RecFormat:=recformat<group,gp_id, signature,gen_vectors,conj_classes,genus,dimension,r,g0, passport_label,gen_vect_label, is_hyperelliptic, hyp_involution, is_cyclic_trigonal,cyc_auto,full_auto, full_sign,topological_class,braid_class>;

data:=[];

// label = 3.48-33.0.2-3-12
// Create group as a permutation group and initialize signature information.
gp_id:=[48,33];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,12];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[27, 28, 26, 25, 31, 32, 30, 29, 35, 36, 34, 33, 39, 40, 38, 37, 43, 44, 42, 41, 47, 48, 46, 45, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22], [15, 16, 10, 9, 13, 14, 12, 11, 23, 24, 18, 17, 21, 22, 20, 19, 7, 8, 2, 1, 5, 6, 4, 3, 39, 40, 34, 33, 37, 38, 36, 35, 47, 48, 42, 41, 45, 46, 44, 43, 31, 32, 26, 25, 29, 30, 28, 27], [41, 42, 45, 46, 47, 48, 43, 44, 25, 26, 29, 30, 31, 32, 27, 28, 33, 34, 37, 38, 39, 40, 35, 36, 18, 17, 22, 21, 24, 23, 20, 19, 2, 1, 6, 5, 8, 7, 4, 3, 10, 9, 14, 13, 16, 15, 12, 11]];
cc:=[3,4,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6, 33, 34, 39, 40, 35, 36, 37, 38, 41, 42, 47, 48, 43, 44, 45, 46, 25, 26, 31, 32, 27, 28, 29, 30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[27, 28, 26, 25, 31, 32, 30, 29, 35, 36, 34, 33, 39, 40, 38, 37, 43, 44, 42, 41, 47, 48, 46, 45, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22], [9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6, 33, 34, 39, 40, 35, 36, 37, 38, 41, 42, 47, 48, 43, 44, 45, 46, 25, 26, 31, 32, 27, 28, 29, 30], [43, 44, 47, 48, 46, 45, 42, 41, 27, 28, 31, 32, 30, 29, 26, 25, 35, 36, 39, 40, 38, 37, 34, 33, 20, 19, 24, 23, 21, 22, 17, 18, 4, 3, 8, 7, 5, 6, 1, 2, 12, 11, 16, 15, 13, 14, 9, 10]];
cc:=[3,4,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6, 33, 34, 39, 40, 35, 36, 37, 38, 41, 42, 47, 48, 43, 44, 45, 46, 25, 26, 31, 32, 27, 28, 29, 30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[27, 28, 26, 25, 31, 32, 30, 29, 35, 36, 34, 33, 39, 40, 38, 37, 43, 44, 42, 41, 47, 48, 46, 45, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22], [17, 18, 21, 22, 23, 24, 19, 20, 1, 2, 5, 6, 7, 8, 3, 4, 9, 10, 13, 14, 15, 16, 11, 12, 41, 42, 45, 46, 47, 48, 43, 44, 25, 26, 29, 30, 31, 32, 27, 28, 33, 34, 37, 38, 39, 40, 35, 36], [35, 36, 38, 37, 34, 33, 39, 40, 43, 44, 46, 45, 42, 41, 47, 48, 27, 28, 30, 29, 26, 25, 31, 32, 12, 11, 13, 14, 9, 10, 16, 15, 20, 19, 21, 22, 17, 18, 24, 23, 4, 3, 5, 6, 1, 2, 8, 7]];
cc:=[3,5,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6, 33, 34, 39, 40, 35, 36, 37, 38, 41, 42, 47, 48, 43, 44, 45, 46, 25, 26, 31, 32, 27, 28, 29, 30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[27, 28, 26, 25, 31, 32, 30, 29, 35, 36, 34, 33, 39, 40, 38, 37, 43, 44, 42, 41, 47, 48, 46, 45, 4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14, 20, 19, 17, 18, 24, 23, 21, 22], [20, 19, 24, 23, 21, 22, 17, 18, 4, 3, 8, 7, 5, 6, 1, 2, 12, 11, 16, 15, 13, 14, 9, 10, 44, 43, 48, 47, 45, 46, 41, 42, 28, 27, 32, 31, 29, 30, 25, 26, 36, 35, 40, 39, 37, 38, 33, 34], [38, 37, 36, 35, 39, 40, 33, 34, 46, 45, 44, 43, 47, 48, 41, 42, 30, 29, 28, 27, 31, 32, 25, 26, 13, 14, 11, 12, 16, 15, 10, 9, 21, 22, 19, 20, 24, 23, 18, 17, 5, 6, 3, 4, 8, 7, 2, 1]];
cc:=[3,5,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6, 33, 34, 39, 40, 35, 36, 37, 38, 41, 42, 47, 48, 43, 44, 45, 46, 25, 26, 31, 32, 27, 28, 29, 30];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 3.168-42.0.2-3-7
// Create group as a permutation group and initialize signature information.
gp_id:=[168,42];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,7];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 9, 45, 88, 1, 77, 104, 12, 2, 17, 32, 8, 154, 125, 19, 23, 10, 39, 15, 91, 160, 26, 16, 66, 151, 22, 84, 139, 33, 114, 38, 11, 29, 147, 48, 40, 163, 31, 18, 36, 98, 69, 47, 51, 3, 130, 43, 35, 146, 54, 44, 59, 74, 50, 112, 167, 61, 65, 52, 81, 57, 133, 118, 68, 58, 24, 109, 64, 42, 97, 75, 156, 80, 53, 71, 105, 6, 82, 121, 73, 60, 78, 140, 27, 89, 93, 129, 4, 85, 161, 20, 96, 86, 101, 116, 92, 70, 41, 103, 107, 94, 123, 99, 7, 76, 110, 100, 150, 67, 106, 168, 55, 117, 30, 122, 95, 113, 63, 132, 124, 79, 115, 102, 120, 14, 153, 131, 135, 87, 46, 127, 119, 62, 138, 128, 143, 158, 134, 28, 83, 145, 149, 136, 165, 141, 49, 34, 152, 142, 108, 25, 148, 126, 13, 159, 72, 164, 137, 155, 21, 90, 166, 37, 157, 144, 162, 56, 111], [2, 3, 1, 5, 6, 4, 77, 9, 10, 8, 12, 13, 11, 154, 16, 17, 15, 19, 20, 18, 91, 23, 24, 22, 26, 27, 25, 84, 30, 31, 29, 33, 34, 32, 147, 37, 38, 36, 40, 41, 39, 98, 44, 45, 43, 47, 48, 46, 35, 51, 52, 50, 54, 55, 53, 112, 58, 59, 57, 61, 62, 60, 133, 65, 66, 64, 68, 69, 67, 42, 72, 73, 71, 75, 76, 74, 105, 79, 80, 78, 82, 83, 81, 140, 86, 87, 85, 89, 90, 88, 161, 93, 94, 92, 96, 97, 95, 70, 100, 101, 99, 103, 104, 102, 7, 107, 108, 106, 110, 111, 109, 168, 114, 115, 113, 117, 118, 116, 63, 121, 122, 120, 124, 125, 123, 14, 128, 129, 127, 131, 132, 130, 119, 135, 136, 134, 138, 139, 137, 28, 142, 143, 141, 145, 146, 144, 49, 149, 150, 148, 152, 153, 151, 126, 156, 157, 155, 159, 160, 158, 21, 163, 164, 162, 166, 167, 165, 56], [45, 5, 9, 77, 88, 1, 76, 17, 12, 2, 154, 32, 8, 153, 10, 19, 23, 91, 39, 15, 90, 66, 26, 16, 84, 151, 22, 83, 38, 33, 114, 147, 11, 29, 146, 31, 40, 163, 98, 18, 36, 97, 3, 47, 51, 35, 130, 43, 34, 59, 54, 44, 112, 74, 50, 111, 52, 61, 65, 133, 81, 57, 132, 24, 68, 58, 42, 109, 64, 41, 80, 75, 156, 105, 53, 71, 104, 73, 82, 121, 140, 60, 78, 139, 129, 89, 93, 161, 4, 85, 160, 101, 96, 86, 70, 116, 92, 69, 94, 103, 107, 7, 123, 99, 6, 150, 110, 100, 168, 67, 106, 167, 122, 117, 30, 63, 95, 113, 62, 115, 124, 79, 14, 102, 120, 13, 87, 131, 135, 119, 46, 127, 118, 143, 138, 128, 28, 158, 134, 27, 136, 145, 149, 49, 165, 141, 48, 108, 152, 142, 126, 25, 148, 125, 164, 159, 72, 21, 137, 155, 20, 157, 166, 37, 56, 144, 162, 55]];
cc:=[2,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 9, 45, 88, 1, 77, 104, 12, 2, 17, 32, 8, 154, 125, 19, 23, 10, 39, 15, 91, 160, 26, 16, 66, 151, 22, 84, 139, 33, 114, 38, 11, 29, 147, 48, 40, 163, 31, 18, 36, 98, 69, 47, 51, 3, 130, 43, 35, 146, 54, 44, 59, 74, 50, 112, 167, 61, 65, 52, 81, 57, 133, 118, 68, 58, 24, 109, 64, 42, 97, 75, 156, 80, 53, 71, 105, 6, 82, 121, 73, 60, 78, 140, 27, 89, 93, 129, 4, 85, 161, 20, 96, 86, 101, 116, 92, 70, 41, 103, 107, 94, 123, 99, 7, 76, 110, 100, 150, 67, 106, 168, 55, 117, 30, 122, 95, 113, 63, 132, 124, 79, 115, 102, 120, 14, 153, 131, 135, 87, 46, 127, 119, 62, 138, 128, 143, 158, 134, 28, 83, 145, 149, 136, 165, 141, 49, 34, 152, 142, 108, 25, 148, 126, 13, 159, 72, 164, 137, 155, 21, 90, 166, 37, 157, 144, 162, 56, 111], [108, 140, 116, 141, 30, 83, 26, 80, 168, 95, 155, 86, 111, 54, 73, 119, 144, 120, 149, 132, 61, 129, 105, 165, 92, 37, 76, 5, 52, 28, 88, 64, 93, 139, 82, 59, 7, 151, 43, 142, 104, 75, 150, 98, 158, 99, 72, 41, 68, 38, 126, 137, 113, 128, 153, 12, 31, 161, 102, 162, 107, 90, 19, 87, 147, 123, 134, 79, 34, 47, 10, 70, 130, 22, 135, 97, 40, 17, 49, 109, 1, 100, 146, 33, 24, 56, 32, 57, 114, 167, 110, 164, 84, 11, 71, 2, 27, 138, 157, 35, 60, 36, 65, 48, 145, 45, 21, 81, 8, 121, 160, 89, 136, 112, 4, 148, 9, 55, 166, 143, 91, 67, 127, 58, 20, 159, 66, 14, 74, 15, 156, 125, 152, 122, 42, 53, 29, 44, 69, 96, 115, 77, 18, 78, 23, 6, 103, 3, 63, 39, 50, 163, 118, 131, 94, 154, 46, 106, 51, 13, 124, 101, 133, 25, 85, 16, 62, 117], [60, 92, 152, 122, 139, 49, 163, 67, 113, 75, 101, 167, 21, 135, 46, 162, 82, 136, 118, 14, 100, 53, 141, 89, 157, 104, 70, 114, 158, 1, 61, 129, 27, 42, 107, 123, 22, 54, 108, 6, 35, 128, 18, 134, 110, 164, 97, 7, 121, 25, 155, 33, 143, 125, 63, 93, 4, 120, 40, 94, 160, 56, 142, 11, 99, 131, 115, 146, 28, 156, 116, 43, 19, 87, 69, 84, 149, 165, 64, 12, 150, 48, 77, 86, 144, 8, 68, 38, 55, 133, 79, 151, 29, 159, 17, 83, 105, 51, 130, 78, 166, 52, 34, 98, 16, 137, 57, 5, 73, 20, 154, 30, 74, 85, 145, 45, 111, 126, 23, 39, 106, 138, 24, 90, 119, 44, 102, 50, 26, 80, 13, 91, 37, 109, 71, 117, 59, 41, 147, 9, 88, 36, 124, 10, 76, 140, 58, 95, 15, 47, 31, 62, 112, 72, 32, 127, 103, 3, 153, 168, 65, 81, 148, 96, 66, 132, 161, 2]];
cc:=[2,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.8-1.0.4-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[8,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,8,8];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 7, 8, 3, 4, 2, 1], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,11];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [7, 8, 6, 5, 2, 1, 4, 3], [7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[3,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [8, 7, 5, 6, 1, 2, 3, 4], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[3,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 1, 2, 8, 7, 5, 6], [5, 6, 7, 8, 3, 4, 2, 1], [5, 6, 7, 8, 3, 4, 2, 1]];
cc:=[4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 1, 2, 8, 7, 5, 6], [7, 8, 6, 5, 2, 1, 4, 3], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[32,11];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 1, 2, 8, 7, 5, 6], [6, 5, 8, 7, 4, 3, 1, 2], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.16-4.0.4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,4];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 1, 2, 13, 14, 15, 16, 11, 12, 9, 10], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 3, 4, 1, 2, 13, 14, 15, 16, 11, 12, 9, 10], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 4, 3, 2, 1, 14, 13, 16, 15, 12, 11, 10, 9], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 4, 3, 2, 1, 14, 13, 16, 15, 12, 11, 10, 9], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.48-3.0.3-3-4
// Create group as a permutation group and initialize signature information.
gp_id:=[48,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,4];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[17, 20, 18, 19, 30, 31, 29, 32, 21, 24, 22, 23, 28, 25, 27, 26, 33, 36, 34, 35, 46, 47, 45, 48, 37, 40, 38, 39, 44, 41, 43, 42, 1, 4, 2, 3, 14, 15, 13, 16, 5, 8, 6, 7, 12, 9, 11, 10], [45, 47, 48, 46, 40, 38, 37, 39, 33, 35, 36, 34, 41, 43, 44, 42, 13, 15, 16, 14, 8, 6, 5, 7, 1, 3, 4, 2, 9, 11, 12, 10, 29, 31, 32, 30, 24, 22, 21, 23, 17, 19, 20, 18, 25, 27, 28, 26], [14, 13, 16, 15, 12, 11, 10, 9, 7, 8, 5, 6, 1, 2, 3, 4, 30, 29, 32, 31, 28, 27, 26, 25, 23, 24, 21, 22, 17, 18, 19, 20, 46, 45, 48, 47, 44, 43, 42, 41, 39, 40, 37, 38, 33, 34, 35, 36]];
cc:=[3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 20, 18, 19, 30, 31, 29, 32, 21, 24, 22, 23, 28, 25, 27, 26, 33, 36, 34, 35, 46, 47, 45, 48, 37, 40, 38, 39, 44, 41, 43, 42, 1, 4, 2, 3, 14, 15, 13, 16, 5, 8, 6, 7, 12, 9, 11, 10], [46, 48, 47, 45, 39, 37, 38, 40, 34, 36, 35, 33, 42, 44, 43, 41, 14, 16, 15, 13, 7, 5, 6, 8, 2, 4, 3, 1, 10, 12, 11, 9, 30, 32, 31, 29, 23, 21, 22, 24, 18, 20, 19, 17, 26, 28, 27, 25], [13, 14, 15, 16, 11, 12, 9, 10, 8, 7, 6, 5, 2, 1, 4, 3, 29, 30, 31, 32, 27, 28, 25, 26, 24, 23, 22, 21, 18, 17, 20, 19, 45, 46, 47, 48, 43, 44, 41, 42, 40, 39, 38, 37, 34, 33, 36, 35]];
cc:=[3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 20, 18, 19, 30, 31, 29, 32, 21, 24, 22, 23, 28, 25, 27, 26, 33, 36, 34, 35, 46, 47, 45, 48, 37, 40, 38, 39, 44, 41, 43, 42, 1, 4, 2, 3, 14, 15, 13, 16, 5, 8, 6, 7, 12, 9, 11, 10], [48, 46, 45, 47, 37, 39, 40, 38, 36, 34, 33, 35, 44, 42, 41, 43, 16, 14, 13, 15, 5, 7, 8, 6, 4, 2, 1, 3, 12, 10, 9, 11, 32, 30, 29, 31, 21, 23, 24, 22, 20, 18, 17, 19, 28, 26, 25, 27], [15, 16, 13, 14, 9, 10, 11, 12, 6, 5, 8, 7, 4, 3, 2, 1, 31, 32, 29, 30, 25, 26, 27, 28, 22, 21, 24, 23, 20, 19, 18, 17, 47, 48, 45, 46, 41, 42, 43, 44, 38, 37, 40, 39, 36, 35, 34, 33]];
cc:=[3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 20, 18, 19, 30, 31, 29, 32, 21, 24, 22, 23, 28, 25, 27, 26, 33, 36, 34, 35, 46, 47, 45, 48, 37, 40, 38, 39, 44, 41, 43, 42, 1, 4, 2, 3, 14, 15, 13, 16, 5, 8, 6, 7, 12, 9, 11, 10], [47, 45, 46, 48, 38, 40, 39, 37, 35, 33, 34, 36, 43, 41, 42, 44, 15, 13, 14, 16, 6, 8, 7, 5, 3, 1, 2, 4, 11, 9, 10, 12, 31, 29, 30, 32, 22, 24, 23, 21, 19, 17, 18, 20, 27, 25, 26, 28], [16, 15, 14, 13, 10, 9, 12, 11, 5, 6, 7, 8, 3, 4, 1, 2, 32, 31, 30, 29, 26, 25, 28, 27, 21, 22, 23, 24, 19, 20, 17, 18, 48, 47, 46, 45, 42, 41, 44, 43, 37, 38, 39, 40, 35, 36, 33, 34]];
cc:=[3,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.9-1.0.3-9-9
// Create group as a permutation group and initialize signature information.
gp_id:=[9,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,9,9];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [4, 5, 6, 7, 8, 9, 2, 3, 1], [8, 9, 7, 3, 1, 2, 6, 4, 5]];
cc:=[2,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [7, 8, 9, 2, 3, 1, 5, 6, 4], [5, 6, 4, 8, 9, 7, 3, 1, 2]];
cc:=[2,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1, 5, 6, 4, 8, 9, 7], [6, 4, 5, 9, 7, 8, 1, 2, 3], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[2,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [4, 5, 6, 7, 8, 9, 2, 3, 1], [7, 8, 9, 2, 3, 1, 5, 6, 4]];
cc:=[3,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [5, 6, 4, 8, 9, 7, 3, 1, 2], [9, 7, 8, 1, 2, 3, 4, 5, 6]];
cc:=[3,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[3, 1, 2, 6, 4, 5, 9, 7, 8], [8, 9, 7, 3, 1, 2, 6, 4, 5], [6, 4, 5, 9, 7, 8, 1, 2, 3]];
cc:=[3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4, 8, 9, 7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 3.14-2.0.2-7-14
// Create group as a permutation group and initialize signature information.
gp_id:=[14,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,7,14];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [2, 3, 4, 5, 6, 7, 1, 9, 10, 11, 12, 13, 14, 8], [14, 8, 9, 10, 11, 12, 13, 7, 1, 2, 3, 4, 5, 6]];
cc:=[2,3,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9], [13, 14, 8, 9, 10, 11, 12, 6, 7, 1, 2, 3, 4, 5]];
cc:=[2,4,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10], [12, 13, 14, 8, 9, 10, 11, 5, 6, 7, 1, 2, 3, 4]];
cc:=[2,5,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [5, 6, 7, 1, 2, 3, 4, 12, 13, 14, 8, 9, 10, 11], [11, 12, 13, 14, 8, 9, 10, 4, 5, 6, 7, 1, 2, 3]];
cc:=[2,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [6, 7, 1, 2, 3, 4, 5, 13, 14, 8, 9, 10, 11, 12], [10, 11, 12, 13, 14, 8, 9, 3, 4, 5, 6, 7, 1, 2]];
cc:=[2,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7], [7, 1, 2, 3, 4, 5, 6, 14, 8, 9, 10, 11, 12, 13], [9, 10, 11, 12, 13, 14, 8, 2, 3, 4, 5, 6, 7, 1]];
cc:=[2,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 9, 10, 11, 12, 13, 14, 1, 2, 3, 4, 5, 6, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.24-5.0.2-4-12
// Create group as a permutation group and initialize signature information.
gp_id:=[24,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,12];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [11, 12, 10, 8, 9, 7, 2, 3, 1, 5, 6, 4, 23, 24, 22, 20, 21, 19, 14, 15, 13, 17, 18, 16]];
cc:=[3,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4], [8, 9, 7, 11, 12, 10, 5, 6, 4, 2, 3, 1, 20, 21, 19, 23, 24, 22, 17, 18, 16, 14, 15, 13]];
cc:=[3,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [8, 9, 7, 11, 12, 10, 5, 6, 4, 2, 3, 1, 20, 21, 19, 23, 24, 22, 17, 18, 16, 14, 15, 13]];
cc:=[4,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [24, 23, 22, 21, 20, 19, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4], [11, 12, 10, 8, 9, 7, 2, 3, 1, 5, 6, 4, 23, 24, 22, 20, 21, 19, 14, 15, 13, 17, 18, 16]];
cc:=[4,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.24-12.0.3-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[24,12];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,4];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15], [14, 16, 13, 15, 22, 24, 21, 23, 18, 20, 17, 19, 2, 4, 1, 3, 10, 12, 9, 11, 6, 8, 5, 7], [24, 21, 22, 23, 20, 17, 18, 19, 16, 13, 14, 15, 12, 9, 10, 11, 8, 5, 6, 7, 4, 1, 2, 3]];
cc:=[4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,48];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.24-3.0.3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,6];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 15, 16, 11, 12, 13, 14, 17, 18, 23, 24, 19, 20, 21, 22, 1, 2, 7, 8, 3, 4, 5, 6], [13, 14, 11, 12, 16, 15, 10, 9, 21, 22, 19, 20, 24, 23, 18, 17, 5, 6, 3, 4, 8, 7, 2, 1], [12, 11, 13, 14, 9, 10, 16, 15, 20, 19, 21, 22, 17, 18, 24, 23, 4, 3, 5, 6, 1, 2, 8, 7]];
cc:=[3,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,33];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 21, 22, 23, 24, 19, 20, 1, 2, 5, 6, 7, 8, 3, 4, 9, 10, 13, 14, 15, 16, 11, 12], [24, 23, 19, 20, 17, 18, 22, 21, 8, 7, 3, 4, 1, 2, 6, 5, 16, 15, 11, 12, 9, 10, 14, 13], [19, 20, 23, 24, 22, 21, 18, 17, 3, 4, 7, 8, 6, 5, 2, 1, 11, 12, 15, 16, 14, 13, 10, 9]];
cc:=[4,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,33];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.24-13.0.2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,13];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,6];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15, 5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [22, 24, 23, 21, 14, 16, 15, 13, 18, 20, 19, 17, 10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5]];
cc:=[3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,48];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.12-2.0.3-4-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,12];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[3,5,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,33];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[3,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,33];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [7, 8, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[4,5,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[48,33];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [8, 7, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1]];
cc:=[4,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[48,33];
full_sign:=[0,2,3,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.21-1.0.3-3-7
// Create group as a permutation group and initialize signature information.
gp_id:=[21,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,7];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[8, 10, 12, 14, 9, 11, 13, 15, 17, 19, 21, 16, 18, 20, 1, 3, 5, 7, 2, 4, 6], [20, 17, 21, 18, 15, 19, 16, 6, 3, 7, 4, 1, 5, 2, 13, 10, 14, 11, 8, 12, 9], [3, 4, 5, 6, 7, 1, 2, 10, 11, 12, 13, 14, 8, 9, 17, 18, 19, 20, 21, 15, 16]];
cc:=[2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[168,42];
full_sign:=[0,2,3,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 10, 12, 14, 9, 11, 13, 15, 17, 19, 21, 16, 18, 20, 1, 3, 5, 7, 2, 4, 6], [19, 16, 20, 17, 21, 18, 15, 5, 2, 6, 3, 7, 4, 1, 12, 9, 13, 10, 14, 11, 8], [4, 5, 6, 7, 1, 2, 3, 11, 12, 13, 14, 8, 9, 10, 18, 19, 20, 21, 15, 16, 17]];
cc:=[2,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[168,42];
full_sign:=[0,2,3,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.32-11.0.2-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[32,11];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,8];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7, 25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23], [25, 26, 27, 28, 29, 30, 31, 32, 22, 21, 24, 23, 17, 18, 19, 20, 11, 12, 10, 9, 15, 16, 14, 13, 8, 7, 5, 6, 3, 4, 2, 1], [23, 24, 22, 21, 19, 20, 18, 17, 28, 27, 25, 26, 31, 32, 30, 29, 6, 5, 8, 7, 2, 1, 4, 3, 9, 10, 11, 12, 14, 13, 16, 15]];
cc:=[4,8,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7, 25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23], [32, 31, 29, 30, 27, 28, 26, 25, 20, 19, 17, 18, 24, 23, 21, 22, 13, 14, 15, 16, 10, 9, 12, 11, 1, 2, 3, 4, 5, 6, 7, 8], [17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 2, 1, 8, 7, 5, 6, 15, 16, 14, 13, 11, 12, 10, 9]];
cc:=[4,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7, 25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23], [26, 25, 28, 27, 30, 29, 32, 31, 21, 22, 23, 24, 18, 17, 20, 19, 12, 11, 9, 10, 16, 15, 13, 14, 7, 8, 6, 5, 4, 3, 1, 2], [24, 23, 21, 22, 20, 19, 17, 18, 27, 28, 26, 25, 32, 31, 29, 30, 5, 6, 7, 8, 1, 2, 3, 4, 10, 9, 12, 11, 13, 14, 15, 16]];
cc:=[4,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7, 25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23], [31, 32, 30, 29, 28, 27, 25, 26, 19, 20, 18, 17, 23, 24, 22, 21, 14, 13, 16, 15, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5, 8, 7], [18, 17, 20, 19, 21, 22, 23, 24, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 1, 2, 7, 8, 6, 5, 16, 15, 13, 14, 12, 11, 9, 10]];
cc:=[4,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.16-5.0.2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,8,8];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 2, 1, 7, 8, 6, 5], [16, 15, 13, 14, 12, 11, 9, 10, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 10, 9, 15, 16, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 10, 9, 12, 11, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[3,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 1, 2, 8, 7, 5, 6], [15, 16, 14, 13, 11, 12, 10, 9, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [12, 11, 9, 10, 16, 15, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[3,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 2, 1, 7, 8, 6, 5], [15, 16, 14, 13, 11, 12, 10, 9, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [11, 12, 10, 9, 15, 16, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[4,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 1, 2, 8, 7, 5, 6], [16, 15, 13, 14, 12, 11, 9, 10, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[4,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [12, 11, 9, 10, 16, 15, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 10, 9, 12, 11, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[4,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[32,9];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.16-6.0.2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,8,8];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 3, 4, 2, 1, 8, 7, 5, 6], [16, 15, 13, 14, 11, 12, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 10, 9, 16, 15, 13, 14, 2, 1, 4, 3, 5, 6, 7, 8], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 5, 6, 3, 4, 2, 1]];
cc:=[3,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.32-9.0.2-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[32,9];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,8];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7, 25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23], [18, 17, 20, 19, 21, 22, 23, 24, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 2, 1, 7, 8, 5, 6, 16, 15, 14, 13, 12, 11, 10, 9], [28, 27, 26, 25, 32, 31, 30, 29, 23, 24, 21, 22, 20, 19, 18, 17, 10, 9, 12, 11, 14, 13, 16, 15, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[5,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22, 27, 28, 25, 26, 31, 32, 29, 30];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7, 25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23], [17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [27, 28, 25, 26, 31, 32, 29, 30, 24, 23, 22, 21, 19, 20, 17, 18, 9, 10, 11, 12, 13, 14, 15, 16, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[5,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22, 27, 28, 25, 26, 31, 32, 29, 30];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7, 25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23], [19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [25, 26, 27, 28, 29, 30, 31, 32, 22, 21, 24, 23, 17, 18, 19, 20, 11, 12, 9, 10, 15, 16, 13, 14, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[5,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22, 27, 28, 25, 26, 31, 32, 29, 30];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7, 25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23], [20, 19, 18, 17, 23, 24, 21, 22, 32, 31, 30, 29, 28, 27, 26, 25, 2, 1, 4, 3, 5, 6, 7, 8, 14, 13, 16, 15, 10, 9, 12, 11], [26, 25, 28, 27, 30, 29, 32, 31, 21, 22, 23, 24, 18, 17, 20, 19, 12, 11, 10, 9, 16, 15, 14, 13, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[5,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22, 27, 28, 25, 26, 31, 32, 29, 30];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5, 27, 28, 25, 26, 32, 31, 30, 29, 19, 20, 17, 18, 24, 23, 22, 21], [17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 8, 7, 6, 5, 15, 16, 13, 14, 11, 12, 9, 10], [25, 26, 27, 28, 29, 30, 31, 32, 22, 21, 24, 23, 17, 18, 19, 20, 11, 12, 9, 10, 15, 16, 13, 14, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[6,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22, 27, 28, 25, 26, 31, 32, 29, 30];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5, 27, 28, 25, 26, 32, 31, 30, 29, 19, 20, 17, 18, 24, 23, 22, 21], [18, 17, 20, 19, 21, 22, 23, 24, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 2, 1, 7, 8, 5, 6, 16, 15, 14, 13, 12, 11, 10, 9], [26, 25, 28, 27, 30, 29, 32, 31, 21, 22, 23, 24, 18, 17, 20, 19, 12, 11, 10, 9, 16, 15, 14, 13, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[6,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22, 27, 28, 25, 26, 31, 32, 29, 30];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5, 27, 28, 25, 26, 32, 31, 30, 29, 19, 20, 17, 18, 24, 23, 22, 21], [20, 19, 18, 17, 23, 24, 21, 22, 32, 31, 30, 29, 28, 27, 26, 25, 2, 1, 4, 3, 5, 6, 7, 8, 14, 13, 16, 15, 10, 9, 12, 11], [28, 27, 26, 25, 32, 31, 30, 29, 23, 24, 21, 22, 20, 19, 18, 17, 10, 9, 12, 11, 14, 13, 16, 15, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[6,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22, 27, 28, 25, 26, 31, 32, 29, 30];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5, 27, 28, 25, 26, 32, 31, 30, 29, 19, 20, 17, 18, 24, 23, 22, 21], [19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 6, 5, 8, 7, 13, 14, 15, 16, 9, 10, 11, 12], [27, 28, 25, 26, 31, 32, 29, 30, 24, 23, 22, 21, 19, 20, 17, 18, 9, 10, 11, 12, 13, 14, 15, 16, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[6,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22, 27, 28, 25, 26, 31, 32, 29, 30];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.48-48.0.2-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[48,48];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,6];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 33, 35, 34, 36, 29, 31, 30, 32, 37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8, 13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20], [48, 45, 46, 47, 44, 41, 42, 43, 40, 37, 38, 39, 36, 33, 34, 35, 32, 29, 30, 31, 28, 25, 26, 27, 24, 21, 22, 23, 20, 17, 18, 19, 16, 13, 14, 15, 12, 9, 10, 11, 8, 5, 6, 7, 4, 1, 2, 3], [19, 18, 20, 17, 23, 22, 24, 21, 15, 14, 16, 13, 7, 6, 8, 5, 11, 10, 12, 9, 3, 2, 4, 1, 43, 42, 44, 41, 47, 46, 48, 45, 39, 38, 40, 37, 31, 30, 32, 29, 35, 34, 36, 33, 27, 26, 28, 25]];
cc:=[5,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 25, 27, 26, 28, 33, 35, 34, 36, 29, 31, 30, 32, 13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8], [36, 33, 34, 35, 32, 29, 30, 31, 28, 25, 26, 27, 48, 45, 46, 47, 44, 41, 42, 43, 40, 37, 38, 39, 12, 9, 10, 11, 8, 5, 6, 7, 4, 1, 2, 3, 24, 21, 22, 23, 20, 17, 18, 19, 16, 13, 14, 15], [19, 18, 20, 17, 23, 22, 24, 21, 15, 14, 16, 13, 7, 6, 8, 5, 11, 10, 12, 9, 3, 2, 4, 1, 43, 42, 44, 41, 47, 46, 48, 45, 39, 38, 40, 37, 31, 30, 32, 29, 35, 34, 36, 33, 27, 26, 28, 25]];
cc:=[6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.96-64.0.2-3-8
// Create group as a permutation group and initialize signature information.
gp_id:=[96,64];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,8];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[49, 50, 52, 51, 57, 58, 60, 59, 53, 54, 56, 55, 61, 62, 64, 63, 81, 82, 84, 83, 89, 90, 92, 91, 85, 86, 88, 87, 93, 94, 96, 95, 65, 66, 68, 67, 73, 74, 76, 75, 69, 70, 72, 71, 77, 78, 80, 79, 1, 2, 4, 3, 9, 10, 12, 11, 5, 6, 8, 7, 13, 14, 16, 15, 33, 34, 36, 35, 41, 42, 44, 43, 37, 38, 40, 39, 45, 46, 48, 47, 17, 18, 20, 19, 25, 26, 28, 27, 21, 22, 24, 23, 29, 30, 32, 31], [26, 27, 25, 28, 24, 21, 23, 22, 30, 31, 29, 32, 18, 19, 17, 20, 42, 43, 41, 44, 40, 37, 39, 38, 46, 47, 45, 48, 34, 35, 33, 36, 10, 11, 9, 12, 8, 5, 7, 6, 14, 15, 13, 16, 2, 3, 1, 4, 74, 75, 73, 76, 72, 69, 71, 70, 78, 79, 77, 80, 66, 67, 65, 68, 90, 91, 89, 92, 88, 85, 87, 86, 94, 95, 93, 96, 82, 83, 81, 84, 58, 59, 57, 60, 56, 53, 55, 54, 62, 63, 61, 64, 50, 51, 49, 52], [80, 77, 78, 79, 74, 75, 76, 73, 68, 65, 66, 67, 72, 69, 70, 71, 64, 61, 62, 63, 58, 59, 60, 57, 52, 49, 50, 51, 56, 53, 54, 55, 96, 93, 94, 95, 90, 91, 92, 89, 84, 81, 82, 83, 88, 85, 86, 87, 32, 29, 30, 31, 26, 27, 28, 25, 20, 17, 18, 19, 24, 21, 22, 23, 16, 13, 14, 15, 10, 11, 12, 9, 4, 1, 2, 3, 8, 5, 6, 7, 48, 45, 46, 47, 42, 43, 44, 41, 36, 33, 34, 35, 40, 37, 38, 39]];
cc:=[3,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[49, 50, 52, 51, 57, 58, 60, 59, 53, 54, 56, 55, 61, 62, 64, 63, 81, 82, 84, 83, 89, 90, 92, 91, 85, 86, 88, 87, 93, 94, 96, 95, 65, 66, 68, 67, 73, 74, 76, 75, 69, 70, 72, 71, 77, 78, 80, 79, 1, 2, 4, 3, 9, 10, 12, 11, 5, 6, 8, 7, 13, 14, 16, 15, 33, 34, 36, 35, 41, 42, 44, 43, 37, 38, 40, 39, 45, 46, 48, 47, 17, 18, 20, 19, 25, 26, 28, 27, 21, 22, 24, 23, 29, 30, 32, 31], [32, 29, 31, 30, 20, 17, 19, 18, 26, 27, 25, 28, 24, 21, 23, 22, 48, 45, 47, 46, 36, 33, 35, 34, 42, 43, 41, 44, 40, 37, 39, 38, 16, 13, 15, 14, 4, 1, 3, 2, 10, 11, 9, 12, 8, 5, 7, 6, 80, 77, 79, 78, 68, 65, 67, 66, 74, 75, 73, 76, 72, 69, 71, 70, 96, 93, 95, 94, 84, 81, 83, 82, 90, 91, 89, 92, 88, 85, 87, 86, 64, 61, 63, 62, 52, 49, 51, 50, 58, 59, 57, 60, 56, 53, 55, 54], [74, 75, 76, 73, 78, 79, 80, 77, 72, 69, 70, 71, 66, 67, 68, 65, 58, 59, 60, 57, 62, 63, 64, 61, 56, 53, 54, 55, 50, 51, 52, 49, 90, 91, 92, 89, 94, 95, 96, 93, 88, 85, 86, 87, 82, 83, 84, 81, 26, 27, 28, 25, 30, 31, 32, 29, 24, 21, 22, 23, 18, 19, 20, 17, 10, 11, 12, 9, 14, 15, 16, 13, 8, 5, 6, 7, 2, 3, 4, 1, 42, 43, 44, 41, 46, 47, 48, 45, 40, 37, 38, 39, 34, 35, 36, 33]];
cc:=[3,4,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.7-1.0.7-7-7
// Create group as a permutation group and initialize signature information.
gp_id:=[7,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,7,7,7];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1], [2, 3, 4, 5, 6, 7, 1], [6, 7, 1, 2, 3, 4, 5]];
cc:=[2,2,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[14,2];
full_sign:=[0,2,7,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1], [3, 4, 5, 6, 7, 1, 2], [5, 6, 7, 1, 2, 3, 4]];
cc:=[2,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[168,42];
full_sign:=[0,2,3,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 1], [4, 5, 6, 7, 1, 2, 3], [4, 5, 6, 7, 1, 2, 3]];
cc:=[2,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[14,2];
full_sign:=[0,2,7,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 1, 2], [3, 4, 5, 6, 7, 1, 2], [4, 5, 6, 7, 1, 2, 3]];
cc:=[3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[14,2];
full_sign:=[0,2,7,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 1, 2], [7, 1, 2, 3, 4, 5, 6], [7, 1, 2, 3, 4, 5, 6]];
cc:=[3,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[14,2];
full_sign:=[0,2,7,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 1, 2, 3], [6, 7, 1, 2, 3, 4, 5], [7, 1, 2, 3, 4, 5, 6]];
cc:=[4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[168,42];
full_sign:=[0,2,3,7];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 1, 2, 3, 4], [5, 6, 7, 1, 2, 3, 4], [7, 1, 2, 3, 4, 5, 6]];
cc:=[5,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[14,2];
full_sign:=[0,2,7,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 1, 2, 3, 4], [6, 7, 1, 2, 3, 4, 5], [6, 7, 1, 2, 3, 4, 5]];
cc:=[5,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[14,2];
full_sign:=[0,2,7,14];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.12-1.0.4-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,6];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,5];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 7, 9, 8, 1, 3, 2, 4, 6, 5], [12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[24,5];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.12-2.0.2-12-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,12,12];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[2,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,5];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[2,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[24,5];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.16-2.0.4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,4];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[5,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[5,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[5,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 2, 1, 4, 3, 13, 14, 15, 16, 10, 9, 12, 11], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[5,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[6,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[6,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[6,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 1, 2, 3, 4, 14, 13, 16, 15, 9, 10, 11, 12], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[6,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[7,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[7,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[7,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 4, 3, 2, 1, 15, 16, 13, 14, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[7,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[8,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[8,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[8,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 3, 4, 1, 2, 16, 15, 14, 13, 11, 12, 9, 10], [12, 11, 10, 9, 16, 15, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[8,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[96,64];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.8-2.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,3,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[16,11];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[16,11];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[16,13];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[16,13];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[16,13];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[16,13];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[16,11];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[16,11];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.24-12.0.2-2-2-3
// Create group as a permutation group and initialize signature information.
gp_id:=[24,12];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8], [21, 24, 23, 22, 17, 20, 19, 18, 13, 16, 15, 14, 9, 12, 11, 10, 5, 8, 7, 6, 1, 4, 3, 2], [6, 7, 5, 8, 10, 11, 9, 12, 2, 3, 1, 4, 18, 19, 17, 20, 22, 23, 21, 24, 14, 15, 13, 16]];
cc:=[2,3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.4-1.0.4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,4,4];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1]];
cc:=[3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[16,13];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[16,11];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[16,13];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.6-2.0.2-2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,6,6];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[12,4];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.12-3.0.2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[12,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6]];
cc:=[2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,12];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.8-3.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 6, 5, 3, 4, 2, 1], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[16,11];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1], [8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[16,11];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 3.6-2.0.2-3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,3,6];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [5, 6, 4, 2, 3, 1]];
cc:=[2,3,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2]];
cc:=[2,4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 3.12-4.0.2-2-2-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,6];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[2,3,3,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7]];
cc:=[2,4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.16-11.0.2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,11];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[3,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [15, 16, 13, 14, 12, 11, 10, 9, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [16, 15, 14, 13, 11, 12, 9, 10, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [14, 13, 16, 15, 9, 10, 11, 12, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[4,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [14, 13, 16, 15, 9, 10, 11, 12, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[4,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [16, 15, 14, 13, 11, 12, 9, 10, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.16-13.0.2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,13];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [16, 15, 13, 14, 11, 12, 10, 9, 8, 7, 5, 6, 3, 4, 2, 1], [3, 4, 2, 1, 7, 8, 6, 5, 11, 12, 10, 9, 15, 16, 14, 13]];
cc:=[3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 14, 13, 12, 11, 9, 10, 7, 8, 6, 5, 4, 3, 1, 2], [4, 3, 1, 2, 8, 7, 5, 6, 12, 11, 9, 10, 16, 15, 13, 14]];
cc:=[3,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.3-1.0.3-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[3,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3,3];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [3, 1, 2]];
cc:=[2,2,2,2,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2]];
cc:=[2,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 3.4-1.0.2-2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4,4];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1]];
cc:=[2,2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,2,2,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.8-5.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[8,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,3,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,3,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,3,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,4,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,5,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,6,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,5,5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,6,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.6-1.0.2-2-2-2-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,3];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4]];
cc:=[2,2,2,2,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.8-3.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [6, 5, 7, 8, 2, 1, 3, 4]];
cc:=[2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.4-2.0.2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[4,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2]];
cc:=[2,2,2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2]];
cc:=[2,2,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[3,3,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[3,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 3.2-1.0.2-2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[2,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2];
genus:=3;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1]];
cc:=[2,2,2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);


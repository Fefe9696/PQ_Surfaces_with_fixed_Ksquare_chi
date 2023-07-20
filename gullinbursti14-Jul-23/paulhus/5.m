// Magma CODE FOR SEARCH RESULTS

// The results are stored in a list of records called 'data'

RecFormat:=recformat<group,gp_id, signature,gen_vectors,conj_classes,genus,dimension,r,g0, passport_label,gen_vect_label, is_hyperelliptic, hyp_involution, is_cyclic_trigonal,cyc_auto,full_auto, full_sign,topological_class,braid_class>;

data:=[];

// label = 5.160-234.0.2-4-5
// Create group as a permutation group and initialize signature information.
gp_id:=[160,234];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,5];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[81, 91, 94, 88, 85, 95, 90, 84, 93, 87, 82, 92, 89, 83, 86, 96, 145, 155, 158, 152, 149, 159, 154, 148, 157, 151, 146, 156, 153, 147, 150, 160, 129, 139, 142, 136, 133, 143, 138, 132, 141, 135, 130, 140, 137, 131, 134, 144, 113, 123, 126, 120, 117, 127, 122, 116, 125, 119, 114, 124, 121, 115, 118, 128, 97, 107, 110, 104, 101, 111, 106, 100, 109, 103, 98, 108, 105, 99, 102, 112, 1, 11, 14, 8, 5, 15, 10, 4, 13, 7, 2, 12, 9, 3, 6, 16, 65, 75, 78, 72, 69, 79, 74, 68, 77, 71, 66, 76, 73, 67, 70, 80, 49, 59, 62, 56, 53, 63, 58, 52, 61, 55, 50, 60, 57, 51, 54, 64, 33, 43, 46, 40, 37, 47, 42, 36, 45, 39, 34, 44, 41, 35, 38, 48, 17, 27, 30, 24, 21, 31, 26, 20, 29, 23, 18, 28, 25, 19, 22, 32], [157, 145, 156, 152, 150, 154, 147, 159, 149, 153, 148, 160, 158, 146, 155, 151, 141, 129, 140, 136, 134, 138, 131, 143, 133, 137, 132, 144, 142, 130, 139, 135, 125, 113, 124, 120, 118, 122, 115, 127, 117, 121, 116, 128, 126, 114, 123, 119, 109, 97, 108, 104, 102, 106, 99, 111, 101, 105, 100, 112, 110, 98, 107, 103, 93, 81, 92, 88, 86, 90, 83, 95, 85, 89, 84, 96, 94, 82, 91, 87, 77, 65, 76, 72, 70, 74, 67, 79, 69, 73, 68, 80, 78, 66, 75, 71, 61, 49, 60, 56, 54, 58, 51, 63, 53, 57, 52, 64, 62, 50, 59, 55, 45, 33, 44, 40, 38, 42, 35, 47, 37, 41, 36, 48, 46, 34, 43, 39, 29, 17, 28, 24, 22, 26, 19, 31, 21, 25, 20, 32, 30, 18, 27, 23, 13, 1, 12, 8, 6, 10, 3, 15, 5, 9, 4, 16, 14, 2, 11, 7], [27, 19, 26, 18, 29, 21, 32, 24, 23, 31, 22, 30, 17, 25, 20, 28, 43, 35, 42, 34, 45, 37, 48, 40, 39, 47, 38, 46, 33, 41, 36, 44, 59, 51, 58, 50, 61, 53, 64, 56, 55, 63, 54, 62, 49, 57, 52, 60, 75, 67, 74, 66, 77, 69, 80, 72, 71, 79, 70, 78, 65, 73, 68, 76, 11, 3, 10, 2, 13, 5, 16, 8, 7, 15, 6, 14, 1, 9, 4, 12, 107, 99, 106, 98, 109, 101, 112, 104, 103, 111, 102, 110, 97, 105, 100, 108, 123, 115, 122, 114, 125, 117, 128, 120, 119, 127, 118, 126, 113, 121, 116, 124, 139, 131, 138, 130, 141, 133, 144, 136, 135, 143, 134, 142, 129, 137, 132, 140, 155, 147, 154, 146, 157, 149, 160, 152, 151, 159, 150, 158, 145, 153, 148, 156, 91, 83, 90, 82, 93, 85, 96, 88, 87, 95, 86, 94, 81, 89, 84, 92]];
cc:=[5,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[81, 91, 94, 88, 85, 95, 90, 84, 93, 87, 82, 92, 89, 83, 86, 96, 145, 155, 158, 152, 149, 159, 154, 148, 157, 151, 146, 156, 153, 147, 150, 160, 129, 139, 142, 136, 133, 143, 138, 132, 141, 135, 130, 140, 137, 131, 134, 144, 113, 123, 126, 120, 117, 127, 122, 116, 125, 119, 114, 124, 121, 115, 118, 128, 97, 107, 110, 104, 101, 111, 106, 100, 109, 103, 98, 108, 105, 99, 102, 112, 1, 11, 14, 8, 5, 15, 10, 4, 13, 7, 2, 12, 9, 3, 6, 16, 65, 75, 78, 72, 69, 79, 74, 68, 77, 71, 66, 76, 73, 67, 70, 80, 49, 59, 62, 56, 53, 63, 58, 52, 61, 55, 50, 60, 57, 51, 54, 64, 33, 43, 46, 40, 37, 47, 42, 36, 45, 39, 34, 44, 41, 35, 38, 48, 17, 27, 30, 24, 21, 31, 26, 20, 29, 23, 18, 28, 25, 19, 22, 32], [121, 122, 124, 123, 126, 125, 127, 128, 120, 119, 117, 118, 115, 116, 114, 113, 105, 106, 108, 107, 110, 109, 111, 112, 104, 103, 101, 102, 99, 100, 98, 97, 89, 90, 92, 91, 94, 93, 95, 96, 88, 87, 85, 86, 83, 84, 82, 81, 153, 154, 156, 155, 158, 157, 159, 160, 152, 151, 149, 150, 147, 148, 146, 145, 137, 138, 140, 139, 142, 141, 143, 144, 136, 135, 133, 134, 131, 132, 130, 129, 41, 42, 44, 43, 46, 45, 47, 48, 40, 39, 37, 38, 35, 36, 34, 33, 25, 26, 28, 27, 30, 29, 31, 32, 24, 23, 21, 22, 19, 20, 18, 17, 9, 10, 12, 11, 14, 13, 15, 16, 8, 7, 5, 6, 3, 4, 2, 1, 73, 74, 76, 75, 78, 77, 79, 80, 72, 71, 69, 70, 67, 68, 66, 65, 57, 58, 60, 59, 62, 61, 63, 64, 56, 55, 53, 54, 51, 52, 50, 49], [64, 54, 57, 51, 50, 60, 55, 61, 49, 59, 56, 62, 63, 53, 58, 52, 80, 70, 73, 67, 66, 76, 71, 77, 65, 75, 72, 78, 79, 69, 74, 68, 16, 6, 9, 3, 2, 12, 7, 13, 1, 11, 8, 14, 15, 5, 10, 4, 32, 22, 25, 19, 18, 28, 23, 29, 17, 27, 24, 30, 31, 21, 26, 20, 48, 38, 41, 35, 34, 44, 39, 45, 33, 43, 40, 46, 47, 37, 42, 36, 144, 134, 137, 131, 130, 140, 135, 141, 129, 139, 136, 142, 143, 133, 138, 132, 160, 150, 153, 147, 146, 156, 151, 157, 145, 155, 152, 158, 159, 149, 154, 148, 96, 86, 89, 83, 82, 92, 87, 93, 81, 91, 88, 94, 95, 85, 90, 84, 112, 102, 105, 99, 98, 108, 103, 109, 97, 107, 104, 110, 111, 101, 106, 100, 128, 118, 121, 115, 114, 124, 119, 125, 113, 123, 120, 126, 127, 117, 122, 116]];
cc:=[5,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[81, 91, 94, 88, 85, 95, 90, 84, 93, 87, 82, 92, 89, 83, 86, 96, 145, 155, 158, 152, 149, 159, 154, 148, 157, 151, 146, 156, 153, 147, 150, 160, 129, 139, 142, 136, 133, 143, 138, 132, 141, 135, 130, 140, 137, 131, 134, 144, 113, 123, 126, 120, 117, 127, 122, 116, 125, 119, 114, 124, 121, 115, 118, 128, 97, 107, 110, 104, 101, 111, 106, 100, 109, 103, 98, 108, 105, 99, 102, 112, 1, 11, 14, 8, 5, 15, 10, 4, 13, 7, 2, 12, 9, 3, 6, 16, 65, 75, 78, 72, 69, 79, 74, 68, 77, 71, 66, 76, 73, 67, 70, 80, 49, 59, 62, 56, 53, 63, 58, 52, 61, 55, 50, 60, 57, 51, 54, 64, 33, 43, 46, 40, 37, 47, 42, 36, 45, 39, 34, 44, 41, 35, 38, 48, 17, 27, 30, 24, 21, 31, 26, 20, 29, 23, 18, 28, 25, 19, 22, 32], [156, 152, 157, 145, 147, 159, 150, 154, 148, 160, 149, 153, 155, 151, 158, 146, 140, 136, 141, 129, 131, 143, 134, 138, 132, 144, 133, 137, 139, 135, 142, 130, 124, 120, 125, 113, 115, 127, 118, 122, 116, 128, 117, 121, 123, 119, 126, 114, 108, 104, 109, 97, 99, 111, 102, 106, 100, 112, 101, 105, 107, 103, 110, 98, 92, 88, 93, 81, 83, 95, 86, 90, 84, 96, 85, 89, 91, 87, 94, 82, 76, 72, 77, 65, 67, 79, 70, 74, 68, 80, 69, 73, 75, 71, 78, 66, 60, 56, 61, 49, 51, 63, 54, 58, 52, 64, 53, 57, 59, 55, 62, 50, 44, 40, 45, 33, 35, 47, 38, 42, 36, 48, 37, 41, 43, 39, 46, 34, 28, 24, 29, 17, 19, 31, 22, 26, 20, 32, 21, 25, 27, 23, 30, 18, 12, 8, 13, 1, 3, 15, 6, 10, 4, 16, 5, 9, 11, 7, 14, 2], [24, 32, 21, 29, 18, 26, 19, 27, 28, 20, 25, 17, 30, 22, 31, 23, 40, 48, 37, 45, 34, 42, 35, 43, 44, 36, 41, 33, 46, 38, 47, 39, 56, 64, 53, 61, 50, 58, 51, 59, 60, 52, 57, 49, 62, 54, 63, 55, 72, 80, 69, 77, 66, 74, 67, 75, 76, 68, 73, 65, 78, 70, 79, 71, 8, 16, 5, 13, 2, 10, 3, 11, 12, 4, 9, 1, 14, 6, 15, 7, 104, 112, 101, 109, 98, 106, 99, 107, 108, 100, 105, 97, 110, 102, 111, 103, 120, 128, 117, 125, 114, 122, 115, 123, 124, 116, 121, 113, 126, 118, 127, 119, 136, 144, 133, 141, 130, 138, 131, 139, 140, 132, 137, 129, 142, 134, 143, 135, 152, 160, 149, 157, 146, 154, 147, 155, 156, 148, 153, 145, 158, 150, 159, 151, 88, 96, 85, 93, 82, 90, 83, 91, 92, 84, 89, 81, 94, 86, 95, 87]];
cc:=[5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[81, 91, 94, 88, 85, 95, 90, 84, 93, 87, 82, 92, 89, 83, 86, 96, 145, 155, 158, 152, 149, 159, 154, 148, 157, 151, 146, 156, 153, 147, 150, 160, 129, 139, 142, 136, 133, 143, 138, 132, 141, 135, 130, 140, 137, 131, 134, 144, 113, 123, 126, 120, 117, 127, 122, 116, 125, 119, 114, 124, 121, 115, 118, 128, 97, 107, 110, 104, 101, 111, 106, 100, 109, 103, 98, 108, 105, 99, 102, 112, 1, 11, 14, 8, 5, 15, 10, 4, 13, 7, 2, 12, 9, 3, 6, 16, 65, 75, 78, 72, 69, 79, 74, 68, 77, 71, 66, 76, 73, 67, 70, 80, 49, 59, 62, 56, 53, 63, 58, 52, 61, 55, 50, 60, 57, 51, 54, 64, 33, 43, 46, 40, 37, 47, 42, 36, 45, 39, 34, 44, 41, 35, 38, 48, 17, 27, 30, 24, 21, 31, 26, 20, 29, 23, 18, 28, 25, 19, 22, 32], [116, 115, 113, 114, 119, 120, 118, 117, 125, 126, 128, 127, 122, 121, 123, 124, 100, 99, 97, 98, 103, 104, 102, 101, 109, 110, 112, 111, 106, 105, 107, 108, 84, 83, 81, 82, 87, 88, 86, 85, 93, 94, 96, 95, 90, 89, 91, 92, 148, 147, 145, 146, 151, 152, 150, 149, 157, 158, 160, 159, 154, 153, 155, 156, 132, 131, 129, 130, 135, 136, 134, 133, 141, 142, 144, 143, 138, 137, 139, 140, 36, 35, 33, 34, 39, 40, 38, 37, 45, 46, 48, 47, 42, 41, 43, 44, 20, 19, 17, 18, 23, 24, 22, 21, 29, 30, 32, 31, 26, 25, 27, 28, 4, 3, 1, 2, 7, 8, 6, 5, 13, 14, 16, 15, 10, 9, 11, 12, 68, 67, 65, 66, 71, 72, 70, 69, 77, 78, 80, 79, 74, 73, 75, 76, 52, 51, 49, 50, 55, 56, 54, 53, 61, 62, 64, 63, 58, 57, 59, 60], [62, 56, 59, 49, 52, 58, 53, 63, 51, 57, 54, 64, 61, 55, 60, 50, 78, 72, 75, 65, 68, 74, 69, 79, 67, 73, 70, 80, 77, 71, 76, 66, 14, 8, 11, 1, 4, 10, 5, 15, 3, 9, 6, 16, 13, 7, 12, 2, 30, 24, 27, 17, 20, 26, 21, 31, 19, 25, 22, 32, 29, 23, 28, 18, 46, 40, 43, 33, 36, 42, 37, 47, 35, 41, 38, 48, 45, 39, 44, 34, 142, 136, 139, 129, 132, 138, 133, 143, 131, 137, 134, 144, 141, 135, 140, 130, 158, 152, 155, 145, 148, 154, 149, 159, 147, 153, 150, 160, 157, 151, 156, 146, 94, 88, 91, 81, 84, 90, 85, 95, 83, 89, 86, 96, 93, 87, 92, 82, 110, 104, 107, 97, 100, 106, 101, 111, 99, 105, 102, 112, 109, 103, 108, 98, 126, 120, 123, 113, 116, 122, 117, 127, 115, 121, 118, 128, 125, 119, 124, 114]];
cc:=[5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[81, 91, 94, 88, 85, 95, 90, 84, 93, 87, 82, 92, 89, 83, 86, 96, 145, 155, 158, 152, 149, 159, 154, 148, 157, 151, 146, 156, 153, 147, 150, 160, 129, 139, 142, 136, 133, 143, 138, 132, 141, 135, 130, 140, 137, 131, 134, 144, 113, 123, 126, 120, 117, 127, 122, 116, 125, 119, 114, 124, 121, 115, 118, 128, 97, 107, 110, 104, 101, 111, 106, 100, 109, 103, 98, 108, 105, 99, 102, 112, 1, 11, 14, 8, 5, 15, 10, 4, 13, 7, 2, 12, 9, 3, 6, 16, 65, 75, 78, 72, 69, 79, 74, 68, 77, 71, 66, 76, 73, 67, 70, 80, 49, 59, 62, 56, 53, 63, 58, 52, 61, 55, 50, 60, 57, 51, 54, 64, 33, 43, 46, 40, 37, 47, 42, 36, 45, 39, 34, 44, 41, 35, 38, 48, 17, 27, 30, 24, 21, 31, 26, 20, 29, 23, 18, 28, 25, 19, 22, 32], [152, 156, 145, 157, 159, 147, 154, 150, 160, 148, 153, 149, 151, 155, 146, 158, 136, 140, 129, 141, 143, 131, 138, 134, 144, 132, 137, 133, 135, 139, 130, 142, 120, 124, 113, 125, 127, 115, 122, 118, 128, 116, 121, 117, 119, 123, 114, 126, 104, 108, 97, 109, 111, 99, 106, 102, 112, 100, 105, 101, 103, 107, 98, 110, 88, 92, 81, 93, 95, 83, 90, 86, 96, 84, 89, 85, 87, 91, 82, 94, 72, 76, 65, 77, 79, 67, 74, 70, 80, 68, 73, 69, 71, 75, 66, 78, 56, 60, 49, 61, 63, 51, 58, 54, 64, 52, 57, 53, 55, 59, 50, 62, 40, 44, 33, 45, 47, 35, 42, 38, 48, 36, 41, 37, 39, 43, 34, 46, 24, 28, 17, 29, 31, 19, 26, 22, 32, 20, 25, 21, 23, 27, 18, 30, 8, 12, 1, 13, 15, 3, 10, 6, 16, 4, 9, 5, 7, 11, 2, 14], [30, 22, 31, 23, 28, 20, 25, 17, 18, 26, 19, 27, 24, 32, 21, 29, 46, 38, 47, 39, 44, 36, 41, 33, 34, 42, 35, 43, 40, 48, 37, 45, 62, 54, 63, 55, 60, 52, 57, 49, 50, 58, 51, 59, 56, 64, 53, 61, 78, 70, 79, 71, 76, 68, 73, 65, 66, 74, 67, 75, 72, 80, 69, 77, 14, 6, 15, 7, 12, 4, 9, 1, 2, 10, 3, 11, 8, 16, 5, 13, 110, 102, 111, 103, 108, 100, 105, 97, 98, 106, 99, 107, 104, 112, 101, 109, 126, 118, 127, 119, 124, 116, 121, 113, 114, 122, 115, 123, 120, 128, 117, 125, 142, 134, 143, 135, 140, 132, 137, 129, 130, 138, 131, 139, 136, 144, 133, 141, 158, 150, 159, 151, 156, 148, 153, 145, 146, 154, 147, 155, 152, 160, 149, 157, 94, 86, 95, 87, 92, 84, 89, 81, 82, 90, 83, 91, 88, 96, 85, 93]];
cc:=[5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[81, 91, 94, 88, 85, 95, 90, 84, 93, 87, 82, 92, 89, 83, 86, 96, 145, 155, 158, 152, 149, 159, 154, 148, 157, 151, 146, 156, 153, 147, 150, 160, 129, 139, 142, 136, 133, 143, 138, 132, 141, 135, 130, 140, 137, 131, 134, 144, 113, 123, 126, 120, 117, 127, 122, 116, 125, 119, 114, 124, 121, 115, 118, 128, 97, 107, 110, 104, 101, 111, 106, 100, 109, 103, 98, 108, 105, 99, 102, 112, 1, 11, 14, 8, 5, 15, 10, 4, 13, 7, 2, 12, 9, 3, 6, 16, 65, 75, 78, 72, 69, 79, 74, 68, 77, 71, 66, 76, 73, 67, 70, 80, 49, 59, 62, 56, 53, 63, 58, 52, 61, 55, 50, 60, 57, 51, 54, 64, 33, 43, 46, 40, 37, 47, 42, 36, 45, 39, 34, 44, 41, 35, 38, 48, 17, 27, 30, 24, 21, 31, 26, 20, 29, 23, 18, 28, 25, 19, 22, 32], [124, 123, 121, 122, 127, 128, 126, 125, 117, 118, 120, 119, 114, 113, 115, 116, 108, 107, 105, 106, 111, 112, 110, 109, 101, 102, 104, 103, 98, 97, 99, 100, 92, 91, 89, 90, 95, 96, 94, 93, 85, 86, 88, 87, 82, 81, 83, 84, 156, 155, 153, 154, 159, 160, 158, 157, 149, 150, 152, 151, 146, 145, 147, 148, 140, 139, 137, 138, 143, 144, 142, 141, 133, 134, 136, 135, 130, 129, 131, 132, 44, 43, 41, 42, 47, 48, 46, 45, 37, 38, 40, 39, 34, 33, 35, 36, 28, 27, 25, 26, 31, 32, 30, 29, 21, 22, 24, 23, 18, 17, 19, 20, 12, 11, 9, 10, 15, 16, 14, 13, 5, 6, 8, 7, 2, 1, 3, 4, 76, 75, 73, 74, 79, 80, 78, 77, 69, 70, 72, 71, 66, 65, 67, 68, 60, 59, 57, 58, 63, 64, 62, 61, 53, 54, 56, 55, 50, 49, 51, 52], [51, 57, 54, 64, 61, 55, 60, 50, 62, 56, 59, 49, 52, 58, 53, 63, 67, 73, 70, 80, 77, 71, 76, 66, 78, 72, 75, 65, 68, 74, 69, 79, 3, 9, 6, 16, 13, 7, 12, 2, 14, 8, 11, 1, 4, 10, 5, 15, 19, 25, 22, 32, 29, 23, 28, 18, 30, 24, 27, 17, 20, 26, 21, 31, 35, 41, 38, 48, 45, 39, 44, 34, 46, 40, 43, 33, 36, 42, 37, 47, 131, 137, 134, 144, 141, 135, 140, 130, 142, 136, 139, 129, 132, 138, 133, 143, 147, 153, 150, 160, 157, 151, 156, 146, 158, 152, 155, 145, 148, 154, 149, 159, 83, 89, 86, 96, 93, 87, 92, 82, 94, 88, 91, 81, 84, 90, 85, 95, 99, 105, 102, 112, 109, 103, 108, 98, 110, 104, 107, 97, 100, 106, 101, 111, 115, 121, 118, 128, 125, 119, 124, 114, 126, 120, 123, 113, 116, 122, 117, 127]];
cc:=[5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.20-1.0.4-4-10
// Create group as a permutation group and initialize signature information.
gp_id:=[20,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,10];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [15, 14, 13, 12, 11, 20, 19, 18, 17, 16, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 17, 18, 19, 20, 16, 12, 13, 14, 15, 11]];
cc:=[3,3,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[40,5];
full_sign:=[0,2,4,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [13, 12, 11, 15, 14, 18, 17, 16, 20, 19, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 19, 20, 16, 17, 18, 14, 15, 11, 12, 13]];
cc:=[3,3,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[40,5];
full_sign:=[0,2,4,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 20, 19, 18, 17, 11, 15, 14, 13, 12, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 5, 4, 3, 2, 1, 10, 9, 8, 7, 6], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 17, 18, 19, 20, 16, 12, 13, 14, 15, 11]];
cc:=[4,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[40,5];
full_sign:=[0,2,4,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 20, 19, 18, 17, 11, 15, 14, 13, 12, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 3, 2, 1, 5, 4, 8, 7, 6, 10, 9], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 19, 20, 16, 17, 18, 14, 15, 11, 12, 13]];
cc:=[4,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[40,5];
full_sign:=[0,2,4,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.96-3.0.3-3-4
// Create group as a permutation group and initialize signature information.
gp_id:=[96,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[33, 34, 40, 39, 36, 35, 37, 38, 59, 60, 62, 61, 58, 57, 63, 64, 41, 42, 48, 47, 44, 43, 45, 46, 56, 55, 49, 50, 53, 54, 52, 51, 65, 66, 72, 71, 68, 67, 69, 70, 91, 92, 94, 93, 90, 89, 95, 96, 73, 74, 80, 79, 76, 75, 77, 78, 88, 87, 81, 82, 85, 86, 84, 83, 1, 2, 8, 7, 4, 3, 5, 6, 27, 28, 30, 29, 26, 25, 31, 32, 9, 10, 16, 15, 12, 11, 13, 14, 24, 23, 17, 18, 21, 22, 20, 19], [90, 89, 93, 94, 96, 95, 91, 92, 80, 79, 75, 76, 74, 73, 77, 78, 65, 66, 70, 69, 71, 72, 68, 67, 82, 81, 85, 86, 88, 87, 83, 84, 26, 25, 29, 30, 32, 31, 27, 28, 16, 15, 11, 12, 10, 9, 13, 14, 1, 2, 6, 5, 7, 8, 4, 3, 18, 17, 21, 22, 24, 23, 19, 20, 58, 57, 61, 62, 64, 63, 59, 60, 48, 47, 43, 44, 42, 41, 45, 46, 33, 34, 38, 37, 39, 40, 36, 35, 50, 49, 53, 54, 56, 55, 51, 52], [27, 28, 25, 26, 31, 32, 29, 30, 24, 23, 22, 21, 20, 19, 18, 17, 13, 14, 15, 16, 9, 10, 11, 12, 2, 1, 4, 3, 6, 5, 8, 7, 59, 60, 57, 58, 63, 64, 61, 62, 56, 55, 54, 53, 52, 51, 50, 49, 45, 46, 47, 48, 41, 42, 43, 44, 34, 33, 36, 35, 38, 37, 40, 39, 91, 92, 89, 90, 95, 96, 93, 94, 88, 87, 86, 85, 84, 83, 82, 81, 77, 78, 79, 80, 73, 74, 75, 76, 66, 65, 68, 67, 70, 69, 72, 71]];
cc:=[5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[33, 34, 40, 39, 36, 35, 37, 38, 59, 60, 62, 61, 58, 57, 63, 64, 41, 42, 48, 47, 44, 43, 45, 46, 56, 55, 49, 50, 53, 54, 52, 51, 65, 66, 72, 71, 68, 67, 69, 70, 91, 92, 94, 93, 90, 89, 95, 96, 73, 74, 80, 79, 76, 75, 77, 78, 88, 87, 81, 82, 85, 86, 84, 83, 1, 2, 8, 7, 4, 3, 5, 6, 27, 28, 30, 29, 26, 25, 31, 32, 9, 10, 16, 15, 12, 11, 13, 14, 24, 23, 17, 18, 21, 22, 20, 19], [92, 91, 95, 96, 94, 93, 89, 90, 78, 77, 73, 74, 76, 75, 79, 80, 67, 68, 72, 71, 69, 70, 66, 65, 84, 83, 87, 88, 86, 85, 81, 82, 28, 27, 31, 32, 30, 29, 25, 26, 14, 13, 9, 10, 12, 11, 15, 16, 3, 4, 8, 7, 5, 6, 2, 1, 20, 19, 23, 24, 22, 21, 17, 18, 60, 59, 63, 64, 62, 61, 57, 58, 46, 45, 41, 42, 44, 43, 47, 48, 35, 36, 40, 39, 37, 38, 34, 33, 52, 51, 55, 56, 54, 53, 49, 50], [25, 26, 27, 28, 29, 30, 31, 32, 22, 21, 24, 23, 18, 17, 20, 19, 15, 16, 13, 14, 11, 12, 9, 10, 4, 3, 2, 1, 8, 7, 6, 5, 57, 58, 59, 60, 61, 62, 63, 64, 54, 53, 56, 55, 50, 49, 52, 51, 47, 48, 45, 46, 43, 44, 41, 42, 36, 35, 34, 33, 40, 39, 38, 37, 89, 90, 91, 92, 93, 94, 95, 96, 86, 85, 88, 87, 82, 81, 84, 83, 79, 80, 77, 78, 75, 76, 73, 74, 68, 67, 66, 65, 72, 71, 70, 69]];
cc:=[5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[33, 34, 40, 39, 36, 35, 37, 38, 59, 60, 62, 61, 58, 57, 63, 64, 41, 42, 48, 47, 44, 43, 45, 46, 56, 55, 49, 50, 53, 54, 52, 51, 65, 66, 72, 71, 68, 67, 69, 70, 91, 92, 94, 93, 90, 89, 95, 96, 73, 74, 80, 79, 76, 75, 77, 78, 88, 87, 81, 82, 85, 86, 84, 83, 1, 2, 8, 7, 4, 3, 5, 6, 27, 28, 30, 29, 26, 25, 31, 32, 9, 10, 16, 15, 12, 11, 13, 14, 24, 23, 17, 18, 21, 22, 20, 19], [95, 96, 92, 91, 89, 90, 94, 93, 73, 74, 78, 77, 79, 80, 76, 75, 72, 71, 67, 68, 66, 65, 69, 70, 87, 88, 84, 83, 81, 82, 86, 85, 31, 32, 28, 27, 25, 26, 30, 29, 9, 10, 14, 13, 15, 16, 12, 11, 8, 7, 3, 4, 2, 1, 5, 6, 23, 24, 20, 19, 17, 18, 22, 21, 63, 64, 60, 59, 57, 58, 62, 61, 41, 42, 46, 45, 47, 48, 44, 43, 40, 39, 35, 36, 34, 33, 37, 38, 55, 56, 52, 51, 49, 50, 54, 53], [30, 29, 32, 31, 26, 25, 28, 27, 17, 18, 19, 20, 21, 22, 23, 24, 12, 11, 10, 9, 16, 15, 14, 13, 7, 8, 5, 6, 3, 4, 1, 2, 62, 61, 64, 63, 58, 57, 60, 59, 49, 50, 51, 52, 53, 54, 55, 56, 44, 43, 42, 41, 48, 47, 46, 45, 39, 40, 37, 38, 35, 36, 33, 34, 94, 93, 96, 95, 90, 89, 92, 91, 81, 82, 83, 84, 85, 86, 87, 88, 76, 75, 74, 73, 80, 79, 78, 77, 71, 72, 69, 70, 67, 68, 65, 66]];
cc:=[5,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[33, 34, 40, 39, 36, 35, 37, 38, 59, 60, 62, 61, 58, 57, 63, 64, 41, 42, 48, 47, 44, 43, 45, 46, 56, 55, 49, 50, 53, 54, 52, 51, 65, 66, 72, 71, 68, 67, 69, 70, 91, 92, 94, 93, 90, 89, 95, 96, 73, 74, 80, 79, 76, 75, 77, 78, 88, 87, 81, 82, 85, 86, 84, 83, 1, 2, 8, 7, 4, 3, 5, 6, 27, 28, 30, 29, 26, 25, 31, 32, 9, 10, 16, 15, 12, 11, 13, 14, 24, 23, 17, 18, 21, 22, 20, 19], [93, 94, 90, 89, 91, 92, 96, 95, 75, 76, 80, 79, 77, 78, 74, 73, 70, 69, 65, 66, 68, 67, 71, 72, 85, 86, 82, 81, 83, 84, 88, 87, 29, 30, 26, 25, 27, 28, 32, 31, 11, 12, 16, 15, 13, 14, 10, 9, 6, 5, 1, 2, 4, 3, 7, 8, 21, 22, 18, 17, 19, 20, 24, 23, 61, 62, 58, 57, 59, 60, 64, 63, 43, 44, 48, 47, 45, 46, 42, 41, 38, 37, 33, 34, 36, 35, 39, 40, 53, 54, 50, 49, 51, 52, 56, 55], [32, 31, 30, 29, 28, 27, 26, 25, 19, 20, 17, 18, 23, 24, 21, 22, 10, 9, 12, 11, 14, 13, 16, 15, 5, 6, 7, 8, 1, 2, 3, 4, 64, 63, 62, 61, 60, 59, 58, 57, 51, 52, 49, 50, 55, 56, 53, 54, 42, 41, 44, 43, 46, 45, 48, 47, 37, 38, 39, 40, 33, 34, 35, 36, 96, 95, 94, 93, 92, 91, 90, 89, 83, 84, 81, 82, 87, 88, 85, 86, 74, 73, 76, 75, 78, 77, 80, 79, 69, 70, 71, 72, 65, 66, 67, 68]];
cc:=[5,6,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.24-9.0.2-12-12
// Create group as a permutation group and initialize signature information.
gp_id:=[24,9];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,12,12];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [15, 16, 17, 18, 13, 14, 21, 22, 23, 24, 19, 20, 4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [24, 23, 20, 19, 22, 21, 18, 17, 14, 13, 16, 15, 11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4]];
cc:=[3,17,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [17, 18, 13, 14, 15, 16, 23, 24, 19, 20, 21, 22, 6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9], [22, 21, 24, 23, 20, 19, 16, 15, 18, 17, 14, 13, 9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2]];
cc:=[3,18,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [16, 15, 18, 17, 14, 13, 22, 21, 24, 23, 20, 19, 3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16, 12, 11, 8, 7, 10, 9, 6, 5, 2, 1, 4, 3]];
cc:=[3,19,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [18, 17, 14, 13, 16, 15, 24, 23, 20, 19, 22, 21, 5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14, 10, 9, 12, 11, 8, 7, 4, 3, 6, 5, 2, 1]];
cc:=[3,20,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 18, 17], [15, 16, 17, 18, 13, 14, 21, 22, 23, 24, 19, 20, 4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [23, 24, 19, 20, 21, 22, 17, 18, 13, 14, 15, 16, 12, 11, 8, 7, 10, 9, 6, 5, 2, 1, 4, 3]];
cc:=[4,17,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 18, 17], [17, 18, 13, 14, 15, 16, 23, 24, 19, 20, 21, 22, 6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9], [21, 22, 23, 24, 19, 20, 15, 16, 17, 18, 13, 14, 10, 9, 12, 11, 8, 7, 4, 3, 6, 5, 2, 1]];
cc:=[4,18,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 18, 17], [16, 15, 18, 17, 14, 13, 22, 21, 24, 23, 20, 19, 3, 4, 5, 6, 1, 2, 9, 10, 11, 12, 7, 8], [24, 23, 20, 19, 22, 21, 18, 17, 14, 13, 16, 15, 11, 12, 7, 8, 9, 10, 5, 6, 1, 2, 3, 4]];
cc:=[4,19,24];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 10, 9, 12, 11, 2, 1, 4, 3, 6, 5, 20, 19, 22, 21, 24, 23, 14, 13, 16, 15, 18, 17], [18, 17, 14, 13, 16, 15, 24, 23, 20, 19, 22, 21, 5, 6, 1, 2, 3, 4, 11, 12, 7, 8, 9, 10], [22, 21, 24, 23, 20, 19, 16, 15, 18, 17, 14, 13, 9, 10, 11, 12, 7, 8, 3, 4, 5, 6, 1, 2]];
cc:=[4,20,23];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.22-2.0.2-11-22
// Create group as a permutation group and initialize signature information.
gp_id:=[22,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,11,22];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 12], [22, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[2,3,22];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 2, 14, 15, 16, 17, 18, 19, 20, 21, 22, 12, 13], [21, 22, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 11, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[2,4,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [4, 5, 6, 7, 8, 9, 10, 11, 1, 2, 3, 15, 16, 17, 18, 19, 20, 21, 22, 12, 13, 14], [20, 21, 22, 12, 13, 14, 15, 16, 17, 18, 19, 9, 10, 11, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,5,21];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [5, 6, 7, 8, 9, 10, 11, 1, 2, 3, 4, 16, 17, 18, 19, 20, 21, 22, 12, 13, 14, 15], [19, 20, 21, 22, 12, 13, 14, 15, 16, 17, 18, 8, 9, 10, 11, 1, 2, 3, 4, 5, 6, 7]];
cc:=[2,6,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [6, 7, 8, 9, 10, 11, 1, 2, 3, 4, 5, 17, 18, 19, 20, 21, 22, 12, 13, 14, 15, 16], [18, 19, 20, 21, 22, 12, 13, 14, 15, 16, 17, 7, 8, 9, 10, 11, 1, 2, 3, 4, 5, 6]];
cc:=[2,7,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [7, 8, 9, 10, 11, 1, 2, 3, 4, 5, 6, 18, 19, 20, 21, 22, 12, 13, 14, 15, 16, 17], [17, 18, 19, 20, 21, 22, 12, 13, 14, 15, 16, 6, 7, 8, 9, 10, 11, 1, 2, 3, 4, 5]];
cc:=[2,8,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [8, 9, 10, 11, 1, 2, 3, 4, 5, 6, 7, 19, 20, 21, 22, 12, 13, 14, 15, 16, 17, 18], [16, 17, 18, 19, 20, 21, 22, 12, 13, 14, 15, 5, 6, 7, 8, 9, 10, 11, 1, 2, 3, 4]];
cc:=[2,9,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [9, 10, 11, 1, 2, 3, 4, 5, 6, 7, 8, 20, 21, 22, 12, 13, 14, 15, 16, 17, 18, 19], [15, 16, 17, 18, 19, 20, 21, 22, 12, 13, 14, 4, 5, 6, 7, 8, 9, 10, 11, 1, 2, 3]];
cc:=[2,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [10, 11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 21, 22, 12, 13, 14, 15, 16, 17, 18, 19, 20], [14, 15, 16, 17, 18, 19, 20, 21, 22, 12, 13, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 2]];
cc:=[2,11,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], [11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 22, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21], [13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 12, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1]];
cc:=[2,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.20-2.0.2-20-20
// Create group as a permutation group and initialize signature information.
gp_id:=[20,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,20,20];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19], [13, 14, 15, 16, 17, 18, 19, 20, 11, 12, 4, 3, 6, 5, 8, 7, 10, 9, 2, 1], [19, 20, 11, 12, 13, 14, 15, 16, 17, 18, 10, 9, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[2,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[40,5];
full_sign:=[0,2,4,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19], [18, 17, 20, 19, 12, 11, 14, 13, 16, 15, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6], [16, 15, 18, 17, 20, 19, 12, 11, 14, 13, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4]];
cc:=[2,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[40,5];
full_sign:=[0,2,4,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19], [14, 13, 16, 15, 18, 17, 20, 19, 12, 11, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2], [20, 19, 12, 11, 14, 13, 16, 15, 18, 17, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,17,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[40,5];
full_sign:=[0,2,4,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19], [17, 18, 19, 20, 11, 12, 13, 14, 15, 16, 8, 7, 10, 9, 2, 1, 4, 3, 6, 5], [15, 16, 17, 18, 19, 20, 11, 12, 13, 14, 6, 5, 8, 7, 10, 9, 2, 1, 4, 3]];
cc:=[2,18,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[40,5];
full_sign:=[0,2,4,20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.24-7.0.4-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,7];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,6];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1, 23, 24, 22, 20, 21, 19, 17, 18, 16, 14, 15, 13]];
cc:=[6,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4, 20, 21, 19, 23, 24, 22, 14, 15, 13, 17, 18, 16]];
cc:=[6,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4, 20, 21, 19, 23, 24, 22, 14, 15, 13, 17, 18, 16]];
cc:=[7,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1, 23, 24, 22, 20, 21, 19, 17, 18, 16, 14, 15, 13]];
cc:=[7,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.24-13.0.3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,13];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,6,6];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15], [19, 18, 20, 17, 23, 22, 24, 21, 15, 14, 16, 13, 7, 6, 8, 5, 11, 10, 12, 9, 3, 2, 4, 1], [18, 19, 17, 20, 22, 23, 21, 24, 14, 15, 13, 16, 6, 7, 5, 8, 10, 11, 9, 12, 2, 3, 1, 4]];
cc:=[5,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[96,195];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6, 21, 23, 24, 22, 13, 15, 16, 14, 17, 19, 20, 18], [24, 22, 21, 23, 16, 14, 13, 15, 20, 18, 17, 19, 12, 10, 9, 11, 4, 2, 1, 3, 8, 6, 5, 7], [22, 24, 23, 21, 14, 16, 15, 13, 18, 20, 19, 17, 10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5]];
cc:=[6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[96,195];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.80-49.0.2-5-5
// Create group as a permutation group and initialize signature information.
gp_id:=[80,49];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,5,5];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63, 66, 65, 68, 67, 70, 69, 72, 71, 74, 73, 76, 75, 78, 77, 80, 79], [17, 32, 30, 19, 26, 23, 21, 28, 18, 31, 29, 20, 25, 24, 22, 27, 33, 48, 46, 35, 42, 39, 37, 44, 34, 47, 45, 36, 41, 40, 38, 43, 49, 64, 62, 51, 58, 55, 53, 60, 50, 63, 61, 52, 57, 56, 54, 59, 65, 80, 78, 67, 74, 71, 69, 76, 66, 79, 77, 68, 73, 72, 70, 75, 1, 16, 14, 3, 10, 7, 5, 12, 2, 15, 13, 4, 9, 8, 6, 11], [66, 74, 67, 75, 72, 80, 69, 77, 78, 70, 79, 71, 76, 68, 73, 65, 2, 10, 3, 11, 8, 16, 5, 13, 14, 6, 15, 7, 12, 4, 9, 1, 18, 26, 19, 27, 24, 32, 21, 29, 30, 22, 31, 23, 28, 20, 25, 17, 34, 42, 35, 43, 40, 48, 37, 45, 46, 38, 47, 39, 44, 36, 41, 33, 50, 58, 51, 59, 56, 64, 53, 61, 62, 54, 63, 55, 60, 52, 57, 49]];
cc:=[2,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[160,234];
full_sign:=[0,2,4,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 50, 49, 52, 51, 54, 53, 56, 55, 58, 57, 60, 59, 62, 61, 64, 63, 66, 65, 68, 67, 70, 69, 72, 71, 74, 73, 76, 75, 78, 77, 80, 79], [33, 43, 40, 46, 47, 37, 42, 36, 48, 38, 41, 35, 34, 44, 39, 45, 49, 59, 56, 62, 63, 53, 58, 52, 64, 54, 57, 51, 50, 60, 55, 61, 65, 75, 72, 78, 79, 69, 74, 68, 80, 70, 73, 67, 66, 76, 71, 77, 1, 11, 8, 14, 15, 5, 10, 4, 16, 6, 9, 3, 2, 12, 7, 13, 17, 27, 24, 30, 31, 21, 26, 20, 32, 22, 25, 19, 18, 28, 23, 29], [50, 62, 59, 55, 53, 57, 64, 52, 60, 56, 49, 61, 63, 51, 54, 58, 66, 78, 75, 71, 69, 73, 80, 68, 76, 72, 65, 77, 79, 67, 70, 74, 2, 14, 11, 7, 5, 9, 16, 4, 12, 8, 1, 13, 15, 3, 6, 10, 18, 30, 27, 23, 21, 25, 32, 20, 28, 24, 17, 29, 31, 19, 22, 26, 34, 46, 43, 39, 37, 41, 48, 36, 44, 40, 33, 45, 47, 35, 38, 42]];
cc:=[2,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[160,234];
full_sign:=[0,2,4,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22, 27, 28, 25, 26, 31, 32, 29, 30, 35, 36, 33, 34, 39, 40, 37, 38, 43, 44, 41, 42, 47, 48, 45, 46, 51, 52, 49, 50, 55, 56, 53, 54, 59, 60, 57, 58, 63, 64, 61, 62, 67, 68, 65, 66, 71, 72, 69, 70, 75, 76, 73, 74, 79, 80, 77, 78], [17, 32, 30, 19, 26, 23, 21, 28, 18, 31, 29, 20, 25, 24, 22, 27, 33, 48, 46, 35, 42, 39, 37, 44, 34, 47, 45, 36, 41, 40, 38, 43, 49, 64, 62, 51, 58, 55, 53, 60, 50, 63, 61, 52, 57, 56, 54, 59, 65, 80, 78, 67, 74, 71, 69, 76, 66, 79, 77, 68, 73, 72, 70, 75, 1, 16, 14, 3, 10, 7, 5, 12, 2, 15, 13, 4, 9, 8, 6, 11], [67, 75, 66, 74, 69, 77, 72, 80, 79, 71, 78, 70, 73, 65, 76, 68, 3, 11, 2, 10, 5, 13, 8, 16, 15, 7, 14, 6, 9, 1, 12, 4, 19, 27, 18, 26, 21, 29, 24, 32, 31, 23, 30, 22, 25, 17, 28, 20, 35, 43, 34, 42, 37, 45, 40, 48, 47, 39, 46, 38, 41, 33, 44, 36, 51, 59, 50, 58, 53, 61, 56, 64, 63, 55, 62, 54, 57, 49, 60, 52]];
cc:=[3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[160,234];
full_sign:=[0,2,4,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14, 19, 20, 17, 18, 23, 24, 21, 22, 27, 28, 25, 26, 31, 32, 29, 30, 35, 36, 33, 34, 39, 40, 37, 38, 43, 44, 41, 42, 47, 48, 45, 46, 51, 52, 49, 50, 55, 56, 53, 54, 59, 60, 57, 58, 63, 64, 61, 62, 67, 68, 65, 66, 71, 72, 69, 70, 75, 76, 73, 74, 79, 80, 77, 78], [33, 43, 40, 46, 47, 37, 42, 36, 48, 38, 41, 35, 34, 44, 39, 45, 49, 59, 56, 62, 63, 53, 58, 52, 64, 54, 57, 51, 50, 60, 55, 61, 65, 75, 72, 78, 79, 69, 74, 68, 80, 70, 73, 67, 66, 76, 71, 77, 1, 11, 8, 14, 15, 5, 10, 4, 16, 6, 9, 3, 2, 12, 7, 13, 17, 27, 24, 30, 31, 21, 26, 20, 32, 22, 25, 19, 18, 28, 23, 29], [51, 63, 58, 54, 56, 60, 61, 49, 57, 53, 52, 64, 62, 50, 55, 59, 67, 79, 74, 70, 72, 76, 77, 65, 73, 69, 68, 80, 78, 66, 71, 75, 3, 15, 10, 6, 8, 12, 13, 1, 9, 5, 4, 16, 14, 2, 7, 11, 19, 31, 26, 22, 24, 28, 29, 17, 25, 21, 20, 32, 30, 18, 23, 27, 35, 47, 42, 38, 40, 44, 45, 33, 41, 37, 36, 48, 46, 34, 39, 43]];
cc:=[3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[160,234];
full_sign:=[0,2,4,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60, 69, 70, 71, 72, 65, 66, 67, 68, 77, 78, 79, 80, 73, 74, 75, 76], [17, 32, 30, 19, 26, 23, 21, 28, 18, 31, 29, 20, 25, 24, 22, 27, 33, 48, 46, 35, 42, 39, 37, 44, 34, 47, 45, 36, 41, 40, 38, 43, 49, 64, 62, 51, 58, 55, 53, 60, 50, 63, 61, 52, 57, 56, 54, 59, 65, 80, 78, 67, 74, 71, 69, 76, 66, 79, 77, 68, 73, 72, 70, 75, 1, 16, 14, 3, 10, 7, 5, 12, 2, 15, 13, 4, 9, 8, 6, 11], [69, 77, 72, 80, 67, 75, 66, 74, 73, 65, 76, 68, 79, 71, 78, 70, 5, 13, 8, 16, 3, 11, 2, 10, 9, 1, 12, 4, 15, 7, 14, 6, 21, 29, 24, 32, 19, 27, 18, 26, 25, 17, 28, 20, 31, 23, 30, 22, 37, 45, 40, 48, 35, 43, 34, 42, 41, 33, 44, 36, 47, 39, 46, 38, 53, 61, 56, 64, 51, 59, 50, 58, 57, 49, 60, 52, 63, 55, 62, 54]];
cc:=[4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[160,234];
full_sign:=[0,2,4,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28, 37, 38, 39, 40, 33, 34, 35, 36, 45, 46, 47, 48, 41, 42, 43, 44, 53, 54, 55, 56, 49, 50, 51, 52, 61, 62, 63, 64, 57, 58, 59, 60, 69, 70, 71, 72, 65, 66, 67, 68, 77, 78, 79, 80, 73, 74, 75, 76], [33, 43, 40, 46, 47, 37, 42, 36, 48, 38, 41, 35, 34, 44, 39, 45, 49, 59, 56, 62, 63, 53, 58, 52, 64, 54, 57, 51, 50, 60, 55, 61, 65, 75, 72, 78, 79, 69, 74, 68, 80, 70, 73, 67, 66, 76, 71, 77, 1, 11, 8, 14, 15, 5, 10, 4, 16, 6, 9, 3, 2, 12, 7, 13, 17, 27, 24, 30, 31, 21, 26, 20, 32, 22, 25, 19, 18, 28, 23, 29], [53, 57, 64, 52, 50, 62, 59, 55, 63, 51, 54, 58, 60, 56, 49, 61, 69, 73, 80, 68, 66, 78, 75, 71, 79, 67, 70, 74, 76, 72, 65, 77, 5, 9, 16, 4, 2, 14, 11, 7, 15, 3, 6, 10, 12, 8, 1, 13, 21, 25, 32, 20, 18, 30, 27, 23, 31, 19, 22, 26, 28, 24, 17, 29, 37, 41, 48, 36, 34, 46, 43, 39, 47, 35, 38, 42, 44, 40, 33, 45]];
cc:=[4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[160,234];
full_sign:=[0,2,4,5];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.64-8.0.2-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[64,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,8];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 24, 23, 22, 21, 26, 25, 28, 27, 31, 32, 29, 30, 1, 2, 3, 4, 8, 7, 6, 5, 10, 9, 12, 11, 15, 16, 13, 14, 49, 50, 51, 52, 56, 55, 54, 53, 58, 57, 60, 59, 63, 64, 61, 62, 33, 34, 35, 36, 40, 39, 38, 37, 42, 41, 44, 43, 47, 48, 45, 46], [35, 36, 33, 34, 39, 40, 37, 38, 41, 42, 43, 44, 45, 46, 47, 48, 59, 60, 57, 58, 63, 64, 61, 62, 50, 49, 52, 51, 54, 53, 56, 55, 7, 8, 5, 6, 3, 4, 1, 2, 13, 14, 15, 16, 9, 10, 11, 12, 30, 29, 32, 31, 26, 25, 28, 27, 23, 24, 21, 22, 19, 20, 17, 18], [54, 53, 56, 55, 51, 52, 49, 50, 63, 64, 61, 62, 58, 57, 60, 59, 45, 46, 47, 48, 44, 43, 42, 41, 39, 40, 37, 38, 34, 33, 36, 35, 19, 20, 17, 18, 22, 21, 24, 23, 26, 25, 28, 27, 31, 32, 29, 30, 9, 10, 11, 12, 16, 15, 14, 13, 3, 4, 1, 2, 6, 5, 8, 7]];
cc:=[7,11,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 24, 23, 22, 21, 26, 25, 28, 27, 31, 32, 29, 30, 1, 2, 3, 4, 8, 7, 6, 5, 10, 9, 12, 11, 15, 16, 13, 14, 49, 50, 51, 52, 56, 55, 54, 53, 58, 57, 60, 59, 63, 64, 61, 62, 33, 34, 35, 36, 40, 39, 38, 37, 42, 41, 44, 43, 47, 48, 45, 46], [33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 41, 42, 47, 48, 45, 46, 57, 58, 59, 60, 61, 62, 63, 64, 52, 51, 50, 49, 56, 55, 54, 53, 5, 6, 7, 8, 1, 2, 3, 4, 15, 16, 13, 14, 11, 12, 9, 10, 32, 31, 30, 29, 28, 27, 26, 25, 21, 22, 23, 24, 17, 18, 19, 20], [56, 55, 54, 53, 49, 50, 51, 52, 61, 62, 63, 64, 60, 59, 58, 57, 47, 48, 45, 46, 42, 41, 44, 43, 37, 38, 39, 40, 36, 35, 34, 33, 17, 18, 19, 20, 24, 23, 22, 21, 28, 27, 26, 25, 29, 30, 31, 32, 11, 12, 9, 10, 14, 13, 16, 15, 1, 2, 3, 4, 8, 7, 6, 5]];
cc:=[7,11,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 24, 23, 22, 21, 26, 25, 28, 27, 31, 32, 29, 30, 1, 2, 3, 4, 8, 7, 6, 5, 10, 9, 12, 11, 15, 16, 13, 14, 49, 50, 51, 52, 56, 55, 54, 53, 58, 57, 60, 59, 63, 64, 61, 62, 33, 34, 35, 36, 40, 39, 38, 37, 42, 41, 44, 43, 47, 48, 45, 46], [37, 38, 39, 40, 33, 34, 35, 36, 47, 48, 45, 46, 43, 44, 41, 42, 61, 62, 63, 64, 57, 58, 59, 60, 56, 55, 54, 53, 52, 51, 50, 49, 1, 2, 3, 4, 5, 6, 7, 8, 11, 12, 9, 10, 15, 16, 13, 14, 28, 27, 26, 25, 32, 31, 30, 29, 17, 18, 19, 20, 21, 22, 23, 24], [49, 50, 51, 52, 56, 55, 54, 53, 60, 59, 58, 57, 61, 62, 63, 64, 42, 41, 44, 43, 47, 48, 45, 46, 36, 35, 34, 33, 37, 38, 39, 40, 24, 23, 22, 21, 17, 18, 19, 20, 29, 30, 31, 32, 28, 27, 26, 25, 14, 13, 16, 15, 11, 12, 9, 10, 8, 7, 6, 5, 1, 2, 3, 4]];
cc:=[7,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 24, 23, 22, 21, 26, 25, 28, 27, 31, 32, 29, 30, 1, 2, 3, 4, 8, 7, 6, 5, 10, 9, 12, 11, 15, 16, 13, 14, 49, 50, 51, 52, 56, 55, 54, 53, 58, 57, 60, 59, 63, 64, 61, 62, 33, 34, 35, 36, 40, 39, 38, 37, 42, 41, 44, 43, 47, 48, 45, 46], [39, 40, 37, 38, 35, 36, 33, 34, 45, 46, 47, 48, 41, 42, 43, 44, 63, 64, 61, 62, 59, 60, 57, 58, 54, 53, 56, 55, 50, 49, 52, 51, 3, 4, 1, 2, 7, 8, 5, 6, 9, 10, 11, 12, 13, 14, 15, 16, 26, 25, 28, 27, 30, 29, 32, 31, 19, 20, 17, 18, 23, 24, 21, 22], [51, 52, 49, 50, 54, 53, 56, 55, 58, 57, 60, 59, 63, 64, 61, 62, 44, 43, 42, 41, 45, 46, 47, 48, 34, 33, 36, 35, 39, 40, 37, 38, 22, 21, 24, 23, 19, 20, 17, 18, 31, 32, 29, 30, 26, 25, 28, 27, 16, 15, 14, 13, 9, 10, 11, 12, 6, 5, 8, 7, 3, 4, 1, 2]];
cc:=[7,12,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 24, 23, 22, 21, 26, 25, 28, 27, 31, 32, 29, 30, 1, 2, 3, 4, 8, 7, 6, 5, 10, 9, 12, 11, 15, 16, 13, 14, 49, 50, 51, 52, 56, 55, 54, 53, 58, 57, 60, 59, 63, 64, 61, 62, 33, 34, 35, 36, 40, 39, 38, 37, 42, 41, 44, 43, 47, 48, 45, 46], [34, 33, 36, 35, 38, 37, 40, 39, 44, 43, 42, 41, 48, 47, 46, 45, 58, 57, 60, 59, 62, 61, 64, 63, 51, 52, 49, 50, 55, 56, 53, 54, 6, 5, 8, 7, 2, 1, 4, 3, 16, 15, 14, 13, 12, 11, 10, 9, 31, 32, 29, 30, 27, 28, 25, 26, 22, 21, 24, 23, 18, 17, 20, 19], [55, 56, 53, 54, 50, 49, 52, 51, 62, 61, 64, 63, 59, 60, 57, 58, 48, 47, 46, 45, 41, 42, 43, 44, 38, 37, 40, 39, 35, 36, 33, 34, 18, 17, 20, 19, 23, 24, 21, 22, 27, 28, 25, 26, 30, 29, 32, 31, 12, 11, 10, 9, 13, 14, 15, 16, 2, 1, 4, 3, 7, 8, 5, 6]];
cc:=[7,13,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 24, 23, 22, 21, 26, 25, 28, 27, 31, 32, 29, 30, 1, 2, 3, 4, 8, 7, 6, 5, 10, 9, 12, 11, 15, 16, 13, 14, 49, 50, 51, 52, 56, 55, 54, 53, 58, 57, 60, 59, 63, 64, 61, 62, 33, 34, 35, 36, 40, 39, 38, 37, 42, 41, 44, 43, 47, 48, 45, 46], [36, 35, 34, 33, 40, 39, 38, 37, 42, 41, 44, 43, 46, 45, 48, 47, 60, 59, 58, 57, 64, 63, 62, 61, 49, 50, 51, 52, 53, 54, 55, 56, 8, 7, 6, 5, 4, 3, 2, 1, 14, 13, 16, 15, 10, 9, 12, 11, 29, 30, 31, 32, 25, 26, 27, 28, 24, 23, 22, 21, 20, 19, 18, 17], [53, 54, 55, 56, 52, 51, 50, 49, 64, 63, 62, 61, 57, 58, 59, 60, 46, 45, 48, 47, 43, 44, 41, 42, 40, 39, 38, 37, 33, 34, 35, 36, 20, 19, 18, 17, 21, 22, 23, 24, 25, 26, 27, 28, 32, 31, 30, 29, 10, 9, 12, 11, 15, 16, 13, 14, 4, 3, 2, 1, 5, 6, 7, 8]];
cc:=[7,13,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 24, 23, 22, 21, 26, 25, 28, 27, 31, 32, 29, 30, 1, 2, 3, 4, 8, 7, 6, 5, 10, 9, 12, 11, 15, 16, 13, 14, 49, 50, 51, 52, 56, 55, 54, 53, 58, 57, 60, 59, 63, 64, 61, 62, 33, 34, 35, 36, 40, 39, 38, 37, 42, 41, 44, 43, 47, 48, 45, 46], [40, 39, 38, 37, 36, 35, 34, 33, 46, 45, 48, 47, 42, 41, 44, 43, 64, 63, 62, 61, 60, 59, 58, 57, 53, 54, 55, 56, 49, 50, 51, 52, 4, 3, 2, 1, 8, 7, 6, 5, 10, 9, 12, 11, 14, 13, 16, 15, 25, 26, 27, 28, 29, 30, 31, 32, 20, 19, 18, 17, 24, 23, 22, 21], [52, 51, 50, 49, 53, 54, 55, 56, 57, 58, 59, 60, 64, 63, 62, 61, 43, 44, 41, 42, 46, 45, 48, 47, 33, 34, 35, 36, 40, 39, 38, 37, 21, 22, 23, 24, 20, 19, 18, 17, 32, 31, 30, 29, 25, 26, 27, 28, 15, 16, 13, 14, 10, 9, 12, 11, 5, 6, 7, 8, 4, 3, 2, 1]];
cc:=[7,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 24, 23, 22, 21, 26, 25, 28, 27, 31, 32, 29, 30, 1, 2, 3, 4, 8, 7, 6, 5, 10, 9, 12, 11, 15, 16, 13, 14, 49, 50, 51, 52, 56, 55, 54, 53, 58, 57, 60, 59, 63, 64, 61, 62, 33, 34, 35, 36, 40, 39, 38, 37, 42, 41, 44, 43, 47, 48, 45, 46], [38, 37, 40, 39, 34, 33, 36, 35, 48, 47, 46, 45, 44, 43, 42, 41, 62, 61, 64, 63, 58, 57, 60, 59, 55, 56, 53, 54, 51, 52, 49, 50, 2, 1, 4, 3, 6, 5, 8, 7, 12, 11, 10, 9, 16, 15, 14, 13, 27, 28, 25, 26, 31, 32, 29, 30, 18, 17, 20, 19, 22, 21, 24, 23], [50, 49, 52, 51, 55, 56, 53, 54, 59, 60, 57, 58, 62, 61, 64, 63, 41, 42, 43, 44, 48, 47, 46, 45, 35, 36, 33, 34, 38, 37, 40, 39, 23, 24, 21, 22, 18, 17, 20, 19, 30, 29, 32, 31, 27, 28, 25, 26, 13, 14, 15, 16, 12, 11, 10, 9, 7, 8, 5, 6, 2, 1, 4, 3]];
cc:=[7,14,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.30-2.0.2-6-15
// Create group as a permutation group and initialize signature information.
gp_id:=[30,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,15];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[16, 20, 19, 18, 17, 21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12], [23, 22, 21, 25, 24, 28, 27, 26, 30, 29, 18, 17, 16, 20, 19, 8, 7, 6, 10, 9, 13, 12, 11, 15, 14, 3, 2, 1, 5, 4], [14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 29, 30, 26, 27, 28, 19, 20, 16, 17, 18, 24, 25, 21, 22, 23]];
cc:=[2,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 16, 17, 18, 19, 20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[16, 20, 19, 18, 17, 21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12], [25, 24, 23, 22, 21, 30, 29, 28, 27, 26, 20, 19, 18, 17, 16, 10, 9, 8, 7, 6, 15, 14, 13, 12, 11, 5, 4, 3, 2, 1], [12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 27, 28, 29, 30, 26, 17, 18, 19, 20, 16, 22, 23, 24, 25, 21]];
cc:=[2,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 16, 17, 18, 19, 20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[16, 20, 19, 18, 17, 21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12], [30, 29, 28, 27, 26, 20, 19, 18, 17, 16, 25, 24, 23, 22, 21, 15, 14, 13, 12, 11, 5, 4, 3, 2, 1, 10, 9, 8, 7, 6], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 22, 23, 24, 25, 21, 27, 28, 29, 30, 26, 17, 18, 19, 20, 16]];
cc:=[2,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 16, 17, 18, 19, 20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[16, 20, 19, 18, 17, 21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12], [28, 27, 26, 30, 29, 18, 17, 16, 20, 19, 23, 22, 21, 25, 24, 13, 12, 11, 15, 14, 3, 2, 1, 5, 4, 8, 7, 6, 10, 9], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 24, 25, 21, 22, 23, 29, 30, 26, 27, 28, 19, 20, 16, 17, 18]];
cc:=[2,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 16, 17, 18, 19, 20];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 5.40-5.0.2-4-20
// Create group as a permutation group and initialize signature information.
gp_id:=[40,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,20];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17], [33, 32, 31, 35, 34, 38, 37, 36, 40, 39, 28, 27, 26, 30, 29, 23, 22, 21, 25, 24, 13, 12, 11, 15, 14, 18, 17, 16, 20, 19, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [19, 20, 16, 17, 18, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 39, 40, 36, 37, 38, 34, 35, 31, 32, 33, 24, 25, 21, 22, 23, 29, 30, 26, 27, 28]];
cc:=[3,7,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17], [35, 34, 33, 32, 31, 40, 39, 38, 37, 36, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 15, 14, 13, 12, 11, 20, 19, 18, 17, 16, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [17, 18, 19, 20, 16, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 37, 38, 39, 40, 36, 32, 33, 34, 35, 31, 22, 23, 24, 25, 21, 27, 28, 29, 30, 26]];
cc:=[3,7,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17], [40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 25, 24, 23, 22, 21, 30, 29, 28, 27, 26, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 5, 4, 3, 2, 1, 10, 9, 8, 7, 6], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 32, 33, 34, 35, 31, 37, 38, 39, 40, 36, 27, 28, 29, 30, 26, 22, 23, 24, 25, 21]];
cc:=[3,8,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[21, 25, 24, 23, 22, 26, 30, 29, 28, 27, 31, 35, 34, 33, 32, 36, 40, 39, 38, 37, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7, 11, 15, 14, 13, 12, 16, 20, 19, 18, 17], [38, 37, 36, 40, 39, 33, 32, 31, 35, 34, 23, 22, 21, 25, 24, 28, 27, 26, 30, 29, 18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 3, 2, 1, 5, 4, 8, 7, 6, 10, 9], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 34, 35, 31, 32, 33, 39, 40, 36, 37, 38, 29, 30, 26, 27, 28, 24, 25, 21, 22, 23]];
cc:=[3,8,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 21, 25, 24, 23, 22, 36, 40, 39, 38, 37, 31, 35, 34, 33, 32, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2, 16, 20, 19, 18, 17, 11, 15, 14, 13, 12], [35, 34, 33, 32, 31, 40, 39, 38, 37, 36, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 15, 14, 13, 12, 11, 20, 19, 18, 17, 16, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [12, 13, 14, 15, 11, 17, 18, 19, 20, 16, 7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 32, 33, 34, 35, 31, 37, 38, 39, 40, 36, 27, 28, 29, 30, 26, 22, 23, 24, 25, 21]];
cc:=[4,7,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 21, 25, 24, 23, 22, 36, 40, 39, 38, 37, 31, 35, 34, 33, 32, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2, 16, 20, 19, 18, 17, 11, 15, 14, 13, 12], [33, 32, 31, 35, 34, 38, 37, 36, 40, 39, 28, 27, 26, 30, 29, 23, 22, 21, 25, 24, 13, 12, 11, 15, 14, 18, 17, 16, 20, 19, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [14, 15, 11, 12, 13, 19, 20, 16, 17, 18, 9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 34, 35, 31, 32, 33, 39, 40, 36, 37, 38, 29, 30, 26, 27, 28, 24, 25, 21, 22, 23]];
cc:=[4,7,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 21, 25, 24, 23, 22, 36, 40, 39, 38, 37, 31, 35, 34, 33, 32, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2, 16, 20, 19, 18, 17, 11, 15, 14, 13, 12], [38, 37, 36, 40, 39, 33, 32, 31, 35, 34, 23, 22, 21, 25, 24, 28, 27, 26, 30, 29, 18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 3, 2, 1, 5, 4, 8, 7, 6, 10, 9], [19, 20, 16, 17, 18, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8, 39, 40, 36, 37, 38, 34, 35, 31, 32, 33, 24, 25, 21, 22, 23, 29, 30, 26, 27, 28]];
cc:=[4,8,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[26, 30, 29, 28, 27, 21, 25, 24, 23, 22, 36, 40, 39, 38, 37, 31, 35, 34, 33, 32, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2, 16, 20, 19, 18, 17, 11, 15, 14, 13, 12], [40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 25, 24, 23, 22, 21, 30, 29, 28, 27, 26, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 5, 4, 3, 2, 1, 10, 9, 8, 7, 6], [17, 18, 19, 20, 16, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6, 37, 38, 39, 40, 36, 32, 33, 34, 35, 31, 22, 23, 24, 25, 21, 27, 28, 29, 30, 26]];
cc:=[4,8,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15, 26, 27, 28, 29, 30, 21, 22, 23, 24, 25, 36, 37, 38, 39, 40, 31, 32, 33, 34, 35];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.48-30.0.3-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[48,30];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15, 29, 32, 30, 31, 33, 36, 34, 35, 25, 28, 26, 27, 41, 44, 42, 43, 45, 48, 46, 47, 37, 40, 38, 39], [28, 26, 27, 25, 36, 34, 35, 33, 32, 30, 31, 29, 40, 38, 39, 37, 48, 46, 47, 45, 44, 42, 43, 41, 16, 14, 15, 13, 24, 22, 23, 21, 20, 18, 19, 17, 4, 2, 3, 1, 12, 10, 11, 9, 8, 6, 7, 5], [46, 47, 48, 45, 42, 43, 44, 41, 38, 39, 40, 37, 34, 35, 36, 33, 30, 31, 32, 29, 26, 27, 28, 25, 10, 11, 12, 9, 6, 7, 8, 5, 2, 3, 4, 1, 22, 23, 24, 21, 18, 19, 20, 17, 14, 15, 16, 13]];
cc:=[5,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15, 29, 32, 30, 31, 33, 36, 34, 35, 25, 28, 26, 27, 41, 44, 42, 43, 45, 48, 46, 47, 37, 40, 38, 39], [40, 38, 39, 37, 48, 46, 47, 45, 44, 42, 43, 41, 28, 26, 27, 25, 36, 34, 35, 33, 32, 30, 31, 29, 4, 2, 3, 1, 12, 10, 11, 9, 8, 6, 7, 5, 16, 14, 15, 13, 24, 22, 23, 21, 20, 18, 19, 17], [34, 35, 36, 33, 30, 31, 32, 29, 26, 27, 28, 25, 46, 47, 48, 45, 42, 43, 44, 41, 38, 39, 40, 37, 22, 23, 24, 21, 18, 19, 20, 17, 14, 15, 16, 13, 10, 11, 12, 9, 6, 7, 8, 5, 2, 3, 4, 1]];
cc:=[5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15, 29, 32, 30, 31, 33, 36, 34, 35, 25, 28, 26, 27, 41, 44, 42, 43, 45, 48, 46, 47, 37, 40, 38, 39], [26, 28, 25, 27, 34, 36, 33, 35, 30, 32, 29, 31, 38, 40, 37, 39, 46, 48, 45, 47, 42, 44, 41, 43, 14, 16, 13, 15, 22, 24, 21, 23, 18, 20, 17, 19, 2, 4, 1, 3, 10, 12, 9, 11, 6, 8, 5, 7], [48, 45, 46, 47, 44, 41, 42, 43, 40, 37, 38, 39, 36, 33, 34, 35, 32, 29, 30, 31, 28, 25, 26, 27, 12, 9, 10, 11, 8, 5, 6, 7, 4, 1, 2, 3, 24, 21, 22, 23, 20, 17, 18, 19, 16, 13, 14, 15]];
cc:=[5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[96,195];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.48-14.0.2-4-12
// Create group as a permutation group and initialize signature information.
gp_id:=[48,14];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,12];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 31, 33, 32, 34, 36, 35, 40, 42, 41, 37, 39, 38, 46, 48, 47, 43, 45, 44, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20], [39, 38, 37, 42, 41, 40, 45, 44, 43, 48, 47, 46, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 15, 14, 13, 18, 17, 16, 21, 20, 19, 24, 23, 22, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [20, 21, 19, 23, 24, 22, 14, 15, 13, 17, 18, 16, 2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10, 44, 45, 43, 47, 48, 46, 38, 39, 37, 41, 42, 40, 26, 27, 25, 29, 30, 28, 32, 33, 31, 35, 36, 34]];
cc:=[5,10,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15, 34, 35, 36, 31, 32, 33, 28, 29, 30, 25, 26, 27, 46, 47, 48, 43, 44, 45, 40, 41, 42, 37, 38, 39];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 31, 33, 32, 34, 36, 35, 40, 42, 41, 37, 39, 38, 46, 48, 47, 43, 45, 44, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20], [38, 37, 39, 41, 40, 42, 44, 43, 45, 47, 46, 48, 35, 34, 36, 32, 31, 33, 29, 28, 30, 26, 25, 27, 14, 13, 15, 17, 16, 18, 20, 19, 21, 23, 22, 24, 11, 10, 12, 8, 7, 9, 5, 4, 6, 2, 1, 3], [21, 19, 20, 24, 22, 23, 15, 13, 14, 18, 16, 17, 3, 1, 2, 6, 4, 5, 9, 7, 8, 12, 10, 11, 45, 43, 44, 48, 46, 47, 39, 37, 38, 42, 40, 41, 27, 25, 26, 30, 28, 29, 33, 31, 32, 36, 34, 35]];
cc:=[5,10,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15, 34, 35, 36, 31, 32, 33, 28, 29, 30, 25, 26, 27, 46, 47, 48, 43, 44, 45, 40, 41, 42, 37, 38, 39];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 31, 33, 32, 34, 36, 35, 40, 42, 41, 37, 39, 38, 46, 48, 47, 43, 45, 44, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20], [47, 46, 48, 44, 43, 45, 41, 40, 42, 38, 37, 39, 26, 25, 27, 29, 28, 30, 32, 31, 33, 35, 34, 36, 23, 22, 24, 20, 19, 21, 17, 16, 18, 14, 13, 15, 2, 1, 3, 5, 4, 6, 8, 7, 9, 11, 10, 12], [18, 16, 17, 15, 13, 14, 24, 22, 23, 21, 19, 20, 12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2, 42, 40, 41, 39, 37, 38, 48, 46, 47, 45, 43, 44, 36, 34, 35, 33, 31, 32, 30, 28, 29, 27, 25, 26]];
cc:=[5,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15, 34, 35, 36, 31, 32, 33, 28, 29, 30, 25, 26, 27, 46, 47, 48, 43, 44, 45, 40, 41, 42, 37, 38, 39];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[25, 27, 26, 28, 30, 29, 31, 33, 32, 34, 36, 35, 40, 42, 41, 37, 39, 38, 46, 48, 47, 43, 45, 44, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20], [48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 27, 26, 25, 30, 29, 28, 33, 32, 31, 36, 35, 34, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 3, 2, 1, 6, 5, 4, 9, 8, 7, 12, 11, 10], [17, 18, 16, 14, 15, 13, 23, 24, 22, 20, 21, 19, 11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1, 41, 42, 40, 38, 39, 37, 47, 48, 46, 44, 45, 43, 35, 36, 34, 32, 33, 31, 29, 30, 28, 26, 27, 25]];
cc:=[5,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15, 34, 35, 36, 31, 32, 33, 28, 29, 30, 25, 26, 27, 46, 47, 48, 43, 44, 45, 40, 41, 42, 37, 38, 39];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[31, 33, 32, 34, 36, 35, 25, 27, 26, 28, 30, 29, 46, 48, 47, 43, 45, 44, 40, 42, 41, 37, 39, 38, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5, 22, 24, 23, 19, 21, 20, 16, 18, 17, 13, 15, 14], [39, 38, 37, 42, 41, 40, 45, 44, 43, 48, 47, 46, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 15, 14, 13, 18, 17, 16, 21, 20, 19, 24, 23, 22, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [14, 15, 13, 17, 18, 16, 20, 21, 19, 23, 24, 22, 8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4, 38, 39, 37, 41, 42, 40, 44, 45, 43, 47, 48, 46, 32, 33, 31, 35, 36, 34, 26, 27, 25, 29, 30, 28]];
cc:=[6,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15, 34, 35, 36, 31, 32, 33, 28, 29, 30, 25, 26, 27, 46, 47, 48, 43, 44, 45, 40, 41, 42, 37, 38, 39];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[31, 33, 32, 34, 36, 35, 25, 27, 26, 28, 30, 29, 46, 48, 47, 43, 45, 44, 40, 42, 41, 37, 39, 38, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5, 22, 24, 23, 19, 21, 20, 16, 18, 17, 13, 15, 14], [38, 37, 39, 41, 40, 42, 44, 43, 45, 47, 46, 48, 35, 34, 36, 32, 31, 33, 29, 28, 30, 26, 25, 27, 14, 13, 15, 17, 16, 18, 20, 19, 21, 23, 22, 24, 11, 10, 12, 8, 7, 9, 5, 4, 6, 2, 1, 3], [15, 13, 14, 18, 16, 17, 21, 19, 20, 24, 22, 23, 9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5, 39, 37, 38, 42, 40, 41, 45, 43, 44, 48, 46, 47, 33, 31, 32, 36, 34, 35, 27, 25, 26, 30, 28, 29]];
cc:=[6,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15, 34, 35, 36, 31, 32, 33, 28, 29, 30, 25, 26, 27, 46, 47, 48, 43, 44, 45, 40, 41, 42, 37, 38, 39];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[31, 33, 32, 34, 36, 35, 25, 27, 26, 28, 30, 29, 46, 48, 47, 43, 45, 44, 40, 42, 41, 37, 39, 38, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5, 22, 24, 23, 19, 21, 20, 16, 18, 17, 13, 15, 14], [47, 46, 48, 44, 43, 45, 41, 40, 42, 38, 37, 39, 26, 25, 27, 29, 28, 30, 32, 31, 33, 35, 34, 36, 23, 22, 24, 20, 19, 21, 17, 16, 18, 14, 13, 15, 2, 1, 3, 5, 4, 6, 8, 7, 9, 11, 10, 12], [24, 22, 23, 21, 19, 20, 18, 16, 17, 15, 13, 14, 6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8, 48, 46, 47, 45, 43, 44, 42, 40, 41, 39, 37, 38, 30, 28, 29, 27, 25, 26, 36, 34, 35, 33, 31, 32]];
cc:=[6,11,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15, 34, 35, 36, 31, 32, 33, 28, 29, 30, 25, 26, 27, 46, 47, 48, 43, 44, 45, 40, 41, 42, 37, 38, 39];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[31, 33, 32, 34, 36, 35, 25, 27, 26, 28, 30, 29, 46, 48, 47, 43, 45, 44, 40, 42, 41, 37, 39, 38, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5, 22, 24, 23, 19, 21, 20, 16, 18, 17, 13, 15, 14], [48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 27, 26, 25, 30, 29, 28, 33, 32, 31, 36, 35, 34, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 3, 2, 1, 6, 5, 4, 9, 8, 7, 12, 11, 10], [23, 24, 22, 20, 21, 19, 17, 18, 16, 14, 15, 13, 5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7, 47, 48, 46, 44, 45, 43, 41, 42, 40, 38, 39, 37, 29, 30, 28, 26, 27, 25, 35, 36, 34, 32, 33, 31]];
cc:=[6,11,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15, 34, 35, 36, 31, 32, 33, 28, 29, 30, 25, 26, 27, 46, 47, 48, 43, 44, 45, 40, 41, 42, 37, 38, 39];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.64-32.0.2-4-8
// Create group as a permutation group and initialize signature information.
gp_id:=[64,32];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,8];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 23, 24, 21, 22, 25, 26, 27, 28, 31, 32, 29, 30, 1, 2, 3, 4, 7, 8, 5, 6, 9, 10, 11, 12, 15, 16, 13, 14, 49, 50, 51, 52, 55, 56, 53, 54, 57, 58, 59, 60, 63, 64, 61, 62, 33, 34, 35, 36, 39, 40, 37, 38, 41, 42, 43, 44, 47, 48, 45, 46], [33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 42, 41, 47, 48, 46, 45, 57, 58, 60, 59, 61, 62, 64, 63, 51, 52, 50, 49, 55, 56, 54, 53, 5, 6, 8, 7, 1, 2, 4, 3, 16, 15, 13, 14, 12, 11, 9, 10, 32, 31, 29, 30, 28, 27, 25, 26, 21, 22, 24, 23, 17, 18, 20, 19], [55, 56, 54, 53, 49, 50, 52, 51, 61, 62, 64, 63, 59, 60, 58, 57, 47, 48, 46, 45, 41, 42, 44, 43, 37, 38, 40, 39, 35, 36, 34, 33, 17, 18, 20, 19, 23, 24, 22, 21, 28, 27, 25, 26, 30, 29, 31, 32, 12, 11, 9, 10, 14, 13, 15, 16, 1, 2, 4, 3, 7, 8, 6, 5]];
cc:=[6,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[17, 18, 19, 20, 23, 24, 21, 22, 25, 26, 27, 28, 31, 32, 29, 30, 1, 2, 3, 4, 7, 8, 5, 6, 9, 10, 11, 12, 15, 16, 13, 14, 49, 50, 51, 52, 55, 56, 53, 54, 57, 58, 59, 60, 63, 64, 61, 62, 33, 34, 35, 36, 39, 40, 37, 38, 41, 42, 43, 44, 47, 48, 45, 46], [37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 46, 45, 43, 44, 42, 41, 61, 62, 64, 63, 57, 58, 60, 59, 55, 56, 54, 53, 51, 52, 50, 49, 1, 2, 4, 3, 5, 6, 8, 7, 12, 11, 9, 10, 16, 15, 13, 14, 28, 27, 25, 26, 32, 31, 29, 30, 17, 18, 20, 19, 21, 22, 24, 23], [49, 50, 52, 51, 55, 56, 54, 53, 59, 60, 58, 57, 61, 62, 64, 63, 41, 42, 44, 43, 47, 48, 46, 45, 35, 36, 34, 33, 37, 38, 40, 39, 23, 24, 22, 21, 17, 18, 20, 19, 30, 29, 31, 32, 28, 27, 25, 26, 14, 13, 15, 16, 12, 11, 9, 10, 7, 8, 6, 5, 1, 2, 4, 3]];
cc:=[6,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 17, 20, 19, 24, 23, 22, 21, 26, 25, 28, 27, 32, 31, 30, 29, 2, 1, 4, 3, 8, 7, 6, 5, 10, 9, 12, 11, 16, 15, 14, 13, 50, 49, 52, 51, 56, 55, 54, 53, 58, 57, 60, 59, 64, 63, 62, 61, 34, 33, 36, 35, 40, 39, 38, 37, 42, 41, 44, 43, 48, 47, 46, 45], [33, 34, 36, 35, 37, 38, 40, 39, 43, 44, 42, 41, 47, 48, 46, 45, 57, 58, 60, 59, 61, 62, 64, 63, 51, 52, 50, 49, 55, 56, 54, 53, 5, 6, 8, 7, 1, 2, 4, 3, 16, 15, 13, 14, 12, 11, 9, 10, 32, 31, 29, 30, 28, 27, 25, 26, 21, 22, 24, 23, 17, 18, 20, 19], [56, 55, 53, 54, 50, 49, 51, 52, 62, 61, 63, 64, 60, 59, 57, 58, 48, 47, 45, 46, 42, 41, 43, 44, 38, 37, 39, 40, 36, 35, 33, 34, 18, 17, 19, 20, 24, 23, 21, 22, 27, 28, 26, 25, 29, 30, 32, 31, 11, 12, 10, 9, 13, 14, 16, 15, 2, 1, 3, 4, 8, 7, 5, 6]];
cc:=[7,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[18, 17, 20, 19, 24, 23, 22, 21, 26, 25, 28, 27, 32, 31, 30, 29, 2, 1, 4, 3, 8, 7, 6, 5, 10, 9, 12, 11, 16, 15, 14, 13, 50, 49, 52, 51, 56, 55, 54, 53, 58, 57, 60, 59, 64, 63, 62, 61, 34, 33, 36, 35, 40, 39, 38, 37, 42, 41, 44, 43, 48, 47, 46, 45], [37, 38, 40, 39, 33, 34, 36, 35, 47, 48, 46, 45, 43, 44, 42, 41, 61, 62, 64, 63, 57, 58, 60, 59, 55, 56, 54, 53, 51, 52, 50, 49, 1, 2, 4, 3, 5, 6, 8, 7, 12, 11, 9, 10, 16, 15, 13, 14, 28, 27, 25, 26, 32, 31, 29, 30, 17, 18, 20, 19, 21, 22, 24, 23], [50, 49, 51, 52, 56, 55, 53, 54, 60, 59, 57, 58, 62, 61, 63, 64, 42, 41, 43, 44, 48, 47, 45, 46, 36, 35, 33, 34, 38, 37, 39, 40, 24, 23, 21, 22, 18, 17, 19, 20, 29, 30, 32, 31, 27, 28, 26, 25, 13, 14, 16, 15, 11, 12, 10, 9, 8, 7, 5, 6, 2, 1, 3, 4]];
cc:=[7,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.96-195.0.2-4-6
// Create group as a permutation group and initialize signature information.
gp_id:=[96,195];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,6];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[49, 51, 50, 52, 57, 59, 58, 60, 53, 55, 54, 56, 61, 63, 62, 64, 69, 71, 70, 72, 65, 67, 66, 68, 85, 87, 86, 88, 93, 95, 94, 96, 89, 91, 90, 92, 73, 75, 74, 76, 81, 83, 82, 84, 77, 79, 78, 80, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8, 13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 25, 27, 26, 28, 33, 35, 34, 36, 29, 31, 30, 32], [84, 81, 82, 83, 80, 77, 78, 79, 76, 73, 74, 75, 96, 93, 94, 95, 92, 89, 90, 91, 88, 85, 86, 87, 72, 69, 70, 71, 68, 65, 66, 67, 64, 61, 62, 63, 60, 57, 58, 59, 56, 53, 54, 55, 52, 49, 50, 51, 36, 33, 34, 35, 32, 29, 30, 31, 28, 25, 26, 27, 48, 45, 46, 47, 44, 41, 42, 43, 40, 37, 38, 39, 24, 21, 22, 23, 20, 17, 18, 19, 16, 13, 14, 15, 12, 9, 10, 11, 8, 5, 6, 7, 4, 1, 2, 3], [31, 30, 32, 29, 35, 34, 36, 33, 27, 26, 28, 25, 43, 42, 44, 41, 47, 46, 48, 45, 39, 38, 40, 37, 7, 6, 8, 5, 11, 10, 12, 9, 3, 2, 4, 1, 19, 18, 20, 17, 23, 22, 24, 21, 15, 14, 16, 13, 79, 78, 80, 77, 83, 82, 84, 81, 75, 74, 76, 73, 91, 90, 92, 89, 95, 94, 96, 93, 87, 86, 88, 85, 55, 54, 56, 53, 59, 58, 60, 57, 51, 50, 52, 49, 67, 66, 68, 65, 71, 70, 72, 69, 63, 62, 64, 61]];
cc:=[7,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[49, 51, 50, 52, 57, 59, 58, 60, 53, 55, 54, 56, 61, 63, 62, 64, 69, 71, 70, 72, 65, 67, 66, 68, 85, 87, 86, 88, 93, 95, 94, 96, 89, 91, 90, 92, 73, 75, 74, 76, 81, 83, 82, 84, 77, 79, 78, 80, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8, 13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 25, 27, 26, 28, 33, 35, 34, 36, 29, 31, 30, 32], [79, 80, 78, 77, 75, 76, 74, 73, 83, 84, 82, 81, 91, 92, 90, 89, 87, 88, 86, 85, 95, 96, 94, 93, 67, 68, 66, 65, 63, 64, 62, 61, 71, 72, 70, 69, 55, 56, 54, 53, 51, 52, 50, 49, 59, 60, 58, 57, 31, 32, 30, 29, 27, 28, 26, 25, 35, 36, 34, 33, 43, 44, 42, 41, 39, 40, 38, 37, 47, 48, 46, 45, 19, 20, 18, 17, 15, 16, 14, 13, 23, 24, 22, 21, 7, 8, 6, 5, 3, 4, 2, 1, 11, 12, 10, 9], [36, 34, 33, 35, 28, 26, 25, 27, 32, 30, 29, 31, 48, 46, 45, 47, 40, 38, 37, 39, 44, 42, 41, 43, 12, 10, 9, 11, 4, 2, 1, 3, 8, 6, 5, 7, 24, 22, 21, 23, 16, 14, 13, 15, 20, 18, 17, 19, 84, 82, 81, 83, 76, 74, 73, 75, 80, 78, 77, 79, 96, 94, 93, 95, 88, 86, 85, 87, 92, 90, 89, 91, 60, 58, 57, 59, 52, 50, 49, 51, 56, 54, 53, 55, 72, 70, 69, 71, 64, 62, 61, 63, 68, 66, 65, 67]];
cc:=[7,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.120-35.0.2-3-10
// Create group as a permutation group and initialize signature information.
gp_id:=[120,35];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,10];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 5, 14, 38, 2, 1, 10, 29, 108, 7, 16, 15, 99, 3, 12, 11, 20, 104, 53, 17, 26, 25, 34, 58, 22, 21, 30, 49, 8, 27, 36, 35, 119, 23, 32, 31, 40, 4, 73, 37, 46, 45, 54, 78, 42, 41, 50, 69, 28, 47, 56, 55, 19, 43, 52, 51, 60, 24, 93, 57, 66, 65, 74, 98, 62, 61, 70, 89, 48, 67, 76, 75, 39, 63, 72, 71, 80, 44, 113, 77, 86, 85, 94, 118, 82, 81, 90, 109, 68, 87, 96, 95, 59, 83, 92, 91, 100, 64, 13, 97, 106, 105, 114, 18, 102, 101, 110, 9, 88, 107, 116, 115, 79, 103, 112, 111, 120, 84, 33, 117], [107, 74, 98, 66, 20, 37, 89, 48, 61, 25, 52, 39, 63, 76, 95, 2, 44, 113, 71, 110, 7, 94, 118, 86, 40, 57, 109, 68, 81, 45, 72, 59, 83, 96, 115, 22, 64, 13, 91, 10, 27, 114, 18, 106, 60, 77, 9, 88, 101, 65, 92, 79, 103, 116, 15, 42, 84, 33, 111, 30, 47, 14, 38, 6, 80, 97, 29, 108, 1, 85, 112, 99, 3, 16, 35, 62, 104, 53, 11, 50, 67, 34, 58, 26, 100, 117, 49, 8, 21, 105, 12, 119, 23, 36, 55, 82, 4, 73, 31, 70, 87, 54, 78, 46, 120, 17, 69, 28, 41, 5, 32, 19, 43, 56, 75, 102, 24, 93, 51, 90], [48, 11, 39, 100, 107, 98, 26, 109, 50, 37, 113, 96, 4, 65, 52, 63, 101, 54, 115, 2, 68, 31, 59, 120, 7, 118, 46, 9, 70, 57, 13, 116, 24, 85, 72, 83, 1, 74, 15, 22, 88, 51, 79, 20, 27, 18, 66, 29, 90, 77, 33, 16, 44, 105, 92, 103, 21, 94, 35, 42, 108, 71, 99, 40, 47, 38, 86, 49, 110, 97, 53, 36, 64, 5, 112, 3, 41, 114, 55, 62, 8, 91, 119, 60, 67, 58, 106, 69, 10, 117, 73, 56, 84, 25, 12, 23, 61, 14, 75, 82, 28, 111, 19, 80, 87, 78, 6, 89, 30, 17, 93, 76, 104, 45, 32, 43, 81, 34, 95, 102]];
cc:=[3,5,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 14, 38, 2, 1, 10, 29, 108, 7, 16, 15, 99, 3, 12, 11, 20, 104, 53, 17, 26, 25, 34, 58, 22, 21, 30, 49, 8, 27, 36, 35, 119, 23, 32, 31, 40, 4, 73, 37, 46, 45, 54, 78, 42, 41, 50, 69, 28, 47, 56, 55, 19, 43, 52, 51, 60, 24, 93, 57, 66, 65, 74, 98, 62, 61, 70, 89, 48, 67, 76, 75, 39, 63, 72, 71, 80, 44, 113, 77, 86, 85, 94, 118, 82, 81, 90, 109, 68, 87, 96, 95, 59, 83, 92, 91, 100, 64, 13, 97, 106, 105, 114, 18, 102, 101, 110, 9, 88, 107, 116, 115, 79, 103, 112, 111, 120, 84, 33, 117], [72, 68, 106, 19, 35, 87, 63, 36, 24, 105, 37, 78, 51, 94, 10, 42, 73, 1, 109, 60, 92, 88, 6, 39, 55, 107, 83, 56, 44, 5, 57, 98, 71, 114, 30, 62, 93, 21, 9, 80, 112, 108, 26, 59, 75, 7, 103, 76, 64, 25, 77, 118, 91, 14, 50, 82, 113, 41, 29, 100, 12, 8, 46, 79, 95, 27, 3, 96, 84, 45, 97, 18, 111, 34, 70, 102, 13, 61, 49, 120, 32, 28, 66, 99, 115, 47, 23, 116, 104, 65, 117, 38, 11, 54, 90, 2, 33, 81, 69, 20, 52, 48, 86, 119, 15, 67, 43, 16, 4, 85, 17, 58, 31, 74, 110, 22, 53, 101, 89, 40], [104, 91, 70, 88, 27, 34, 41, 65, 73, 12, 59, 66, 80, 43, 102, 9, 116, 75, 38, 97, 4, 111, 90, 108, 47, 54, 61, 85, 93, 32, 79, 86, 100, 63, 2, 29, 16, 95, 58, 117, 24, 11, 110, 8, 67, 74, 81, 105, 113, 52, 99, 106, 120, 83, 22, 49, 36, 115, 78, 17, 44, 31, 10, 28, 87, 94, 101, 5, 13, 72, 119, 6, 20, 103, 42, 69, 56, 15, 98, 37, 64, 51, 30, 48, 107, 114, 1, 25, 33, 92, 19, 26, 40, 3, 62, 89, 76, 35, 118, 57, 84, 71, 50, 68, 7, 14, 21, 45, 53, 112, 39, 46, 60, 23, 82, 109, 96, 55, 18, 77]];
cc:=[3,5,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.192-181.0.2-3-8
// Create group as a permutation group and initialize signature information.
gp_id:=[192,181];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,8];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[97, 98, 99, 100, 103, 104, 101, 102, 113, 114, 115, 116, 119, 120, 117, 118, 105, 106, 107, 108, 111, 112, 109, 110, 122, 121, 124, 123, 128, 127, 126, 125, 161, 162, 163, 164, 167, 168, 165, 166, 177, 178, 179, 180, 183, 184, 181, 182, 169, 170, 171, 172, 175, 176, 173, 174, 186, 185, 188, 187, 192, 191, 190, 189, 129, 130, 131, 132, 135, 136, 133, 134, 145, 146, 147, 148, 151, 152, 149, 150, 137, 138, 139, 140, 143, 144, 141, 142, 154, 153, 156, 155, 160, 159, 158, 157, 1, 2, 3, 4, 7, 8, 5, 6, 17, 18, 19, 20, 23, 24, 21, 22, 9, 10, 11, 12, 15, 16, 13, 14, 26, 25, 28, 27, 32, 31, 30, 29, 65, 66, 67, 68, 71, 72, 69, 70, 81, 82, 83, 84, 87, 88, 85, 86, 73, 74, 75, 76, 79, 80, 77, 78, 90, 89, 92, 91, 96, 95, 94, 93, 33, 34, 35, 36, 39, 40, 37, 38, 49, 50, 51, 52, 55, 56, 53, 54, 41, 42, 43, 44, 47, 48, 45, 46, 58, 57, 60, 59, 64, 63, 62, 61], [51, 52, 54, 53, 50, 49, 55, 56, 48, 47, 41, 42, 45, 46, 44, 43, 59, 60, 62, 61, 58, 57, 63, 64, 35, 36, 38, 37, 34, 33, 39, 40, 83, 84, 86, 85, 82, 81, 87, 88, 80, 79, 73, 74, 77, 78, 76, 75, 91, 92, 94, 93, 90, 89, 95, 96, 67, 68, 70, 69, 66, 65, 71, 72, 19, 20, 22, 21, 18, 17, 23, 24, 16, 15, 9, 10, 13, 14, 12, 11, 27, 28, 30, 29, 26, 25, 31, 32, 3, 4, 6, 5, 2, 1, 7, 8, 147, 148, 150, 149, 146, 145, 151, 152, 144, 143, 137, 138, 141, 142, 140, 139, 155, 156, 158, 157, 154, 153, 159, 160, 131, 132, 134, 133, 130, 129, 135, 136, 179, 180, 182, 181, 178, 177, 183, 184, 176, 175, 169, 170, 173, 174, 172, 171, 187, 188, 190, 189, 186, 185, 191, 192, 163, 164, 166, 165, 162, 161, 167, 168, 115, 116, 118, 117, 114, 113, 119, 120, 112, 111, 105, 106, 109, 110, 108, 107, 123, 124, 126, 125, 122, 121, 127, 128, 99, 100, 102, 101, 98, 97, 103, 104], [159, 160, 154, 153, 155, 156, 158, 157, 147, 148, 150, 149, 151, 152, 146, 145, 136, 135, 129, 130, 132, 131, 133, 134, 144, 143, 137, 138, 140, 139, 141, 142, 127, 128, 122, 121, 123, 124, 126, 125, 115, 116, 118, 117, 119, 120, 114, 113, 104, 103, 97, 98, 100, 99, 101, 102, 112, 111, 105, 106, 108, 107, 109, 110, 191, 192, 186, 185, 187, 188, 190, 189, 179, 180, 182, 181, 183, 184, 178, 177, 168, 167, 161, 162, 164, 163, 165, 166, 176, 175, 169, 170, 172, 171, 173, 174, 63, 64, 58, 57, 59, 60, 62, 61, 51, 52, 54, 53, 55, 56, 50, 49, 40, 39, 33, 34, 36, 35, 37, 38, 48, 47, 41, 42, 44, 43, 45, 46, 31, 32, 26, 25, 27, 28, 30, 29, 19, 20, 22, 21, 23, 24, 18, 17, 8, 7, 1, 2, 4, 3, 5, 6, 16, 15, 9, 10, 12, 11, 13, 14, 95, 96, 90, 89, 91, 92, 94, 93, 83, 84, 86, 85, 87, 88, 82, 81, 72, 71, 65, 66, 68, 67, 69, 70, 80, 79, 73, 74, 76, 75, 77, 78]];
cc:=[5,6,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[97, 98, 99, 100, 103, 104, 101, 102, 113, 114, 115, 116, 119, 120, 117, 118, 105, 106, 107, 108, 111, 112, 109, 110, 122, 121, 124, 123, 128, 127, 126, 125, 161, 162, 163, 164, 167, 168, 165, 166, 177, 178, 179, 180, 183, 184, 181, 182, 169, 170, 171, 172, 175, 176, 173, 174, 186, 185, 188, 187, 192, 191, 190, 189, 129, 130, 131, 132, 135, 136, 133, 134, 145, 146, 147, 148, 151, 152, 149, 150, 137, 138, 139, 140, 143, 144, 141, 142, 154, 153, 156, 155, 160, 159, 158, 157, 1, 2, 3, 4, 7, 8, 5, 6, 17, 18, 19, 20, 23, 24, 21, 22, 9, 10, 11, 12, 15, 16, 13, 14, 26, 25, 28, 27, 32, 31, 30, 29, 65, 66, 67, 68, 71, 72, 69, 70, 81, 82, 83, 84, 87, 88, 85, 86, 73, 74, 75, 76, 79, 80, 77, 78, 90, 89, 92, 91, 96, 95, 94, 93, 33, 34, 35, 36, 39, 40, 37, 38, 49, 50, 51, 52, 55, 56, 53, 54, 41, 42, 43, 44, 47, 48, 45, 46, 58, 57, 60, 59, 64, 63, 62, 61], [80, 79, 75, 76, 74, 73, 77, 78, 95, 96, 92, 91, 89, 90, 94, 93, 81, 82, 86, 85, 87, 88, 84, 83, 71, 72, 68, 67, 65, 66, 70, 69, 16, 15, 11, 12, 10, 9, 13, 14, 31, 32, 28, 27, 25, 26, 30, 29, 17, 18, 22, 21, 23, 24, 20, 19, 7, 8, 4, 3, 1, 2, 6, 5, 48, 47, 43, 44, 42, 41, 45, 46, 63, 64, 60, 59, 57, 58, 62, 61, 49, 50, 54, 53, 55, 56, 52, 51, 39, 40, 36, 35, 33, 34, 38, 37, 176, 175, 171, 172, 170, 169, 173, 174, 191, 192, 188, 187, 185, 186, 190, 189, 177, 178, 182, 181, 183, 184, 180, 179, 167, 168, 164, 163, 161, 162, 166, 165, 112, 111, 107, 108, 106, 105, 109, 110, 127, 128, 124, 123, 121, 122, 126, 125, 113, 114, 118, 117, 119, 120, 116, 115, 103, 104, 100, 99, 97, 98, 102, 101, 144, 143, 139, 140, 138, 137, 141, 142, 159, 160, 156, 155, 153, 154, 158, 157, 145, 146, 150, 149, 151, 152, 148, 147, 135, 136, 132, 131, 129, 130, 134, 133], [192, 191, 187, 188, 189, 190, 186, 185, 168, 167, 163, 164, 165, 166, 162, 161, 169, 170, 174, 173, 172, 171, 175, 176, 183, 184, 180, 179, 182, 181, 177, 178, 160, 159, 155, 156, 157, 158, 154, 153, 136, 135, 131, 132, 133, 134, 130, 129, 137, 138, 142, 141, 140, 139, 143, 144, 151, 152, 148, 147, 150, 149, 145, 146, 128, 127, 123, 124, 125, 126, 122, 121, 104, 103, 99, 100, 101, 102, 98, 97, 105, 106, 110, 109, 108, 107, 111, 112, 119, 120, 116, 115, 118, 117, 113, 114, 96, 95, 91, 92, 93, 94, 90, 89, 72, 71, 67, 68, 69, 70, 66, 65, 73, 74, 78, 77, 76, 75, 79, 80, 87, 88, 84, 83, 86, 85, 81, 82, 64, 63, 59, 60, 61, 62, 58, 57, 40, 39, 35, 36, 37, 38, 34, 33, 41, 42, 46, 45, 44, 43, 47, 48, 55, 56, 52, 51, 54, 53, 49, 50, 32, 31, 27, 28, 29, 30, 26, 25, 8, 7, 3, 4, 5, 6, 2, 1, 9, 10, 14, 13, 12, 11, 15, 16, 23, 24, 20, 19, 22, 21, 17, 18]];
cc:=[5,6,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[97, 98, 99, 100, 103, 104, 101, 102, 113, 114, 115, 116, 119, 120, 117, 118, 105, 106, 107, 108, 111, 112, 109, 110, 122, 121, 124, 123, 128, 127, 126, 125, 161, 162, 163, 164, 167, 168, 165, 166, 177, 178, 179, 180, 183, 184, 181, 182, 169, 170, 171, 172, 175, 176, 173, 174, 186, 185, 188, 187, 192, 191, 190, 189, 129, 130, 131, 132, 135, 136, 133, 134, 145, 146, 147, 148, 151, 152, 149, 150, 137, 138, 139, 140, 143, 144, 141, 142, 154, 153, 156, 155, 160, 159, 158, 157, 1, 2, 3, 4, 7, 8, 5, 6, 17, 18, 19, 20, 23, 24, 21, 22, 9, 10, 11, 12, 15, 16, 13, 14, 26, 25, 28, 27, 32, 31, 30, 29, 65, 66, 67, 68, 71, 72, 69, 70, 81, 82, 83, 84, 87, 88, 85, 86, 73, 74, 75, 76, 79, 80, 77, 78, 90, 89, 92, 91, 96, 95, 94, 93, 33, 34, 35, 36, 39, 40, 37, 38, 49, 50, 51, 52, 55, 56, 53, 54, 41, 42, 43, 44, 47, 48, 45, 46, 58, 57, 60, 59, 64, 63, 62, 61], [61, 62, 60, 59, 64, 63, 57, 58, 38, 37, 35, 36, 39, 40, 34, 33, 49, 50, 56, 55, 52, 51, 53, 54, 45, 46, 44, 43, 48, 47, 41, 42, 93, 94, 92, 91, 96, 95, 89, 90, 70, 69, 67, 68, 71, 72, 66, 65, 81, 82, 88, 87, 84, 83, 85, 86, 77, 78, 76, 75, 80, 79, 73, 74, 29, 30, 28, 27, 32, 31, 25, 26, 6, 5, 3, 4, 7, 8, 2, 1, 17, 18, 24, 23, 20, 19, 21, 22, 13, 14, 12, 11, 16, 15, 9, 10, 157, 158, 156, 155, 160, 159, 153, 154, 134, 133, 131, 132, 135, 136, 130, 129, 145, 146, 152, 151, 148, 147, 149, 150, 141, 142, 140, 139, 144, 143, 137, 138, 189, 190, 188, 187, 192, 191, 185, 186, 166, 165, 163, 164, 167, 168, 162, 161, 177, 178, 184, 183, 180, 179, 181, 182, 173, 174, 172, 171, 176, 175, 169, 170, 125, 126, 124, 123, 128, 127, 121, 122, 102, 101, 99, 100, 103, 104, 98, 97, 113, 114, 120, 119, 116, 115, 117, 118, 109, 110, 108, 107, 112, 111, 105, 106], [150, 149, 147, 148, 146, 145, 151, 152, 158, 157, 155, 156, 154, 153, 159, 160, 137, 138, 144, 143, 141, 142, 140, 139, 133, 134, 132, 131, 129, 130, 136, 135, 118, 117, 115, 116, 114, 113, 119, 120, 126, 125, 123, 124, 122, 121, 127, 128, 105, 106, 112, 111, 109, 110, 108, 107, 101, 102, 100, 99, 97, 98, 104, 103, 182, 181, 179, 180, 178, 177, 183, 184, 190, 189, 187, 188, 186, 185, 191, 192, 169, 170, 176, 175, 173, 174, 172, 171, 165, 166, 164, 163, 161, 162, 168, 167, 54, 53, 51, 52, 50, 49, 55, 56, 62, 61, 59, 60, 58, 57, 63, 64, 41, 42, 48, 47, 45, 46, 44, 43, 37, 38, 36, 35, 33, 34, 40, 39, 22, 21, 19, 20, 18, 17, 23, 24, 30, 29, 27, 28, 26, 25, 31, 32, 9, 10, 16, 15, 13, 14, 12, 11, 5, 6, 4, 3, 1, 2, 8, 7, 86, 85, 83, 84, 82, 81, 87, 88, 94, 93, 91, 92, 90, 89, 95, 96, 73, 74, 80, 79, 77, 78, 76, 75, 69, 70, 68, 67, 65, 66, 72, 71]];
cc:=[5,6,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[97, 98, 99, 100, 103, 104, 101, 102, 113, 114, 115, 116, 119, 120, 117, 118, 105, 106, 107, 108, 111, 112, 109, 110, 122, 121, 124, 123, 128, 127, 126, 125, 161, 162, 163, 164, 167, 168, 165, 166, 177, 178, 179, 180, 183, 184, 181, 182, 169, 170, 171, 172, 175, 176, 173, 174, 186, 185, 188, 187, 192, 191, 190, 189, 129, 130, 131, 132, 135, 136, 133, 134, 145, 146, 147, 148, 151, 152, 149, 150, 137, 138, 139, 140, 143, 144, 141, 142, 154, 153, 156, 155, 160, 159, 158, 157, 1, 2, 3, 4, 7, 8, 5, 6, 17, 18, 19, 20, 23, 24, 21, 22, 9, 10, 11, 12, 15, 16, 13, 14, 26, 25, 28, 27, 32, 31, 30, 29, 65, 66, 67, 68, 71, 72, 69, 70, 81, 82, 83, 84, 87, 88, 85, 86, 73, 74, 75, 76, 79, 80, 77, 78, 90, 89, 92, 91, 96, 95, 94, 93, 33, 34, 35, 36, 39, 40, 37, 38, 49, 50, 51, 52, 55, 56, 53, 54, 41, 42, 43, 44, 47, 48, 45, 46, 58, 57, 60, 59, 64, 63, 62, 61], [63, 64, 58, 57, 62, 61, 59, 60, 40, 39, 33, 34, 37, 38, 36, 35, 51, 52, 54, 53, 50, 49, 55, 56, 47, 48, 42, 41, 46, 45, 43, 44, 95, 96, 90, 89, 94, 93, 91, 92, 72, 71, 65, 66, 69, 70, 68, 67, 83, 84, 86, 85, 82, 81, 87, 88, 79, 80, 74, 73, 78, 77, 75, 76, 31, 32, 26, 25, 30, 29, 27, 28, 8, 7, 1, 2, 5, 6, 4, 3, 19, 20, 22, 21, 18, 17, 23, 24, 15, 16, 10, 9, 14, 13, 11, 12, 159, 160, 154, 153, 158, 157, 155, 156, 136, 135, 129, 130, 133, 134, 132, 131, 147, 148, 150, 149, 146, 145, 151, 152, 143, 144, 138, 137, 142, 141, 139, 140, 191, 192, 186, 185, 190, 189, 187, 188, 168, 167, 161, 162, 165, 166, 164, 163, 179, 180, 182, 181, 178, 177, 183, 184, 175, 176, 170, 169, 174, 173, 171, 172, 127, 128, 122, 121, 126, 125, 123, 124, 104, 103, 97, 98, 101, 102, 100, 99, 115, 116, 118, 117, 114, 113, 119, 120, 111, 112, 106, 105, 110, 109, 107, 108], [147, 148, 150, 149, 151, 152, 146, 145, 155, 156, 158, 157, 159, 160, 154, 153, 144, 143, 137, 138, 140, 139, 141, 142, 132, 131, 133, 134, 136, 135, 129, 130, 115, 116, 118, 117, 119, 120, 114, 113, 123, 124, 126, 125, 127, 128, 122, 121, 112, 111, 105, 106, 108, 107, 109, 110, 100, 99, 101, 102, 104, 103, 97, 98, 179, 180, 182, 181, 183, 184, 178, 177, 187, 188, 190, 189, 191, 192, 186, 185, 176, 175, 169, 170, 172, 171, 173, 174, 164, 163, 165, 166, 168, 167, 161, 162, 51, 52, 54, 53, 55, 56, 50, 49, 59, 60, 62, 61, 63, 64, 58, 57, 48, 47, 41, 42, 44, 43, 45, 46, 36, 35, 37, 38, 40, 39, 33, 34, 19, 20, 22, 21, 23, 24, 18, 17, 27, 28, 30, 29, 31, 32, 26, 25, 16, 15, 9, 10, 12, 11, 13, 14, 4, 3, 5, 6, 8, 7, 1, 2, 83, 84, 86, 85, 87, 88, 82, 81, 91, 92, 94, 93, 95, 96, 90, 89, 80, 79, 73, 74, 76, 75, 77, 78, 68, 67, 69, 70, 72, 71, 65, 66]];
cc:=[5,6,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.11-1.0.11-11-11
// Create group as a permutation group and initialize signature information.
gp_id:=[11,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,11,11,11];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1], [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1], [10, 11, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[2,2,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[22,2];
full_sign:=[0,2,11,22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1], [3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 2], [9, 10, 11, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[2,3,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1], [4, 5, 6, 7, 8, 9, 10, 11, 1, 2, 3], [8, 9, 10, 11, 1, 2, 3, 4, 5, 6, 7]];
cc:=[2,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1], [5, 6, 7, 8, 9, 10, 11, 1, 2, 3, 4], [7, 8, 9, 10, 11, 1, 2, 3, 4, 5, 6]];
cc:=[2,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1], [6, 7, 8, 9, 10, 11, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 11, 1, 2, 3, 4, 5]];
cc:=[2,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[22,2];
full_sign:=[0,2,11,22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 2], [3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 2], [8, 9, 10, 11, 1, 2, 3, 4, 5, 6, 7]];
cc:=[3,3,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[22,2];
full_sign:=[0,2,11,22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 2], [4, 5, 6, 7, 8, 9, 10, 11, 1, 2, 3], [7, 8, 9, 10, 11, 1, 2, 3, 4, 5, 6]];
cc:=[3,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 2], [5, 6, 7, 8, 9, 10, 11, 1, 2, 3, 4], [6, 7, 8, 9, 10, 11, 1, 2, 3, 4, 5]];
cc:=[3,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 2], [11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[3,11,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[22,2];
full_sign:=[0,2,11,22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 1, 2, 3], [4, 5, 6, 7, 8, 9, 10, 11, 1, 2, 3], [6, 7, 8, 9, 10, 11, 1, 2, 3, 4, 5]];
cc:=[4,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[22,2];
full_sign:=[0,2,11,22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 1, 2, 3], [5, 6, 7, 8, 9, 10, 11, 1, 2, 3, 4], [5, 6, 7, 8, 9, 10, 11, 1, 2, 3, 4]];
cc:=[4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[22,2];
full_sign:=[0,2,11,22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 7, 8, 9, 10, 11, 1, 2, 3], [10, 11, 1, 2, 3, 4, 5, 6, 7, 8, 9], [11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[4,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 1, 2, 3, 4], [9, 10, 11, 1, 2, 3, 4, 5, 6, 7, 8], [11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[5,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 9, 10, 11, 1, 2, 3, 4], [10, 11, 1, 2, 3, 4, 5, 6, 7, 8, 9], [10, 11, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[5,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[22,2];
full_sign:=[0,2,11,22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 1, 2, 3, 4, 5], [8, 9, 10, 11, 1, 2, 3, 4, 5, 6, 7], [11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[6,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 1, 2, 3, 4, 5], [9, 10, 11, 1, 2, 3, 4, 5, 6, 7, 8], [10, 11, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[6,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 1, 2, 3, 4, 5, 6], [11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]];
cc:=[7,7,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[22,2];
full_sign:=[0,2,11,22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 1, 2, 3, 4, 5, 6], [8, 9, 10, 11, 1, 2, 3, 4, 5, 6, 7], [10, 11, 1, 2, 3, 4, 5, 6, 7, 8, 9]];
cc:=[7,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 1, 2, 3, 4, 5, 6], [9, 10, 11, 1, 2, 3, 4, 5, 6, 7, 8], [9, 10, 11, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[7,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
full_auto:=[22,2];
full_sign:=[0,2,11,22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 9, 10, 11, 1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 1, 2, 3, 4, 5, 6, 7], [9, 10, 11, 1, 2, 3, 4, 5, 6, 7, 8]];
cc:=[8,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
full_auto:=[22,2];
full_sign:=[0,2,11,22];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.12-2.0.6-12-12
// Create group as a permutation group and initialize signature information.
gp_id:=[12,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,6,12,12];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1], [9, 10, 11, 12, 7, 8, 4, 3, 6, 5, 2, 1]];
cc:=[7,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 6, 5, 2, 1, 10, 9, 12, 11, 8, 7], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2], [10, 9, 12, 11, 8, 7, 3, 4, 5, 6, 1, 2]];
cc:=[7,11,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3], [11, 12, 7, 8, 9, 10, 6, 5, 2, 1, 4, 3]];
cc:=[8,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 2, 1, 4, 3, 12, 11, 8, 7, 10, 9], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4], [12, 11, 8, 7, 10, 9, 5, 6, 1, 2, 3, 4]];
cc:=[8,12,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[48,14];
full_sign:=[0,2,4,12];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.15-1.0.3-15-15
// Create group as a permutation group and initialize signature information.
gp_id:=[15,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,15,15];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5], [7, 8, 9, 10, 6, 12, 13, 14, 15, 11, 2, 3, 4, 5, 1], [10, 6, 7, 8, 9, 15, 11, 12, 13, 14, 5, 1, 2, 3, 4]];
cc:=[2,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[30,2];
full_sign:=[0,2,6,15];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5], [8, 9, 10, 6, 7, 13, 14, 15, 11, 12, 3, 4, 5, 1, 2], [9, 10, 6, 7, 8, 14, 15, 11, 12, 13, 4, 5, 1, 2, 3]];
cc:=[2,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[30,2];
full_sign:=[0,2,6,15];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [13, 14, 15, 11, 12, 3, 4, 5, 1, 2, 8, 9, 10, 6, 7], [14, 15, 11, 12, 13, 4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[3,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[30,2];
full_sign:=[0,2,6,15];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 13, 14, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [12, 13, 14, 15, 11, 2, 3, 4, 5, 1, 7, 8, 9, 10, 6], [15, 11, 12, 13, 14, 5, 1, 2, 3, 4, 10, 6, 7, 8, 9]];
cc:=[3,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[30,2];
full_sign:=[0,2,6,15];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.16-5.0.4-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,8,8];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 2, 1, 7, 8, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[7,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[64,8];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [11, 12, 10, 9, 15, 16, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 14, 13, 11, 12, 10, 9, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[7,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[64,8];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 1, 2, 8, 7, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[7,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[64,8];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [12, 11, 9, 10, 16, 15, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 13, 14, 12, 11, 9, 10, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[7,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[64,8];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 5, 6, 4, 3, 1, 2, 16, 15, 13, 14, 12, 11, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 3, 4, 2, 1, 7, 8, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[8,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[64,8];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 5, 6, 4, 3, 1, 2, 16, 15, 13, 14, 12, 11, 9, 10], [11, 12, 10, 9, 15, 16, 14, 13, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 13, 14, 12, 11, 9, 10, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[8,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[64,8];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 5, 6, 4, 3, 1, 2, 16, 15, 13, 14, 12, 11, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 4, 3, 1, 2, 8, 7, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[8,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[64,8];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[8, 7, 5, 6, 4, 3, 1, 2, 16, 15, 13, 14, 12, 11, 9, 10], [12, 11, 9, 10, 16, 15, 13, 14, 1, 2, 3, 4, 5, 6, 7, 8], [15, 16, 14, 13, 11, 12, 10, 9, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[8,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[64,8];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.16-6.0.4-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[16,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,8,8];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [9, 10, 11, 12, 14, 13, 16, 15, 3, 4, 2, 1, 8, 7, 5, 6], [14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 5, 6, 3, 4, 2, 1]];
cc:=[6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[64,32];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [11, 12, 10, 9, 16, 15, 13, 14, 2, 1, 4, 3, 5, 6, 7, 8], [15, 16, 14, 13, 12, 11, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[64,32];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.32-2.0.4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[32,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7, 25, 26, 27, 28, 29, 30, 31, 32, 18, 17, 20, 19, 22, 21, 24, 23], [17, 18, 19, 20, 21, 22, 23, 24, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 7, 8, 5, 6, 15, 16, 13, 14, 11, 12, 9, 10], [28, 27, 26, 25, 32, 31, 30, 29, 23, 24, 21, 22, 19, 20, 17, 18, 10, 9, 12, 11, 14, 13, 16, 15, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[9,13,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7, 25, 26, 27, 28, 29, 30, 31, 32, 18, 17, 20, 19, 22, 21, 24, 23], [19, 20, 17, 18, 23, 24, 21, 22, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 15, 16, 9, 10, 11, 12], [26, 25, 28, 27, 30, 29, 32, 31, 21, 22, 23, 24, 17, 18, 19, 20, 12, 11, 10, 9, 16, 15, 14, 13, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[9,14,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7, 25, 26, 27, 28, 29, 30, 31, 32, 18, 17, 20, 19, 22, 21, 24, 23], [18, 17, 20, 19, 22, 21, 24, 23, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 2, 1, 8, 7, 6, 5, 16, 15, 14, 13, 12, 11, 10, 9], [27, 28, 25, 26, 31, 32, 29, 30, 24, 23, 22, 21, 20, 19, 18, 17, 9, 10, 11, 12, 13, 14, 15, 16, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[9,15,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7, 25, 26, 27, 28, 29, 30, 31, 32, 18, 17, 20, 19, 22, 21, 24, 23], [20, 19, 18, 17, 24, 23, 22, 21, 32, 31, 30, 29, 28, 27, 26, 25, 2, 1, 4, 3, 6, 5, 8, 7, 14, 13, 16, 15, 10, 9, 12, 11], [25, 26, 27, 28, 29, 30, 31, 32, 22, 21, 24, 23, 18, 17, 20, 19, 11, 12, 9, 10, 15, 16, 13, 14, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[9,16,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8, 26, 25, 28, 27, 30, 29, 32, 31, 17, 18, 19, 20, 21, 22, 23, 24], [17, 18, 19, 20, 21, 22, 23, 24, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 7, 8, 5, 6, 15, 16, 13, 14, 11, 12, 9, 10], [27, 28, 25, 26, 31, 32, 29, 30, 24, 23, 22, 21, 20, 19, 18, 17, 9, 10, 11, 12, 13, 14, 15, 16, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[10,13,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8, 26, 25, 28, 27, 30, 29, 32, 31, 17, 18, 19, 20, 21, 22, 23, 24], [19, 20, 17, 18, 23, 24, 21, 22, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 15, 16, 9, 10, 11, 12], [25, 26, 27, 28, 29, 30, 31, 32, 22, 21, 24, 23, 18, 17, 20, 19, 11, 12, 9, 10, 15, 16, 13, 14, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[10,14,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8, 26, 25, 28, 27, 30, 29, 32, 31, 17, 18, 19, 20, 21, 22, 23, 24], [18, 17, 20, 19, 22, 21, 24, 23, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 2, 1, 8, 7, 6, 5, 16, 15, 14, 13, 12, 11, 10, 9], [28, 27, 26, 25, 32, 31, 30, 29, 23, 24, 21, 22, 19, 20, 17, 18, 10, 9, 12, 11, 14, 13, 16, 15, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[10,15,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8, 26, 25, 28, 27, 30, 29, 32, 31, 17, 18, 19, 20, 21, 22, 23, 24], [20, 19, 18, 17, 24, 23, 22, 21, 32, 31, 30, 29, 28, 27, 26, 25, 2, 1, 4, 3, 6, 5, 8, 7, 14, 13, 16, 15, 10, 9, 12, 11], [26, 25, 28, 27, 30, 29, 32, 31, 21, 22, 23, 24, 17, 18, 19, 20, 12, 11, 10, 9, 16, 15, 14, 13, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[10,16,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5, 27, 28, 25, 26, 31, 32, 29, 30, 20, 19, 18, 17, 24, 23, 22, 21], [17, 18, 19, 20, 21, 22, 23, 24, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 7, 8, 5, 6, 15, 16, 13, 14, 11, 12, 9, 10], [26, 25, 28, 27, 30, 29, 32, 31, 21, 22, 23, 24, 17, 18, 19, 20, 12, 11, 10, 9, 16, 15, 14, 13, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[11,13,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5, 27, 28, 25, 26, 31, 32, 29, 30, 20, 19, 18, 17, 24, 23, 22, 21], [19, 20, 17, 18, 23, 24, 21, 22, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 15, 16, 9, 10, 11, 12], [28, 27, 26, 25, 32, 31, 30, 29, 23, 24, 21, 22, 19, 20, 17, 18, 10, 9, 12, 11, 14, 13, 16, 15, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[11,14,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5, 27, 28, 25, 26, 31, 32, 29, 30, 20, 19, 18, 17, 24, 23, 22, 21], [18, 17, 20, 19, 22, 21, 24, 23, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 2, 1, 8, 7, 6, 5, 16, 15, 14, 13, 12, 11, 10, 9], [25, 26, 27, 28, 29, 30, 31, 32, 22, 21, 24, 23, 18, 17, 20, 19, 11, 12, 9, 10, 15, 16, 13, 14, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[11,15,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5, 27, 28, 25, 26, 31, 32, 29, 30, 20, 19, 18, 17, 24, 23, 22, 21], [20, 19, 18, 17, 24, 23, 22, 21, 32, 31, 30, 29, 28, 27, 26, 25, 2, 1, 4, 3, 6, 5, 8, 7, 14, 13, 16, 15, 10, 9, 12, 11], [27, 28, 25, 26, 31, 32, 29, 30, 24, 23, 22, 21, 20, 19, 18, 17, 9, 10, 11, 12, 13, 14, 15, 16, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[11,16,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6, 28, 27, 26, 25, 32, 31, 30, 29, 19, 20, 17, 18, 23, 24, 21, 22], [17, 18, 19, 20, 21, 22, 23, 24, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 1, 2, 7, 8, 5, 6, 15, 16, 13, 14, 11, 12, 9, 10], [25, 26, 27, 28, 29, 30, 31, 32, 22, 21, 24, 23, 18, 17, 20, 19, 11, 12, 9, 10, 15, 16, 13, 14, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[12,13,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6, 28, 27, 26, 25, 32, 31, 30, 29, 19, 20, 17, 18, 23, 24, 21, 22], [19, 20, 17, 18, 23, 24, 21, 22, 31, 32, 29, 30, 27, 28, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 15, 16, 9, 10, 11, 12], [27, 28, 25, 26, 31, 32, 29, 30, 24, 23, 22, 21, 20, 19, 18, 17, 9, 10, 11, 12, 13, 14, 15, 16, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[12,14,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6, 28, 27, 26, 25, 32, 31, 30, 29, 19, 20, 17, 18, 23, 24, 21, 22], [18, 17, 20, 19, 22, 21, 24, 23, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 2, 1, 8, 7, 6, 5, 16, 15, 14, 13, 12, 11, 10, 9], [26, 25, 28, 27, 30, 29, 32, 31, 21, 22, 23, 24, 17, 18, 19, 20, 12, 11, 10, 9, 16, 15, 14, 13, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[12,15,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6, 28, 27, 26, 25, 32, 31, 30, 29, 19, 20, 17, 18, 23, 24, 21, 22], [20, 19, 18, 17, 24, 23, 22, 21, 32, 31, 30, 29, 28, 27, 26, 25, 2, 1, 4, 3, 6, 5, 8, 7, 14, 13, 16, 15, 10, 9, 12, 11], [28, 27, 26, 25, 32, 31, 30, 29, 23, 24, 21, 22, 19, 20, 17, 18, 10, 9, 12, 11, 14, 13, 16, 15, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[12,16,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.32-6.0.4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[32,6];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[11, 12, 10, 9, 15, 16, 14, 13, 3, 4, 2, 1, 7, 8, 6, 5, 27, 28, 26, 25, 31, 32, 30, 29, 19, 20, 18, 17, 23, 24, 22, 21], [17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 26, 25, 28, 27, 3, 4, 1, 2, 8, 7, 6, 5, 16, 15, 14, 13, 11, 12, 9, 10], [25, 26, 28, 27, 30, 29, 31, 32, 21, 22, 24, 23, 18, 17, 19, 20, 12, 11, 9, 10, 15, 16, 14, 13, 7, 8, 6, 5, 4, 3, 1, 2]];
cc:=[7,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[64,32];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 10, 9, 15, 16, 14, 13, 3, 4, 2, 1, 7, 8, 6, 5, 27, 28, 26, 25, 31, 32, 30, 29, 19, 20, 18, 17, 23, 24, 22, 21], [19, 20, 17, 18, 24, 23, 22, 21, 31, 32, 29, 30, 28, 27, 26, 25, 1, 2, 3, 4, 6, 5, 8, 7, 14, 13, 16, 15, 9, 10, 11, 12], [28, 27, 25, 26, 31, 32, 30, 29, 24, 23, 21, 22, 19, 20, 18, 17, 9, 10, 12, 11, 14, 13, 15, 16, 6, 5, 7, 8, 1, 2, 4, 3]];
cc:=[7,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[64,32];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.32-5.0.2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[32,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,8,8];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [17, 18, 19, 20, 21, 22, 23, 24, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 2, 1, 7, 8, 6, 5, 15, 16, 14, 13, 11, 12, 10, 9], [28, 27, 25, 26, 32, 31, 29, 30, 24, 23, 21, 22, 20, 19, 17, 18, 9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[5,13,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [19, 20, 18, 17, 23, 24, 22, 21, 31, 32, 30, 29, 27, 28, 26, 25, 2, 1, 4, 3, 6, 5, 8, 7, 14, 13, 16, 15, 10, 9, 12, 11], [26, 25, 28, 27, 30, 29, 32, 31, 22, 21, 24, 23, 18, 17, 20, 19, 12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[5,14,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [18, 17, 20, 19, 22, 21, 24, 23, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 1, 2, 8, 7, 5, 6, 16, 15, 13, 14, 12, 11, 9, 10], [27, 28, 26, 25, 31, 32, 30, 29, 23, 24, 22, 21, 19, 20, 18, 17, 10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[5,15,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [20, 19, 17, 18, 24, 23, 21, 22, 32, 31, 29, 30, 28, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 15, 16, 9, 10, 11, 12], [25, 26, 27, 28, 29, 30, 31, 32, 21, 22, 23, 24, 17, 18, 19, 20, 11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[5,16,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [17, 18, 19, 20, 21, 22, 23, 24, 29, 30, 31, 32, 25, 26, 27, 28, 3, 4, 2, 1, 7, 8, 6, 5, 15, 16, 14, 13, 11, 12, 10, 9], [27, 28, 26, 25, 31, 32, 30, 29, 23, 24, 22, 21, 19, 20, 18, 17, 10, 9, 12, 11, 14, 13, 16, 15, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[6,13,18];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [19, 20, 18, 17, 23, 24, 22, 21, 31, 32, 30, 29, 27, 28, 26, 25, 2, 1, 4, 3, 6, 5, 8, 7, 14, 13, 16, 15, 10, 9, 12, 11], [25, 26, 27, 28, 29, 30, 31, 32, 21, 22, 23, 24, 17, 18, 19, 20, 11, 12, 10, 9, 15, 16, 14, 13, 7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[6,14,17];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [18, 17, 20, 19, 22, 21, 24, 23, 30, 29, 32, 31, 26, 25, 28, 27, 4, 3, 1, 2, 8, 7, 5, 6, 16, 15, 13, 14, 12, 11, 9, 10], [28, 27, 25, 26, 32, 31, 29, 30, 24, 23, 21, 22, 20, 19, 17, 18, 9, 10, 11, 12, 13, 14, 15, 16, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[6,15,20];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [20, 19, 17, 18, 24, 23, 21, 22, 32, 31, 29, 30, 28, 27, 25, 26, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 15, 16, 9, 10, 11, 12], [26, 25, 28, 27, 30, 29, 32, 31, 22, 21, 24, 23, 18, 17, 20, 19, 12, 11, 9, 10, 16, 15, 13, 14, 8, 7, 5, 6, 4, 3, 1, 2]];
cc:=[6,16,19];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[192,181];
full_sign:=[0,2,3,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.32-7.0.2-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[32,7];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,8,8];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 26, 25, 28, 27, 3, 4, 2, 1, 8, 7, 5, 6, 16, 15, 13, 14, 11, 12, 10, 9], [27, 28, 25, 26, 32, 31, 30, 29, 23, 24, 21, 22, 20, 19, 18, 17, 9, 10, 12, 11, 14, 13, 15, 16, 6, 5, 7, 8, 1, 2, 4, 3]];
cc:=[4,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[64,32];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [19, 20, 18, 17, 24, 23, 21, 22, 31, 32, 30, 29, 28, 27, 25, 26, 2, 1, 4, 3, 5, 6, 7, 8, 13, 14, 15, 16, 10, 9, 12, 11], [26, 25, 27, 28, 29, 30, 32, 31, 22, 21, 23, 24, 17, 18, 20, 19, 11, 12, 9, 10, 16, 15, 14, 13, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[64,32];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6, 27, 28, 25, 26, 31, 32, 29, 30, 19, 20, 17, 18, 23, 24, 21, 22], [17, 18, 19, 20, 22, 21, 24, 23, 29, 30, 31, 32, 26, 25, 28, 27, 3, 4, 2, 1, 8, 7, 5, 6, 16, 15, 13, 14, 11, 12, 10, 9], [26, 25, 27, 28, 29, 30, 32, 31, 22, 21, 23, 24, 17, 18, 20, 19, 11, 12, 9, 10, 16, 15, 14, 13, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[64,32];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6, 27, 28, 25, 26, 31, 32, 29, 30, 19, 20, 17, 18, 23, 24, 21, 22], [19, 20, 18, 17, 24, 23, 21, 22, 31, 32, 30, 29, 28, 27, 25, 26, 2, 1, 4, 3, 5, 6, 7, 8, 13, 14, 15, 16, 10, 9, 12, 11], [28, 27, 26, 25, 31, 32, 29, 30, 24, 23, 22, 21, 19, 20, 17, 18, 10, 9, 11, 12, 13, 14, 16, 15, 5, 6, 8, 7, 2, 1, 3, 4]];
cc:=[5,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[64,32];
full_sign:=[0,2,4,8];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.48-49.0.2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[48,49];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,6,6];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35], [29, 32, 30, 31, 33, 36, 34, 35, 25, 28, 26, 27, 41, 44, 42, 43, 45, 48, 46, 47, 37, 40, 38, 39, 5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15], [46, 48, 47, 45, 38, 40, 39, 37, 42, 44, 43, 41, 34, 36, 35, 33, 26, 28, 27, 25, 30, 32, 31, 29, 22, 24, 23, 21, 14, 16, 15, 13, 18, 20, 19, 17, 10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5]];
cc:=[6,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[96,195];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35], [33, 35, 36, 34, 25, 27, 28, 26, 29, 31, 32, 30, 45, 47, 48, 46, 37, 39, 40, 38, 41, 43, 44, 42, 9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6, 21, 23, 24, 22, 13, 15, 16, 14, 17, 19, 20, 18], [42, 43, 41, 44, 46, 47, 45, 48, 38, 39, 37, 40, 30, 31, 29, 32, 34, 35, 33, 36, 26, 27, 25, 28, 18, 19, 17, 20, 22, 23, 21, 24, 14, 15, 13, 16, 6, 7, 5, 8, 10, 11, 9, 12, 2, 3, 1, 4]];
cc:=[6,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[96,195];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15, 5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 41, 44, 42, 43, 45, 48, 46, 47, 37, 40, 38, 39, 29, 32, 30, 31, 33, 36, 34, 35, 25, 28, 26, 27], [46, 48, 47, 45, 38, 40, 39, 37, 42, 44, 43, 41, 34, 36, 35, 33, 26, 28, 27, 25, 30, 32, 31, 29, 22, 24, 23, 21, 14, 16, 15, 13, 18, 20, 19, 17, 10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5]];
cc:=[7,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[96,195];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23], [21, 23, 24, 22, 13, 15, 16, 14, 17, 19, 20, 18, 9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6, 45, 47, 48, 46, 37, 39, 40, 38, 41, 43, 44, 42, 33, 35, 36, 34, 25, 27, 28, 26, 29, 31, 32, 30], [42, 43, 41, 44, 46, 47, 45, 48, 38, 39, 37, 40, 30, 31, 29, 32, 34, 35, 33, 36, 26, 27, 25, 28, 18, 19, 17, 20, 22, 23, 21, 24, 14, 15, 13, 16, 6, 7, 5, 8, 10, 11, 9, 12, 2, 3, 1, 4]];
cc:=[7,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[96,195];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15, 5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 41, 44, 42, 43, 45, 48, 46, 47, 37, 40, 38, 39, 29, 32, 30, 31, 33, 36, 34, 35, 25, 28, 26, 27], [34, 36, 35, 33, 26, 28, 27, 25, 30, 32, 31, 29, 46, 48, 47, 45, 38, 40, 39, 37, 42, 44, 43, 41, 10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5, 22, 24, 23, 21, 14, 16, 15, 13, 18, 20, 19, 17]];
cc:=[8,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[96,195];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35, 14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [21, 23, 24, 22, 13, 15, 16, 14, 17, 19, 20, 18, 9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6, 45, 47, 48, 46, 37, 39, 40, 38, 41, 43, 44, 42, 33, 35, 36, 34, 25, 27, 28, 26, 29, 31, 32, 30], [30, 31, 29, 32, 34, 35, 33, 36, 26, 27, 25, 28, 42, 43, 41, 44, 46, 47, 45, 48, 38, 39, 37, 40, 6, 7, 5, 8, 10, 11, 9, 12, 2, 3, 1, 4, 18, 19, 17, 20, 22, 23, 21, 24, 14, 15, 13, 16]];
cc:=[8,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[96,195];
full_sign:=[0,2,4,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.60-5.0.3-3-5
// Create group as a permutation group and initialize signature information.
gp_id:=[60,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,5];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 21, 13, 42, 45, 9, 51, 3, 17, 20, 14, 36, 8, 27, 30, 19, 6, 38, 52, 55, 24, 41, 33, 2, 5, 29, 11, 23, 37, 40, 34, 56, 28, 47, 50, 39, 26, 58, 12, 15, 44, 1, 53, 22, 25, 49, 31, 43, 57, 60, 54, 16, 48, 7, 10, 59, 46, 18, 32, 35], [8, 42, 25, 19, 51, 13, 17, 55, 29, 36, 3, 27, 40, 44, 21, 58, 52, 10, 34, 46, 28, 2, 45, 39, 11, 33, 37, 15, 49, 56, 23, 47, 60, 4, 41, 18, 12, 30, 54, 6, 48, 22, 5, 59, 31, 53, 57, 35, 9, 16, 43, 7, 20, 24, 1, 38, 32, 50, 14, 26], [20, 44, 27, 31, 48, 30, 19, 42, 46, 58, 45, 29, 17, 56, 33, 35, 54, 12, 1, 43, 40, 4, 47, 51, 8, 50, 39, 2, 6, 18, 5, 49, 37, 16, 53, 55, 14, 32, 21, 3, 60, 24, 7, 11, 28, 10, 59, 22, 26, 38, 25, 9, 57, 36, 13, 15, 34, 52, 41, 23]];
cc:=[3,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[120,35];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 21, 13, 42, 45, 9, 51, 3, 17, 20, 14, 36, 8, 27, 30, 19, 6, 38, 52, 55, 24, 41, 33, 2, 5, 29, 11, 23, 37, 40, 34, 56, 28, 47, 50, 39, 26, 58, 12, 15, 44, 1, 53, 22, 25, 49, 31, 43, 57, 60, 54, 16, 48, 7, 10, 59, 46, 18, 32, 35], [31, 40, 17, 24, 28, 46, 25, 27, 54, 43, 56, 55, 42, 39, 18, 1, 30, 32, 9, 13, 51, 60, 37, 44, 48, 6, 45, 47, 14, 3, 16, 15, 2, 59, 38, 21, 50, 52, 29, 33, 11, 20, 57, 4, 8, 26, 5, 7, 34, 23, 36, 35, 22, 19, 58, 41, 10, 12, 49, 53], [52, 23, 15, 41, 34, 37, 53, 5, 16, 49, 22, 38, 10, 26, 59, 47, 8, 40, 51, 4, 12, 43, 35, 1, 54, 57, 13, 25, 36, 9, 42, 58, 30, 46, 19, 7, 28, 60, 11, 24, 32, 3, 55, 21, 14, 17, 33, 45, 56, 29, 2, 18, 50, 6, 39, 27, 48, 20, 31, 44]];
cc:=[3,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[120,35];
full_sign:=[0,2,3,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.20-4.0.2-2-2-10
// Create group as a permutation group and initialize signature information.
gp_id:=[20,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,10];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [15, 14, 13, 12, 11, 20, 19, 18, 17, 16, 5, 4, 3, 2, 1, 10, 9, 8, 7, 6], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 17, 18, 19, 20, 16, 12, 13, 14, 15, 11]];
cc:=[2,3,3,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [11, 15, 14, 13, 12, 16, 20, 19, 18, 17, 1, 5, 4, 3, 2, 6, 10, 9, 8, 7], [13, 12, 11, 15, 14, 18, 17, 16, 20, 19, 3, 2, 1, 5, 4, 8, 7, 6, 10, 9], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 19, 20, 16, 17, 18, 14, 15, 11, 12, 13]];
cc:=[2,3,3,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [16, 20, 19, 18, 17, 11, 15, 14, 13, 12, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1, 17, 18, 19, 20, 16, 12, 13, 14, 15, 11]];
cc:=[2,4,4,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15], [16, 20, 19, 18, 17, 11, 15, 14, 13, 12, 6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [18, 17, 16, 20, 19, 13, 12, 11, 15, 14, 8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3, 19, 20, 16, 17, 18, 14, 15, 11, 12, 13]];
cc:=[2,4,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 16, 17, 18, 19, 20, 11, 12, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.24-13.0.2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[24,13];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15], [10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5, 22, 24, 23, 21, 14, 16, 15, 13, 18, 20, 19, 17]];
cc:=[2,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3, 17, 20, 18, 19, 21, 24, 22, 23, 13, 16, 14, 15], [9, 11, 12, 10, 1, 3, 4, 2, 5, 7, 8, 6, 21, 23, 24, 22, 13, 15, 16, 14, 17, 19, 20, 18]];
cc:=[4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[48,48];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.24-8.0.2-2-2-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,6];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [15, 14, 13, 18, 17, 16, 24, 23, 22, 21, 20, 19, 3, 2, 1, 6, 5, 4, 12, 11, 10, 9, 8, 7], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4, 20, 21, 19, 23, 24, 22, 14, 15, 13, 17, 18, 16]];
cc:=[3,4,4,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [13, 15, 14, 16, 18, 17, 22, 24, 23, 19, 21, 20, 1, 3, 2, 4, 6, 5, 10, 12, 11, 7, 9, 8], [14, 13, 15, 17, 16, 18, 23, 22, 24, 20, 19, 21, 2, 1, 3, 5, 4, 6, 11, 10, 12, 8, 7, 9], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5, 21, 19, 20, 24, 22, 23, 15, 13, 14, 18, 16, 17]];
cc:=[3,4,4,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.48-48.0.2-2-2-3
// Create group as a permutation group and initialize signature information.
gp_id:=[48,48];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,3];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[14, 13, 16, 15, 18, 17, 20, 19, 22, 21, 24, 23, 2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 38, 37, 40, 39, 42, 41, 44, 43, 46, 45, 48, 47, 26, 25, 28, 27, 30, 29, 32, 31, 34, 33, 36, 35], [25, 27, 26, 28, 33, 35, 34, 36, 29, 31, 30, 32, 37, 39, 38, 40, 45, 47, 46, 48, 41, 43, 42, 44, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8, 13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20], [45, 48, 47, 46, 41, 44, 43, 42, 37, 40, 39, 38, 33, 36, 35, 34, 29, 32, 31, 30, 25, 28, 27, 26, 21, 24, 23, 22, 17, 20, 19, 18, 13, 16, 15, 14, 9, 12, 11, 10, 5, 8, 7, 6, 1, 4, 3, 2], [6, 7, 5, 8, 10, 11, 9, 12, 2, 3, 1, 4, 18, 19, 17, 20, 22, 23, 21, 24, 14, 15, 13, 16, 30, 31, 29, 32, 34, 35, 33, 36, 26, 27, 25, 28, 42, 43, 41, 44, 46, 47, 45, 48, 38, 39, 37, 40]];
cc:=[4,5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.10-2.0.2-2-10-10
// Create group as a permutation group and initialize signature information.
gp_id:=[10,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,10,10];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [7, 8, 9, 10, 6, 2, 3, 4, 5, 1], [10, 6, 7, 8, 9, 5, 1, 2, 3, 4]];
cc:=[2,2,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [6, 7, 8, 9, 10, 1, 2, 3, 4, 5], [9, 10, 6, 7, 8, 4, 5, 1, 2, 3], [8, 9, 10, 6, 7, 3, 4, 5, 1, 2]];
cc:=[2,2,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[20,4];
full_sign:=[0,2,2,2,10];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.12-3.0.3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[12,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [5, 8, 6, 7, 9, 12, 10, 11, 1, 4, 2, 3], [12, 10, 9, 11, 4, 2, 1, 3, 8, 6, 5, 7], [10, 12, 11, 9, 2, 4, 3, 1, 6, 8, 7, 5]];
cc:=[3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,48];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.12-5.0.2-2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,6,6];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[2,2,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,14];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,2,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[24,14];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[2,3,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4]];
cc:=[2,3,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[2,4,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[2,4,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[3,3,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[24,14];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[3,3,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[24,14];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [12, 10, 11, 9, 7, 8, 6, 4, 5, 3, 1, 2]];
cc:=[3,4,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1]];
cc:=[3,4,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[4,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[24,14];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4], [9, 7, 8, 12, 10, 11, 3, 1, 2, 6, 4, 5]];
cc:=[4,4,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[24,14];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.24-12.0.2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[24,12];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,3];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8], [13, 15, 14, 16, 21, 23, 22, 24, 17, 19, 18, 20, 1, 3, 2, 4, 9, 11, 10, 12, 5, 7, 6, 8], [7, 6, 8, 5, 11, 10, 12, 9, 3, 2, 4, 1, 19, 18, 20, 17, 23, 22, 24, 21, 15, 14, 16, 13], [12, 10, 9, 11, 4, 2, 1, 3, 8, 6, 5, 7, 24, 22, 21, 23, 16, 14, 13, 15, 20, 18, 17, 19]];
cc:=[3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[48,48];
full_sign:=[0,2,2,2,3];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.6-2.0.6-6-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,6,6,6,6];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[5,5,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,8];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.8-2.0.4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[5,5,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,27];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[5,5,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,27];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[5,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,27];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[6,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[32,27];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[6,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[32,27];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.8-4.0.4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,4,4,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 8, 7, 2, 1, 3, 4], [5, 6, 8, 7, 2, 1, 3, 4]];
cc:=[3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 2, 1, 7, 8, 6, 5], [3, 4, 2, 1, 7, 8, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 2, 1, 3, 4], [5, 6, 8, 7, 2, 1, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.16-8.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,8];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 2, 1, 3, 4, 8, 7, 6, 5], [10, 9, 11, 12, 16, 15, 14, 13, 1, 2, 4, 3, 7, 8, 5, 6]];
cc:=[3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.16-10.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,10];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,5,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,5,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,5,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,6,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,6,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,6,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,6,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,7,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,7,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,7,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,7,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,8,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,8,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,8,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,8,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,5,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,5,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[4,5,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,6,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,6,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[4,6,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,6,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,7,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[4,7,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,7,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,7,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[4,8,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=29;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,8,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=30;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,8,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=31;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,8,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=32;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[5,7,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=33;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[5,7,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=34;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[5,7,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=35;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,7,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=36;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[5,8,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=37;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[5,8,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=38;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,8,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=39;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[5,8,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=40;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[6,7,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=41;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[6,7,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=42;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[6,7,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=43;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[6,7,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=44;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[6,8,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=45;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[6,8,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=46;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [13, 14, 15, 16, 9, 10, 11, 12, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[6,8,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=47;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [14, 13, 16, 15, 10, 9, 12, 11, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[6,8,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=48;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.16-11.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,11];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3], [16, 15, 14, 13, 11, 12, 9, 10, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[5,6,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,27];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [13, 14, 15, 16, 10, 9, 12, 11, 5, 6, 7, 8, 2, 1, 4, 3], [16, 15, 14, 13, 11, 12, 9, 10, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[7,8,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,27];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.16-13.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,13];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [11, 12, 10, 9, 16, 15, 13, 14, 3, 4, 2, 1, 8, 7, 5, 6]];
cc:=[3,4,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [15, 16, 14, 13, 12, 11, 9, 10, 7, 8, 6, 5, 4, 3, 1, 2], [7, 8, 6, 5, 3, 4, 2, 1, 15, 16, 14, 13, 11, 12, 10, 9], [14, 13, 16, 15, 9, 10, 11, 12, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[3,5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 14, 13, 12, 11, 9, 10, 7, 8, 6, 5, 4, 3, 1, 2], [11, 12, 10, 9, 16, 15, 13, 14, 3, 4, 2, 1, 8, 7, 5, 6], [14, 13, 16, 15, 9, 10, 11, 12, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[4,5,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
full_auto:=[32,43];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.12-4.0.2-2-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,6,6];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[3,3,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
full_auto:=[24,14];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7], [6, 4, 5, 3, 1, 2, 12, 10, 11, 9, 7, 8]];
cc:=[4,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
full_auto:=[24,14];
full_sign:=[0,2,2,2,6];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.8-1.0.2-4-8-8
// Create group as a permutation group and initialize signature information.
gp_id:=[8,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,4,8,8];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [5, 6, 7, 8, 3, 4, 2, 1], [5, 6, 7, 8, 3, 4, 2, 1]];
cc:=[2,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [7, 8, 6, 5, 2, 1, 4, 3], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,3,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 2, 1, 7, 8, 6, 5], [6, 5, 8, 7, 4, 3, 1, 2], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[2,3,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 1, 2, 8, 7, 5, 6], [5, 6, 7, 8, 3, 4, 2, 1], [6, 5, 8, 7, 4, 3, 1, 2]];
cc:=[2,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 1, 2, 8, 7, 5, 6], [7, 8, 6, 5, 2, 1, 4, 3], [7, 8, 6, 5, 2, 1, 4, 3]];
cc:=[2,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 1, 2, 8, 7, 5, 6], [8, 7, 5, 6, 1, 2, 3, 4], [8, 7, 5, 6, 1, 2, 3, 4]];
cc:=[2,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.12-1.0.2-3-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[12,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [7, 9, 8, 10, 12, 11, 4, 6, 5, 1, 3, 2], [9, 8, 7, 12, 11, 10, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10], [10, 12, 11, 7, 9, 8, 1, 3, 2, 4, 6, 5], [12, 11, 10, 9, 8, 7, 3, 2, 1, 6, 5, 4]];
cc:=[2,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.16-3.0.2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[16,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [13, 14, 15, 16, 11, 12, 9, 10, 6, 5, 8, 7, 4, 3, 2, 1]];
cc:=[2,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [14, 13, 16, 15, 12, 11, 10, 9, 5, 6, 7, 8, 3, 4, 1, 2]];
cc:=[2,5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [14, 13, 16, 15, 12, 11, 10, 9, 5, 6, 7, 8, 3, 4, 1, 2]];
cc:=[2,6,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [13, 14, 15, 16, 11, 12, 9, 10, 6, 5, 8, 7, 4, 3, 2, 1]];
cc:=[2,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [16, 15, 14, 13, 10, 9, 12, 11, 7, 8, 5, 6, 1, 2, 3, 4]];
cc:=[3,5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [15, 16, 13, 14, 9, 10, 11, 12, 8, 7, 6, 5, 2, 1, 4, 3]];
cc:=[3,5,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [15, 16, 13, 14, 9, 10, 11, 12, 8, 7, 6, 5, 2, 1, 4, 3]];
cc:=[3,6,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [16, 15, 14, 13, 10, 9, 12, 11, 7, 8, 5, 6, 1, 2, 3, 4]];
cc:=[3,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [15, 16, 13, 14, 9, 10, 11, 12, 8, 7, 6, 5, 2, 1, 4, 3]];
cc:=[4,5,7,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [16, 15, 14, 13, 10, 9, 12, 11, 7, 8, 5, 6, 1, 2, 3, 4]];
cc:=[4,5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [16, 15, 14, 13, 10, 9, 12, 11, 7, 8, 5, 6, 1, 2, 3, 4]];
cc:=[4,6,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [15, 16, 13, 14, 9, 10, 11, 12, 8, 7, 6, 5, 2, 1, 4, 3]];
cc:=[4,6,8,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6]];
cc:=[5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
full_auto:=[32,27];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [13, 14, 15, 16, 11, 12, 9, 10, 6, 5, 8, 7, 4, 3, 2, 1], [16, 15, 14, 13, 10, 9, 12, 11, 7, 8, 5, 6, 1, 2, 3, 4]];
cc:=[5,5,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
full_auto:=[32,27];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5]];
cc:=[5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6]];
cc:=[5,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [13, 14, 15, 16, 11, 12, 9, 10, 6, 5, 8, 7, 4, 3, 2, 1], [15, 16, 13, 14, 9, 10, 11, 12, 8, 7, 6, 5, 2, 1, 4, 3]];
cc:=[5,6,9,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [16, 15, 14, 13, 10, 9, 12, 11, 7, 8, 5, 6, 1, 2, 3, 4], [14, 13, 16, 15, 12, 11, 10, 9, 5, 6, 7, 8, 3, 4, 1, 2]];
cc:=[5,6,10,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
full_auto:=[32,28];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 15, 16, 13, 14, 2, 1, 4, 3, 8, 7, 6, 5], [10, 9, 12, 11, 16, 15, 14, 13, 1, 2, 3, 4, 7, 8, 5, 6]];
cc:=[6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
full_auto:=[32,27];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [13, 14, 15, 16, 11, 12, 9, 10, 6, 5, 8, 7, 4, 3, 2, 1], [16, 15, 14, 13, 10, 9, 12, 11, 7, 8, 5, 6, 1, 2, 3, 4]];
cc:=[6,6,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
full_auto:=[32,27];
full_sign:=[0,2,2,2,4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label,full_auto:=full_auto, full_sign:=full_sign>);

// label = 5.24-14.0.2-2-2-6
// Create group as a permutation group and initialize signature information.
gp_id:=[24,14];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,6];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1, 23, 24, 22, 20, 21, 19, 17, 18, 16, 14, 15, 13]];
cc:=[2,5,7,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4, 20, 21, 19, 23, 24, 22, 14, 15, 13, 17, 18, 16]];
cc:=[2,5,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4, 20, 21, 19, 23, 24, 22, 14, 15, 13, 17, 18, 16]];
cc:=[2,6,7,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1, 23, 24, 22, 20, 21, 19, 17, 18, 16, 14, 15, 13]];
cc:=[2,6,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9, 16, 17, 18, 13, 14, 15, 22, 23, 24, 19, 20, 21];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [18, 17, 16, 15, 14, 13, 24, 23, 22, 21, 20, 19, 6, 5, 4, 3, 2, 1, 12, 11, 10, 9, 8, 7], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1, 23, 24, 22, 20, 21, 19, 17, 18, 16, 14, 15, 13]];
cc:=[3,5,6,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7, 17, 18, 16, 14, 15, 13, 23, 24, 22, 20, 21, 19]];
cc:=[3,5,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7, 17, 18, 16, 14, 15, 13, 23, 24, 22, 20, 21, 19]];
cc:=[3,6,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18], [19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [11, 12, 10, 8, 9, 7, 5, 6, 4, 2, 3, 1, 23, 24, 22, 20, 21, 19, 17, 18, 16, 14, 15, 13]];
cc:=[3,7,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [18, 17, 16, 15, 14, 13, 24, 23, 22, 21, 20, 19, 6, 5, 4, 3, 2, 1, 12, 11, 10, 9, 8, 7], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4, 20, 21, 19, 23, 24, 22, 14, 15, 13, 17, 18, 16]];
cc:=[4,5,6,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15], [13, 15, 14, 16, 18, 17, 19, 21, 20, 22, 24, 23, 1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11], [21, 20, 19, 24, 23, 22, 15, 14, 13, 18, 17, 16, 9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7, 17, 18, 16, 14, 15, 13, 23, 24, 22, 20, 21, 19]];
cc:=[4,5,7,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15], [16, 18, 17, 13, 15, 14, 22, 24, 23, 19, 21, 20, 4, 6, 5, 1, 3, 2, 10, 12, 11, 7, 9, 8], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [5, 6, 4, 2, 3, 1, 11, 12, 10, 8, 9, 7, 17, 18, 16, 14, 15, 13, 23, 24, 22, 20, 21, 19]];
cc:=[4,6,8,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15], [19, 21, 20, 22, 24, 23, 13, 15, 14, 16, 18, 17, 7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [8, 9, 7, 11, 12, 10, 2, 3, 1, 5, 6, 4, 20, 21, 19, 23, 24, 22, 14, 15, 13, 17, 18, 16]];
cc:=[4,7,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![10, 11, 12, 7, 8, 9, 4, 5, 6, 1, 2, 3, 22, 23, 24, 19, 20, 21, 16, 17, 18, 13, 14, 15];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.32-27.0.2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[32,27];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [29, 30, 31, 32, 26, 25, 28, 27, 23, 24, 21, 22, 20, 19, 18, 17, 13, 14, 15, 16, 10, 9, 12, 11, 7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[5,7,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [30, 29, 32, 31, 25, 26, 27, 28, 24, 23, 22, 21, 19, 20, 17, 18, 14, 13, 16, 15, 9, 10, 11, 12, 8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[5,8,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4, 29, 30, 31, 32, 25, 26, 27, 28, 21, 22, 23, 24, 17, 18, 19, 20], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [25, 26, 27, 28, 30, 29, 32, 31, 19, 20, 17, 18, 24, 23, 22, 21, 9, 10, 11, 12, 14, 13, 16, 15, 3, 4, 1, 2, 8, 7, 6, 5]];
cc:=[5,9,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3, 30, 29, 32, 31, 26, 25, 28, 27, 22, 21, 24, 23, 18, 17, 20, 19], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [26, 25, 28, 27, 29, 30, 31, 32, 20, 19, 18, 17, 23, 24, 21, 22, 10, 9, 12, 11, 13, 14, 15, 16, 4, 3, 2, 1, 7, 8, 5, 6]];
cc:=[5,10,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10, 23, 24, 21, 22, 19, 20, 17, 18, 31, 32, 29, 30, 27, 28, 25, 26], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [31, 32, 29, 30, 28, 27, 26, 25, 21, 22, 23, 24, 18, 17, 20, 19, 15, 16, 13, 14, 12, 11, 10, 9, 5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[6,7,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10, 23, 24, 21, 22, 19, 20, 17, 18, 31, 32, 29, 30, 27, 28, 25, 26], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [32, 31, 30, 29, 27, 28, 25, 26, 22, 21, 24, 23, 17, 18, 19, 20, 16, 15, 14, 13, 11, 12, 9, 10, 6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[6,8,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10, 23, 24, 21, 22, 19, 20, 17, 18, 31, 32, 29, 30, 27, 28, 25, 26], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4, 29, 30, 31, 32, 25, 26, 27, 28, 21, 22, 23, 24, 17, 18, 19, 20], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [27, 28, 25, 26, 32, 31, 30, 29, 17, 18, 19, 20, 22, 21, 24, 23, 11, 12, 9, 10, 16, 15, 14, 13, 1, 2, 3, 4, 6, 5, 8, 7]];
cc:=[6,9,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10, 23, 24, 21, 22, 19, 20, 17, 18, 31, 32, 29, 30, 27, 28, 25, 26], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3, 30, 29, 32, 31, 26, 25, 28, 27, 22, 21, 24, 23, 18, 17, 20, 19], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [28, 27, 26, 25, 31, 32, 29, 30, 18, 17, 20, 19, 21, 22, 23, 24, 12, 11, 10, 9, 15, 16, 13, 14, 2, 1, 4, 3, 5, 6, 7, 8]];
cc:=[6,10,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4, 29, 30, 31, 32, 25, 26, 27, 28, 21, 22, 23, 24, 17, 18, 19, 20], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [21, 22, 23, 24, 18, 17, 20, 19, 31, 32, 29, 30, 28, 27, 26, 25, 5, 6, 7, 8, 2, 1, 4, 3, 15, 16, 13, 14, 12, 11, 10, 9]];
cc:=[7,9,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 25, 26, 27, 28, 29, 30, 31, 32, 17, 18, 19, 20, 21, 22, 23, 24], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3, 30, 29, 32, 31, 26, 25, 28, 27, 22, 21, 24, 23, 18, 17, 20, 19], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [22, 21, 24, 23, 17, 18, 19, 20, 32, 31, 30, 29, 27, 28, 25, 26, 6, 5, 8, 7, 1, 2, 3, 4, 16, 15, 14, 13, 11, 12, 9, 10]];
cc:=[7,10,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4, 29, 30, 31, 32, 25, 26, 27, 28, 21, 22, 23, 24, 17, 18, 19, 20], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [22, 21, 24, 23, 17, 18, 19, 20, 32, 31, 30, 29, 27, 28, 25, 26, 6, 5, 8, 7, 1, 2, 3, 4, 16, 15, 14, 13, 11, 12, 9, 10]];
cc:=[8,9,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7, 26, 25, 28, 27, 30, 29, 32, 31, 18, 17, 20, 19, 22, 21, 24, 23], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3, 30, 29, 32, 31, 26, 25, 28, 27, 22, 21, 24, 23, 18, 17, 20, 19], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [21, 22, 23, 24, 18, 17, 20, 19, 31, 32, 29, 30, 28, 27, 26, 25, 5, 6, 7, 8, 2, 1, 4, 3, 15, 16, 13, 14, 12, 11, 10, 9]];
cc:=[8,10,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.32-28.0.2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[32,28];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [26, 25, 28, 27, 29, 30, 31, 32, 18, 17, 20, 19, 21, 22, 23, 24, 10, 9, 12, 11, 13, 14, 15, 16, 2, 1, 4, 3, 5, 6, 7, 8], [16, 15, 14, 13, 12, 11, 10, 9, 6, 5, 8, 7, 2, 1, 4, 3, 32, 31, 30, 29, 28, 27, 26, 25, 22, 21, 24, 23, 18, 17, 20, 19]];
cc:=[5,7,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12, 21, 22, 23, 24, 17, 18, 19, 20, 29, 30, 31, 32, 25, 26, 27, 28], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23, 9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [15, 16, 13, 14, 11, 12, 9, 10, 5, 6, 7, 8, 1, 2, 3, 4, 31, 32, 29, 30, 27, 28, 25, 26, 21, 22, 23, 24, 17, 18, 19, 20]];
cc:=[5,7,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10, 23, 24, 21, 22, 19, 20, 17, 18, 31, 32, 29, 30, 27, 28, 25, 26], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [25, 26, 27, 28, 30, 29, 32, 31, 17, 18, 19, 20, 22, 21, 24, 23, 9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 7, 8, 5, 6, 3, 4, 1, 2, 29, 30, 31, 32, 25, 26, 27, 28, 23, 24, 21, 22, 19, 20, 17, 18]];
cc:=[6,7,8,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10, 23, 24, 21, 22, 19, 20, 17, 18, 31, 32, 29, 30, 27, 28, 25, 26], [17, 18, 19, 20, 22, 21, 24, 23, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 3, 4, 6, 5, 8, 7, 11, 12, 9, 10, 16, 15, 14, 13], [26, 25, 28, 27, 29, 30, 31, 32, 18, 17, 20, 19, 21, 22, 23, 24, 10, 9, 12, 11, 13, 14, 15, 16, 2, 1, 4, 3, 5, 6, 7, 8], [14, 13, 16, 15, 10, 9, 12, 11, 8, 7, 6, 5, 4, 3, 2, 1, 30, 29, 32, 31, 26, 25, 28, 27, 24, 23, 22, 21, 20, 19, 18, 17]];
cc:=[6,7,8,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.32-43.0.2-2-2-4
// Create group as a permutation group and initialize signature information.
gp_id:=[32,43];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[9, 10, 12, 11, 13, 14, 16, 15, 1, 2, 4, 3, 5, 6, 8, 7, 25, 26, 28, 27, 29, 30, 32, 31, 17, 18, 20, 19, 21, 22, 24, 23], [13, 14, 16, 15, 9, 10, 12, 11, 5, 6, 8, 7, 1, 2, 4, 3, 29, 30, 32, 31, 25, 26, 28, 27, 21, 22, 24, 23, 17, 18, 20, 19], [17, 18, 20, 19, 22, 21, 23, 24, 27, 28, 25, 26, 32, 31, 30, 29, 1, 2, 4, 3, 6, 5, 7, 8, 11, 12, 9, 10, 16, 15, 14, 13], [21, 22, 24, 23, 18, 17, 19, 20, 31, 32, 29, 30, 28, 27, 26, 25, 5, 6, 8, 7, 2, 1, 3, 4, 15, 16, 13, 14, 12, 11, 10, 9]];
cc:=[4,5,6,9];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.6-2.0.2-2-3-6-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,3,6,6];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [5, 6, 4, 2, 3, 1], [5, 6, 4, 2, 3, 1]];
cc:=[2,2,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2], [6, 4, 5, 3, 1, 2]];
cc:=[2,2,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.6-2.0.2-3-3-3-6
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,3,3,3,6];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [6, 4, 5, 3, 1, 2]];
cc:=[2,3,3,4,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5], [3, 1, 2, 6, 4, 5], [5, 6, 4, 2, 3, 1]];
cc:=[2,3,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1, 5, 6, 4];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 5.8-2.0.2-2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,2,3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,2,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,2,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,2,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[2,3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,3,3,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,3,3,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,3,3,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,3,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [5, 6, 7, 8, 2, 1, 4, 3]];
cc:=[2,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [6, 5, 8, 7, 1, 2, 3, 4]];
cc:=[2,4,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 4, 3, 2, 1], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[2,4,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 3, 4, 1, 2], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[2,4,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 2, 1, 4, 3], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,3,3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,3,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,3,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,3,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[3,4,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[3,4,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 2, 1, 4, 3], [7, 8, 5, 6, 4, 3, 2, 1]];
cc:=[4,4,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 1, 2, 3, 4], [8, 7, 6, 5, 3, 4, 1, 2]];
cc:=[4,4,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.8-3.0.2-2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 6, 5, 3, 4, 2, 1], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[2,3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [7, 8, 6, 5, 3, 4, 2, 1], [7, 8, 6, 5, 3, 4, 2, 1]];
cc:=[2,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.10-1.0.2-2-2-2-5
// Create group as a permutation group and initialize signature information.
gp_id:=[10,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,5];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 4, 5, 1, 7, 8, 9, 10, 6]];
cc:=[2,2,2,2,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [6, 10, 9, 8, 7, 1, 5, 4, 3, 2], [8, 7, 6, 10, 9, 3, 2, 1, 5, 4], [4, 5, 1, 2, 3, 9, 10, 6, 7, 8]];
cc:=[2,2,2,2,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.12-4.0.2-2-2-2-3
// Create group as a permutation group and initialize signature information.
gp_id:=[12,4];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,3];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [9, 8, 7, 12, 11, 10, 3, 2, 1, 6, 5, 4], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10]];
cc:=[2,2,3,3,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10]];
cc:=[2,2,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3, 10, 11, 12, 7, 8, 9];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [7, 9, 8, 10, 12, 11, 1, 3, 2, 4, 6, 5], [10, 12, 11, 7, 9, 8, 4, 6, 5, 1, 3, 2], [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1], [2, 3, 1, 5, 6, 4, 8, 9, 7, 11, 12, 10]];
cc:=[3,3,4,4,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.16-7.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[16,7];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [5, 6, 8, 7, 1, 2, 4, 3, 13, 14, 16, 15, 9, 10, 12, 11], [9, 10, 12, 11, 15, 16, 13, 14, 1, 2, 4, 3, 7, 8, 5, 6], [10, 9, 11, 12, 16, 15, 14, 13, 2, 1, 3, 4, 8, 7, 6, 5]];
cc:=[2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.16-11.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[16,11];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [12, 11, 10, 9, 15, 16, 13, 14, 4, 3, 2, 1, 7, 8, 5, 6]];
cc:=[2,5,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5]];
cc:=[3,5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7]];
cc:=[3,5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5]];
cc:=[3,5,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5]];
cc:=[3,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [12, 11, 10, 9, 15, 16, 13, 14, 4, 3, 2, 1, 7, 8, 5, 6]];
cc:=[4,5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [10, 9, 12, 11, 13, 14, 15, 16, 2, 1, 4, 3, 5, 6, 7, 8]];
cc:=[4,5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 16, 15, 14, 13, 3, 4, 1, 2, 8, 7, 6, 5], [12, 11, 10, 9, 15, 16, 13, 14, 4, 3, 2, 1, 7, 8, 5, 6]];
cc:=[4,5,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 14, 13, 16, 15, 1, 2, 3, 4, 6, 5, 8, 7], [12, 11, 10, 9, 15, 16, 13, 14, 4, 3, 2, 1, 7, 8, 5, 6]];
cc:=[4,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.16-14.0.2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[16,14];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,5,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,5,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,5,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,3,5,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,6,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,6,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,3,6,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,6,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,7,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,3,7,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,7,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,7,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,3,8,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,3,8,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,8,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,8,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,4,5,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,5,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,4,5,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,4,5,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,6,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,4,6,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,4,6,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,4,6,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,4,7,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,4,7,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,4,7,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,7,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,4,8,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=29;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,4,8,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=30;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,8,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=31;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,4,8,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=32;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[2,5,7,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=33;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[2,5,7,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=34;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,7,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=35;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,5,7,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=36;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[2,5,8,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=37;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[2,5,8,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=38;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,5,8,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=39;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,5,8,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=40;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[2,6,7,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=41;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[2,6,7,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=42;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,6,7,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=43;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,6,7,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=44;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[2,6,8,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=45;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[2,6,8,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=46;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,6,8,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=47;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,6,8,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=48;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,9,11,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=49;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,9,11,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=50;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,9,12,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=51;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,9,12,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=52;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,10,11,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=53;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,10,11,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=54;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,10,12,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=55;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7, 10, 9, 12, 11, 14, 13, 16, 15], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,10,12,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=56;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,4,5,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=57;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,4,5,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=58;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,5,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=59;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,4,5,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=60;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,4,6,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=61;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,4,6,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=62;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,4,6,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=63;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,6,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=64;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,7,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=65;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,4,7,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=66;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,4,7,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=67;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,4,7,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=68;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,4,8,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=69;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,8,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=70;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,4,8,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=71;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,4,8,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=72;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[3,5,6,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=73;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[3,5,6,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=74;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,6,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=75;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,5,6,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=76;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[3,5,8,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=77;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[3,5,8,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=78;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,5,8,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=79;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,5,8,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=80;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[3,6,7,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=81;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[3,6,7,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=82;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,6,7,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=83;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,6,7,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=84;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[3,7,8,9,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=85;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[3,7,8,10,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=86;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,7,8,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=87;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,7,8,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=88;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,9,10,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=89;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,9,10,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=90;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,9,12,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=91;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,9,12,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=92;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,10,11,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=93;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,10,11,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=94;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,11,12,13,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=95;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6, 11, 12, 9, 10, 15, 16, 13, 14], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,11,12,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=96;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[4,5,6,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=97;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[4,5,6,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=98;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,5,6,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=99;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,6,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=100;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[4,5,7,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=101;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[4,5,7,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=102;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,5,7,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=103;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,5,7,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=104;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7]];
cc:=[4,6,8,9,10];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=105;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[4,6,8,11,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=106;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,6,8,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=107;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,6,8,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=108;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6]];
cc:=[4,7,8,9,11];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=109;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5]];
cc:=[4,7,8,10,12];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=110;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,7,8,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=111;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,7,8,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=112;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,9,10,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=113;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,9,10,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=114;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,9,11,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=115;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,9,11,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=116;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,10,12,13,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=117;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,10,12,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=118;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,11,12,13,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=119;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5, 12, 11, 10, 9, 16, 15, 14, 13], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,11,12,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=120;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,6,7,9,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=121;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[5,6,7,10,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=122;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[5,6,7,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=123;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[5,6,7,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=124;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[5,6,8,9,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=125;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,6,8,10,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=126;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[5,6,8,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=127;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[5,6,8,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=128;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[5,7,8,9,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=129;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[5,7,8,10,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=130;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,7,8,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=131;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[5,7,8,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=132;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,9,10,11,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=133;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[5,9,10,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=134;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[5,9,11,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=135;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,9,14,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=136;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[5,10,11,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=137;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,10,13,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=138;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,11,13,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=139;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4, 13, 14, 15, 16, 9, 10, 11, 12], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[5,12,13,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=140;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[6,7,8,9,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=141;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[6,7,8,10,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=142;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[6,7,8,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=143;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[6,7,8,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=144;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[6,9,10,11,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=145;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[6,9,10,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=146;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[6,9,11,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=147;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[6,9,13,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=148;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[6,10,11,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=149;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[6,10,14,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=150;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[6,11,13,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=151;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3, 14, 13, 16, 15, 10, 9, 12, 11], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[6,12,13,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=152;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[7,9,10,11,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=153;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[7,9,10,12,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=154;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[7,9,11,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=155;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[7,9,13,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=156;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[7,10,11,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=157;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[7,10,13,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=158;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[7,11,14,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=159;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[7, 8, 5, 6, 3, 4, 1, 2, 15, 16, 13, 14, 11, 12, 9, 10], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[7,12,13,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=160;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[8,9,10,11,13];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=161;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[8,9,10,12,14];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=162;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[8,9,11,12,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=163;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [9, 10, 11, 12, 13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[8,9,13,14,15];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=164;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[8,10,11,12,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=165;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [10, 9, 12, 11, 14, 13, 16, 15, 2, 1, 4, 3, 6, 5, 8, 7], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[8,10,13,14,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=166;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [11, 12, 9, 10, 15, 16, 13, 14, 3, 4, 1, 2, 7, 8, 5, 6], [13, 14, 15, 16, 9, 10, 11, 12, 5, 6, 7, 8, 1, 2, 3, 4], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[8,11,13,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=167;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[8, 7, 6, 5, 4, 3, 2, 1, 16, 15, 14, 13, 12, 11, 10, 9], [12, 11, 10, 9, 16, 15, 14, 13, 4, 3, 2, 1, 8, 7, 6, 5], [14, 13, 16, 15, 10, 9, 12, 11, 6, 5, 8, 7, 2, 1, 4, 3], [15, 16, 13, 14, 11, 12, 9, 10, 7, 8, 5, 6, 3, 4, 1, 2], [16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[8,12,14,15,16];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=168;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.4-1.0.2-2-4-4-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,4,4,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1], [3, 4, 2, 1]];
cc:=[2,2,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,2,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.6-1.0.2-2-2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,3,3];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [4, 6, 5, 1, 3, 2], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.6-2.0.2-2-2-2-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[6,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,3,3];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [4, 5, 6, 1, 2, 3], [2, 3, 1, 5, 6, 4], [3, 1, 2, 6, 4, 5]];
cc:=[2,2,2,2,3,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 5, 6, 1, 2, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.8-3.0.2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[8,3];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3]];
cc:=[2,2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3]];
cc:=[3,3,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3], [5, 6, 8, 7, 1, 2, 4, 3]];
cc:=[3,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.8-5.0.2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[8,5];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,2,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,2,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,2,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3, 6, 5, 8, 7];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,2,3,3,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,2,3,3,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,3,3,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,3,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,2,3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,3,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[2,2,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[2,2,4,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,4,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=13;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,4,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=14;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,5,5,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=15;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,5,5,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=16;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,5,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=17;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,2,6,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=18;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [2, 1, 4, 3, 6, 5, 8, 7], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,2,6,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=19;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,3,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=20;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,3,3,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=21;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,3,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=22;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,3,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=23;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,4,4,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=24;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,4,4,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=25;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,5,5,5,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=26;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,5,5,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=27;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,5,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=28;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,5,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=29;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,5,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=30;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,6,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=31;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,3,6,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=32;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,3,6,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=33;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,4,4,4,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=34;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,4,4,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=35;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,4,5,5,5,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=36;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,5,5,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=37;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,4,5,6,6,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=38;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[2,4,5,7,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=39;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,5,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=40;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,6,6,6,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=41;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,6,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=42;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3, 6, 5, 8, 7], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[2,4,6,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=43;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,3,3,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=44;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,3,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=45;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2, 7, 8, 5, 6];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4]];
cc:=[3,3,4,4,5,5];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=46;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,3,4,4,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=47;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,3,4,4,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=48;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,4,4,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=49;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,3,5,5,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=50;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,5,5,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=51;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,5,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=52;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,3,6,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=53;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [3, 4, 1, 2, 7, 8, 5, 6], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,3,7,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=54;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,4,4,4,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=55;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,4,4,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=56;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1, 8, 7, 6, 5];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,4,5,5,5,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=57;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,5,5,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=58;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[3,4,5,6,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=59;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[3,4,5,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=60;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,5,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=61;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=62;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,7,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=63;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2, 7, 8, 5, 6], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[3,4,7,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=64;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3]];
cc:=[4,4,5,5,6,6];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=65;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[4,4,5,5,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=66;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,4,5,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=67;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,4,6,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=68;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[4, 3, 2, 1, 8, 7, 6, 5], [4, 3, 2, 1, 8, 7, 6, 5], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[4,4,7,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=69;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,5,5,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=70;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![5, 6, 7, 8, 1, 2, 3, 4];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2]];
cc:=[5,5,6,6,7,7];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=71;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,5,6,6,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=72;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4], [5, 6, 7, 8, 1, 2, 3, 4], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,5,7,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=73;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,6,6,6,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=74;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![6, 5, 8, 7, 2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,6,7,7,7,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=75;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![7, 8, 5, 6, 3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[5, 6, 7, 8, 1, 2, 3, 4], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[5,6,7,8,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=76;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![8, 7, 6, 5, 4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[6, 5, 8, 7, 2, 1, 4, 3], [6, 5, 8, 7, 2, 1, 4, 3], [7, 8, 5, 6, 3, 4, 1, 2], [7, 8, 5, 6, 3, 4, 1, 2], [8, 7, 6, 5, 4, 3, 2, 1], [8, 7, 6, 5, 4, 3, 2, 1]];
cc:=[6,6,7,7,8,8];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=77;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.3-1.0.3-3-3-3-3-3-3
// Create group as a permutation group and initialize signature information.
gp_id:=[3,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,3,3,3,3,3,3,3];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [2, 3, 1], [3, 1, 2], [3, 1, 2]];
cc:=[2,2,2,2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// Here we add an action to data.
gen_vectors:=[[2, 3, 1], [2, 3, 1], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2], [3, 1, 2]];
cc:=[2,2,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=true;
cyc_auto:=S![2, 3, 1];
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, is_cyclic_trigonal:=is_cyclic_trigonal, cyc_auto:=cyc_auto >);

// label = 5.4-1.0.2-2-2-2-2-4-4
// Create group as a permutation group and initialize signature information.
gp_id:=[4,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,4,4];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 2, 1], [3, 4, 2, 1]];
cc:=[2,2,2,2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 1, 2], [4, 3, 1, 2]];
cc:=[2,2,2,2,2,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.4-2.0.2-2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[4,2];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2]];
cc:=[2,2,2,2,2,2,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,2,2,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=2;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1, 4, 3];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2]];
cc:=[2,2,2,2,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=3;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=4;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,2,2,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=5;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2]];
cc:=[2,2,3,3,3,3,3,3];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=6;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,3,3,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=7;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,3,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=8;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[2, 1, 4, 3], [2, 1, 4, 3], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[2,2,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=9;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[3,3,3,3,3,3,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=10;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![3, 4, 1, 2];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[3,3,3,3,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=11;
gen_vect_label:=1;
is_hyperelliptic:=false;
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic,is_cyclic_trigonal:=is_cyclic_trigonal >);

// Here we add an action to data.
gen_vectors:=[[3, 4, 1, 2], [3, 4, 1, 2], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1], [4, 3, 2, 1]];
cc:=[3,3,4,4,4,4,4,4];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=12;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![4, 3, 2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);

// label = 5.2-1.0.2-2-2-2-2-2-2-2-2-2-2-2
// Create group as a permutation group and initialize signature information.
gp_id:=[2,1];
H:=SmallGroup(gp_id[1],gp_id[2]); n:=#H; LP:=[]; LG:=[g : g in H]; for i in [1..n] do x:=LG[i]; Tx:=[LG[j]*x : j in [1..n]]; permL:=[]; for j in [1..n] do for k in [1..n] do if Tx[j] eq LG[k] then permL[j]:=k;  break; end if; end for; end for; Append(~LP,permL); end for; G:=PermutationGroup<n|LP>; 
signature:=[0,2,2,2,2,2,2,2,2,2,2,2,2];
genus:=5;
r:=#signature-1;
g0:=signature[1];
dim:=3*g0-3+r;
S:=Sym(gp_id[1]);

// Here we add an action to data.
gen_vectors:=[[2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1], [2, 1]];
cc:=[2,2,2,2,2,2,2,2,2,2,2,2];
gen_vectors_as_perm:=[S!perm : perm in gen_vectors];
passport_label:=1;
gen_vect_label:=1;
is_hyperelliptic:=true;
hyp_involution:=S![2, 1];
is_cyclic_trigonal:=false;
Append(~data, rec<RecFormat | group:=G, gp_id:=gp_id, signature:=signature, gen_vectors:=gen_vectors_as_perm, conj_classes:=cc, genus:=genus, dimension:=dim, r:=r, g0:=g0, passport_label:= passport_label,gen_vect_label:=gen_vect_label, is_hyperelliptic:=is_hyperelliptic, hyp_involution:=hyp_involution,is_cyclic_trigonal:=is_cyclic_trigonal >);


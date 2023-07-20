load "magma/db/generatorsfromdb.m";
load "magma/signatures/signatures.m";

for g in [2..3] do
for signature in Signatures(g) do
	M:=signature`M;
	d:=signature`d;
	print M,d;
	for n in [1..NumberOfSmallGroups(d)] do
		test,generatorsOrMessage,G:=generatorsFromDb(d,n,M);
		if not test then
			print d,n,M, "excluded because :",generatorsOrMessage;
		elif IsEmpty(generatorsOrMessage) then
			print d,n,M, "no generators";
		else
			print "found some generators for ",d,n,M;
			print generatorsOrMessage;
		end if;
	end for;
end for;
end for;	
		


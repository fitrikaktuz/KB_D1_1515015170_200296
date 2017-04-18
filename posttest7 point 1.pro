DOMAINS
integerlist = integer* %integerlist sama dengan integerlist
 
PREDICATES
tambah(integerlist,integerlist,integerlist) %predikat tambah dgn parameter (integerlist,v,integerlist)

CLAUSES
tambah([],List,List). %tambah dgn parameter (listkososng,List,List) 
 
tambah([H|L1],List2,[H|L3]):- /* aturan,tambah [H | L1 ],List2,[H|L3] jika */
tambah(L1,List2,L3). %tambah (L1,List2,L3)
 
GOAL
tambah([1,2,3],[5,6],L). %tambah dgn parameter ([1,2,3],[5,6],L)
% jadi goalnya L = 1,2,3,5,6
 
 
 
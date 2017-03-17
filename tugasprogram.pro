/*****************************************************************************
			           PROGRAM MODUL 4
		            ------>>TOKO BUKU KUNT<-----
		
			    Copyright@fitriani_1515015170
 
******************************************************************************/
domains
judul,pengarang = symbol
hlmn        = unsigned

orang = symbol
 umur  = integer

predicates
  buku(judul,hlmn) - nondeterm (i,o)
  dicetak(pengarang,judul) - nondeterm (o,o)
  novel_tebal(judul) - nondeterm (o)
  
  nondeterm likes(symbol,symbol) %- nondeterm (i,o)
  jenis_buku(symbol,symbol) - nondeterm (i,i)
  bk(symbol) - nondeterm (o)
  
  tokoh(orang,umur) - nondeterm (o,i), nondeterm (i,i)

  
clauses
  dicetak(gramedia,"Assalamualaikum Beijing").
  dicetak(republika,"Agar Bidadari Cemburu Padamu").
  dicetak(bagus,"Proposal Cintaku").
  dicetak(gramedia,"Ayat-Ayat Cinta2").
  

  buku("Assalamualaikum Beijing",250).
  buku("Agar Bidadari Cemburu Padamu",110).
  buku("Proposal Cintaku",200).
  buku("Ayat-Ayat Cinta2",500).

   novel_tebal(Judul):-
	dicetak(_,Judul),
	buku(Judul,Panjang),
	Panjang > 450.
	
  likes(fitri,X):-
  bk(X),
  jenis_buku(X,buku).

 jenis_buku(bagus_di_baca,buku).
 jenis_buku(jelek_di_baca,bukuu).

  bk(jelek_di_baca).
  bk(bagus_di_baca).
  
  tokoh(fahri,35).
  tokoh(aisyah,22).
  tokoh(zhongwen,30).
  tokoh(arini,23).
  
goal
   novel_tebal(Novel),
   likes(Dibaca,Karena),
   
   tokoh(Tokoh_Utama,35),
   tokoh(Tokoh_Kedua,22),
  Tokoh_Utama<> Tokoh_Kedua.
	


domains
      jenis,pabrik,warna =symbol
      penumpang=integer
predicates
      nondeterm pembuat(pabrik,jenis,warna)
      nondeterm pesawat(jenis,penumpang)
      nondeterm pesawat_kecil(jenis)
      bukan_pesawat_yang_mewah(jenis)
      warna(symbol,symbol)
clauses
      pembuat(boeing,boeing_747,merah).
      pembuat(boeing,boeing_MD_11,merah).
      pembuat(boeing,boeing_DC_110,hitam).
      pembuat(fokker,f28,abuabu).
      pembuat(fokker,f27,hitam).
      pembuat(fokker,f50,merah).
      pembuat(iptn,n250,hitam).
      pembuat(british_aerospace,bae_146,merah).
      pembuat(british_aerospace,avro_RJ_100,merah).
      
      pesawat(boeing_747,500).
      pesawat(boeing_747,450).
      pesawat(n250,50).
      pesawat(f27,345).
      pesawat(bae_146,300).
      pesawat(boeing_DC_110,400).
      
      pesawat_kecil(Jenis):-
            pembuat(_,Jenis,Warna),
            pesawat(Jenis,JmlPen),
            warna(Warna,keren),!,
            JmlPen >= 300,
            not(bukan_pesawat_yang_mewah(Jenis)),
            
  
      	    bukan_pesawat_yang_mewah("boeing_747").
      	    bukan_pesawat_yang_mewah("boeing_747").
      	    bukan_pesawat_yang_mewah("f27").
      	    bukan_pesawat_yang_mewah("boeing_DC_110").  
      	    bukan_pesawat_yang_mewah("bae_146"). 
      	    warna(hitam,keren). 
      	    warna(abuabu,elegent).
      	    warna(merah,seksi).     

goal
     pesawat_kecil(Jenis),
     write("Pesawat masa depanku adalah pesawat ",Jenis,"\n").

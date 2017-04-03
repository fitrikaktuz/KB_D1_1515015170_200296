DOMAINS
nama = orang(symbol,symbol) 			   /* (Nama Pertama , Nama Kedua) dgn type symbol */
hari_lahir = tanggal_lahir(integer,symbol,integer) /* (untuk Hari, Bulan, Tahun) dgn type integer dan symbol */
telepon = symbol				   /* Nomor telepon  dgn type symbol */

PREDICATES
nondeterm daftar_telepon(nama,symbol,hari_lahir)  /*predikat orang dengan argumen nama,umur,jender,dan pekerjaan Keywoard nondeterm pada section 
						  PREDICATES yang mendahului predikat orang berfungsi untuk memberitahu ke 							       
		 				  compiler Visual Prolog bahwa predikat tersebut mempunyai lebih dari satu kemungkinan jawaban*/
yang_ulang_tahun_bulan_ini 
konversi_bulan(symbol,integer)		   % konversi_bulan dgn tipe simbol dan integer
cek_bulan_ulang_tahun(integer,hari_lahir)  %cek_bulan_ulang_tahun dgn argumen tipe integer dan hari_lahir
cetak_orang(nama)			   % cetak_orang dgn argumen nama

CLAUSES
yang_ulang_tahun_bulan_ini:- 					% yang ulang tahun bulan ini jika 
write("**** Daftar Orang Yang Ulang Tahun Bulan Ini ****"),nl,	%menampilkan kalimatnya di layar output nextline
write(" Nama Pertama\t\t Nama Kedua\n"),			%menampilkan kalimatnya di layar output 
write("*************************************************"),nl,  %menampilkan kalimatnya di layar output nextline
date(_, Bulan_ini, _), 						/* Ambil bulan pada sistem komputer secara otomatis akan mengeset bulan sekarang yaitu bulan maret */
daftar_telepon(Orang, _, Tanggal),				%daftar telepon dgn mengambil nama orang dan tgl lahirnya
cek_bulan_ulang_tahun(Bulan_ini, Tanggal), 			%akan mengecek bulan yg ada pada sistem komputer dan tanggal lahir 
cetak_orang(Orang), 						% cetak orang dgn mengeset Orang sama dgn nama(nama pertama dan nama kedua)
fail.								/*melacak balik jika ada panggilan yg gagal,untuk memaksa lacak
								 balik dlm rangka mencari alternatif solusi*/

yang_ulang_tahun_bulan_ini:- 			      %yg ulang tahun bulan ini jika
write("\n\n Tekan sembarang tombol..."),nl,	      %menampilkan kalimatnya di layar output nextline
readchar(_). 
cetak_orang(orang(Pertama,Kedua)):-		      %cetak orang dgn mengeset(nama pertama dan nama kedua)
write(" ",Pertama,"\t\t\t ",Kedua),nl. 		      %menampilkan kalimat "pertama dan kedua" di layar output nextline 
cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):- %cek bulan ulang tahun dgn bul=bulan dalam tipe integer dan tgl lahir dgn mngambil nilai bulannya saja   
konversi_bulan(Bulan,Bulan1), 			      %konversi bulan (bulan dlm tipe symbol di konversi dalam tipe integer)
Bul = Bulan1. 					      %bul sama dgn bulan1 dalam tipe integer

daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955)). 	%daftar telepon orang dgn nama pertama erwin,nama kedua effendy,no telp 767-8463,tanggal lahir 3 januari 1995
daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)). %daftar telepon orang dgn nama pertama pramudya,nama kedua kurniawan,no telp 438-8400,tanggal lahir 5 februari 1985
daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar, 1935)).  %daftar telepon orang dgn nama pertama kusdiar,nama kedua prihatin,no telp 555-5653,tanggal lahir 3 maret 1935
daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)). 	%daftar telepon orang dgn nama pertama ui,nama kedua yansen,no telp 767-2223,tanggal lahir 29 april 1951
daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,may,1962)).  %daftar telepon orang dgn nama pertama roland,nama kedua hutagalung,no telp 555-1212,tanggal lahir 12 may 1962
daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)). 	%daftar telepon orang dgn nama pertama andi,nama kedua naruddin,no telp 438-8400,tanggal lahir `17 juni 1980
daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,jun,1986)). 	%daftar telepon orang dgn nama pertama syarif,nama kedua musadek,no telp 767-8463,tanggal lahir 20 juni 1986
daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)). 	%daftar telepon orang dgn nama pertama lidya,nama kedua widyawati,no telp 555-5653,tanggal lahir 16 juli 1981
daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)). 	%daftar telepon orang dgn nama pertama yusida,nama kedua andriani,no telp 767-2223,tanggal lahir 10 agustus 1995
daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)). 	%daftar telepon orang dgn nama pertama slamet,nama kedua riyadi,no telp 438-8400,tanggal lahir 25 september 1981
daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)). 	%daftar telepon orang dgn nama pertama nur,nama kedua harjanto,no telp 438-8400,tanggal lahir 20 oktober 1952
daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)). 	%daftar telepon orang dgn nama pertama dian,nama kedua marlini,no telp 555-1212,tanggal lahir 9 november 1984
daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)). 	%daftar telepon orang dgn nama pertama teguh,nama kedua heni,no telp 767-2223,tanggal lahir 15 november 1987
daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)). 	%daftar telepon orang dgn nama pertama eka,nama kedua ardiyanti,no telp 438-8400,tanggal lahir 31 desember 1981

/* tambahan klausa daftar_telepon*/
daftar_telepon(orang(sri,sugiarti),"234-0000",tanggal_lahir(30,mar,1984)). 	%daftar telepon orang dgn nama pertama sri,nama kedua sugiarti,no telp 234-0000,tanggal lahir 30 maret 1984
daftar_telepon(orang(aldi,badwin),"545-4540",tanggal_lahir(23,mar,1985)). 	%daftar telepon orang dgn nama pertama aldi,nama kedua badwin,no telp 545-4540,tanggal lahir 23 maret 1985
daftar_telepon(orang(gigi,gilang),"344-3423",tanggal_lahir(16,mar,1980)). 	%daftar telepon orang dgn nama pertama gigi,nama kedua gilang,no telp 344-3423,tanggal lahir 16 maret 1980
daftar_telepon(orang(titi,coklat),"123-5400",tanggal_lahir(31,mar,1987)). 	%daftar telepon orang dgn nama pertama titi,nama kedua coklat,no telp 123-5400,tanggal lahir 31 maret 1987

konversi_bulan(jan, 1). % konversi bulan januari dlm tipe symbol dan angka 1 dalam tipe integer 
konversi_bulan(feb, 2). % konversi bulan februari dlm tipe symbol dan angka 2 dalam tipe integer
konversi_bulan(mar, 3). % konversi bulan maret dlm tipe symbol dan angka 3 dalam tipe integer
konversi_bulan(apr, 4). % konversi bulan april dlm tipe symbol dan angka 4 dalam tipe integer
konversi_bulan(may, 5). % konversi bulan may dlm tipe symbol dan angka 5 dalam tipe integer
konversi_bulan(jun, 6). % konversi bulan juni dlm tipe symbol dan angka 6 dalam tipe integer
konversi_bulan(jul, 7). % konversi bulan juli dlm tipe symbol dan angka 7 dalam tipe integer
konversi_bulan(aug, 8). % konversi bulan agustus dlm tipe symbol dan angka 8 dalam tipe integer
konversi_bulan(sep, 9). % konversi bulan september dlm tipe symbol dan angka 9 dalam tipe integer
konversi_bulan(oct, 10). % konversi bulan oktober dlm tipe symbol dan angka 10 dalam tipe integer
konversi_bulan(nov, 11). % konversi bulan november dlm tipe symbol dan angka 11 dalam tipe integer
konversi_bulan(dec, 12). % konversi bulan desember dlm tipe symbol dan angka 12 dalam tipe integer

GOAL
yang_ulang_tahun_bulan_ini. 
/* yg ulang tahun bulan ini outputnya adalah nama orang yg bulan lahirnya mengikuti bulan pada sistem komputer secara 
			    otomatis sehingga yg akan tampil orang yg lahir di bulan maret */
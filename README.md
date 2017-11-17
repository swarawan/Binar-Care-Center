# Binar Care Center
### Assessment Test for IOS Engineer

1. 	Output: "Serenity"

	Alasan: Karena Starship memiliki constructor untuk mengisikan variabel `name` dari inputan `initialName`. Jadi Ketika `let serenity = Starship(initialName: "Serenity")` dijalankan, akan menyimpan String `"Serenity"` ke variable `name` dan diambil menggunakan `serenity.name`

2.	Output: "X was 556"


	Alasan: Karena let x pada case pertama bisa diisikan nilai apapun dari soal, namun yang parameter kedua harus 0. Sedangkan case kedua tidak akan dipanggil karena parameter pertama bukan bernilai 0. Parameter ketiga mungkin akan dipanggil ketika case pertama bernilai false, alias parameter kedua di variabel `point` tidak menunjukkan nilai 0

3.	Output:
	0
	4
	8
	12
	16
	
	
	Alasan: Karena stride menghitung nilai dari nilai awal, dimana nilai awal 0, dan setiap pertambahan 4.hingga i bernilai sama dengan 17.

4. MVP: Memisahkan antara permodelan, view (tampilan) dan presenter (proses data). Sehingga fungsi dari masing-masing class menjadi single responsibility. Class view hanya bertanggungjawab untuk menampilkan data ke user. Begitu juga dengan processing data, tidak digabung menjadi satu file.

  VIPER: Adalah pengembangan dari MVP / MVC dimana mereka melakukan beberapa proses menjadi satu file yaitu presenter, sehingga fungsi presenter sangat memungkinkan untuk sangat panjang dan penuh (gendut). VIPER singkatan dari VIew, Interactor, Presenter, Entity, dan Route. Fungsi proses data (request http misalkan, atau kalkukasi apapun) dilakukan di Interactor. Kemudian ketika data sudah siap, dikirimkan ke presenter dan diolah lagi agar data yang sampai ke view siap ditampilkan tanpa ada proses2 lain. Contoh, field `first name` dan `last name` dari hasil request interactor ke http, diolah oleh presenter agar menjadi `full name` jadi ketika data sampai ke view, tinggal ditampilkan `full name`-nya.

5. Contoh penggunaan data storage adalah penyimpanan data ketika device dalam keadaan offline. Aplikasi masih bisa digunakan namun dengan data yang terakhir singkron dengan server dan apabila ada penambahan data bisa disimpan dahulu, nanti ketika online baru dikirimkan. Fungsi lainnya adalah untuk menyimpan Access Token, agar suatu saat nanti bisa digunakan untuk request http tanpa harus login lagi.

	
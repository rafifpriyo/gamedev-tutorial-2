Apa saja pesan log yang dicetak pada panel Output?

> Pertama-tama hanya mencetak: Platform initialized

Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?

> Selain kalimat Platform initialized tadi, keluar juga kalimat Reached objective!

Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

> Iya benar, sangat berpengaruh. Jika ObjectiveArea-nya digeser ke bawah, begitu pula tingkah laku kapan keluarnya pesan juga ikut berubah.


Observasi

> Yang saya lihat dari script ObjectiveArea.gd. Membuat fungsi mirip sekali dengan bahasa pemrograman lain. Dan untuk menggunakannya bisa ditaruh langsung ke bagian signal. Cukup bisa dipahami untuk kasus kasus reusable code untuk karakter-karakter berbeda seperti Diversifier Credens Justitiam
>
> Untuk script PlatformBlue.gd, mulai ada variable untuk stat dan ada fungsi ready dan process. Pemahaman saya, ready untuk intialize ketika scene terkait dijalankan dan process menyatakan hal yang akan terjadi pada tiap framenya. Perlu diingat kalau jarak waktu antara frame bisa saja tidak teratur, ~~60FPS vs ~~30FPS.
>
> Selain event bisa digunakan lewat signal. Event juga bisa diatur lewat fungsi process dengan menggunakan tambahan fungsi dari modul Input.


Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?

> Nampaknya Sprite digunakan sebagai tempat untuk gambar atau yaa Sprite nya. Atau objek visual apa yang akan terlihat dari sisi playernya.

Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

> Menurut saya, belum membaca dokumentasi, RigidBody2D digunakan untuk objek yang terpengaruh dengan hukum fisika secara umum, seperti gravitasi. StaticBody2D menyatakan objek yang tidak terpengaruh dengan hukum fisika secara umum, makanya namanya static, diam di tempat.

Ubah nilai atribut Mass dan Weight pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

> Tidak terlihat ada perubahan. Baik laju naik maupun laju turun. Hal ini sejalan dengan hukum fisika terkait gerak jatuh bebas yang percepatannya hanya terpengaruh dengan gravitasi dan gesekan yang ada. Tidak ada sangkut pautnya dengan massa dari suatu benda.

Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

> Pesawat jatuh menembus melewati batu. Seperti tidak ada tabrakan sama sekali.

Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

> Secara berurutan, akan menggeser ke koordinat lain, memutar pesawat, dan membuat ukurannya melebar. Position, Rotation, dan Scale.

Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

> Ternyata jawabannya karena posisi dari mereka berdua menggunakan posisi lokal dari node bapaknya, PlatformBlue. Sehingga jika dilihat posisi dari PlatformBlue, memang y nya sudah sangat besar, sehingga walaupun nilai posisi anaknya di bagian y nya 0, tidak terjadi masalah.

Observasi

> Setelah dilihat bagian Scene, Hirarki dari Node, Transform, Sprite, dan CollisionShape. Didapatkan pemahaman kalau Scene itu objek apa saja. Dan best practice di godot sepertinya membuat objek penting, seperti player, dibuat file tscnya sendiri. 
>
> Lanjutan dari Scene adalah Hirarki dari Node. Jadi di setiap scene bisa diperinci property-property lainnya. Hal ini sangat penting untuk membuat satu objek yang utuh. Seperti bisa menambah objek tangan ke suatu objek badan yang memiliki fungsi berbeda.
>
> Transform ini unik karena harus diingat kalau transform itu memiliki nilai origin (0,0) sama dengan node bapaknya.
>
> Sprite dan CollisionShape juga penting. Mungkin yang perlu diperhatikan adalah bentuk CollisionShapenya, berusaha untuk sama persis dengan sprite. Kan kurang lucu kalo Kita, sebagai user, udh ngeliat kena malah gamenya tidak menyetujui.

Apa yang ditambah pada level 1

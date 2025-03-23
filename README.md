# bash-completion

Script Bash untuk mengaktifkan fitur bash-completion pada shell Bash (Bourne Again Shell).

## Apa itu Bash  Completion 

Bash completion adalah fitur pada shell Bash (Bourne Again Shell) yang memungkinkan pengguna untuk melengkapi perintah, `nama file`, `direktori`, atau `argumen` secara otomatis dengan menekan tombol `Tab`. Fitur ini sangat berguna untuk mempercepat pengetikan di terminal, mengurangi kesalahan, dan meningkatkan efisiensi saat bekerja dengan command line di sistem berbasis `Unix/Linux`.

## Cara Kerja Bash Completion

Ketika kamu mengetik sebagian perintah atau nama file dan menekan Tab, Bash akan mencoba melengkapi sisanya berdasarkan konteks. Misalnya:

1. Jika kamu mengetik `ls` dan tekan `Tab`, Bash mungkin tidak melengkapi apa pun karena itu sudah lengkap, tapi bisa menyarankan opsi atau file.
2. Jika kamu mengetik `cd Doc` lalu tekan `Tab`, Bash akan mencari direktori yang diawali "Doc" (misalnya "Documents") dan melengkapinya jika ada kecocokan tunggal.

## Jenis Bash Completion

1. **Default Completion**: Melengkapi perintah bawaan Bash atau file/direktori di direktori saat ini.
2. **Programmable Completion**: Disesuaikan untuk perintah tertentu. Misalnya, untuk git, mengetik `git che` lalu Tab bisa melengkapi menjadi `git checkout`.
3. **Custom Completion**: Pengguna bisa menulis skrip sendiri untuk mendefinisikan cara completion bekerja pada perintah tertentu.

## Instalasi 

Berikut ini adalah langkah-langkah untuk menginstal bash-completion:

```sh
$ sudo apt-get update -y
$ sudo apt-get install bash -y
$ sudo apt-get install git -y
$ git clone https://github.com/fixploit03/bash-completion.git
$ cd bash-completion
$ chmod +x instal.sh
$ sudo ./instal.sh
```

**Semoga bermanfaat!**

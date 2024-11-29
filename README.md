## bash-completion

![](https://github.com/fixploit03/bash-completion/blob/main/goto.gif)

Skrip untuk mengaktifkan bash completion di shell interaktif.

## Apa itu Bash  Completion 

Bash Completion adalah fitur dalam bash shell (Bourne Again Shell) yang memungkinkan pengguna untuk menyelesaikan nama file, direktori, perintah, atau opsi perintah secara otomatis saat mengetik di terminal. Fitur ini dirancang untuk meningkatkan efisiensi dan kenyamanan dalam menggunakan terminal, terutama saat bekerja dengan nama file atau perintah yang panjang dan kompleks.

## Cara Kerja Bash Completion

Ketika Anda mengetik sebagian perintah atau nama file di terminal dan menekan tombol Tab, Bash Completion akan mencoba menyelesaikan apa yang Anda ketik berdasarkan konteks, seperti:

1. Nama file atau direktori yang tersedia di sistem.
2. Perintah yang dapat dijalankan.
3. Opsi dan argumen yang tersedia untuk perintah tertentu (jika didukung oleh skrip completion).

Misalnya:

Ketikkan `ls /us` lalu tekan `Tab`, maka Bash akan menyelesaikan menjadi `ls /usr/` (jika direktori /usr ada di sistem).
Ketikkan `git ch` lalu tekan `Tab`, maka Bash mungkin melengkapi menjadi `git checkout` (jika Bash Completion untuk Git terinstal).

## Instalasi 

```sh
apt-get update
apt-get install git
git clone https://github.com/fixploit03/bash-completion.git
cd bash-completion
chmod +x instal.sh
./instal.sh
```

**Selamat mencoba!**

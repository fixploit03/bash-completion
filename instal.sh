#!/bin/bash
# [bash-completion.sh]
# Skrip untuk mengaktifkan bash completion di shell interaktif.
# Dibuat oleh: fixploit03
# Github: https://github.com/fixploit03/bash-completion

if [[ $EUID -ne 0 ]]; then
	echo "Skrip ini harus dijalankan sebagai root!"
fi

file_bash_completion="bash-completion.sh"
file_bashrc=/etc/bash.bashrc

if [[ ! -f "${file_bashrc}" ]]; then
	echo "[-] File ${file} tidak ditemukan. bash-completion gagal diaktifkan."
	exit 1
fi

echo "" >> "${file_bashrc}"
cat "${file_bash_completion}" >> "${file_bashrc}"
echo "[+] bash-completion berhasil diaktifkan."
exit 0


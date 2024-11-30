#!/bin/bash
# [bash-completion.sh]
# Skrip untuk mengaktifkan bash completion di shell interaktif.
# Dibuat oleh: fixploit03
# Github: https://github.com/fixploit03/bash-completion

if [[ $EUID -ne 0 ]]; then
	echo "Skrip ini harus dijalankan sebagai root!"
fi

read -p "Apakah Anda ingin mengaktifkan bash-completion [Y/n]: " nanya

if [[ "${nanya}" == "Y" || "${nanya}" == "y" ]]; then
        # File
        file_bash_completion="bash-completion.sh"
        file_bashrc=/etc/bash.bashrc

        # Kondisi jika file bashrc tidak ditemukan 
        if [[ ! -f "${file_bashrc}" ]]; then
	        echo "[-] File ${file} tidak ditemukan. bash-completion gagal diaktifkan."
        	exit 1
        fi

        echo "" >> "${file_bashrc}"
        cat "${file_bash_completion}" >> "${file_bashrc}"
        echo "[+] bash-completion berhasil diaktifkan."
        exit 0
elif [[ "${nanya}" == "N" || "${nanya}" == "n" ]]; then
        echo "[*] Semoga harimu menyenangkan ^_^"
	exit 0
 else
        echo "[-] Masukkan tidak valid. Harap masukkan 'Y/n'."
	exit 1
 fi

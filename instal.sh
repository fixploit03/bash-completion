#!/bin/bash
#..............: instal.sh
#..............: Dibuat oleh: fixploit03
#..............: Github: https://github.com/fixploit03/bash-completion

if [[ $EUID -ne 0 ]]; then
	echo "[-] Skrip ini harus dijalankan sebagai root!"
fi

clear
echo "---------------------------------------------------------------------------------------------"
echo "|                                                                                           |"
echo "| Script Bash untuk mengaktifkan fitur bash-completion pada shell Bash (Bourne Again Shell) |"
echo "| Dibuat oleh: Rofi (Fixploit03)                                                            |"
echo "| Github: https://github.com/fixploit03/bash-completion                                     |"
echo "|                                                                                           |"
echo "---------------------------------------------------------------------------------------------"
echo ""

read -p "[#] Apakah Anda ingin mengaktifkan bash-completion [Y/n]: " nanya

if [[ "${nanya}" == "Y" || "${nanya}" == "y" ]]; then

	gagal=()

	echo "[*] Mengaktifkan bash-completion..."
        # File
        file_bash_completion="bash-completion.sh"
        file_bashrc=/etc/bash.bashrc

        # Kondisi jika file bashrc tidak ditemukan 
        if [[ ! -f "${file_bashrc}" ]]; then
	        echo "[-] File '${file}' tidak ditemukan. bash-completion gagal diaktifkan."
        	exit 1
        fi

        echo "" >> "${file_bashrc}"
	if [[ $? -ne 0 ]]; then
		gagal+=("error")
 	fi
  
        cat "${file_bash_completion}" >> "${file_bashrc}"
	if [[ $? -ne 0 ]]; then
		gagal+=("error")
 	fi

  	if [[ "${#gagal[@]}" -eq 0 ]]; then
  		echo "[+] bash-completion berhasil diaktifkan."
      		exit 0
   	else
		echo "[-] bash-completion gagal diaktifkan."
  		exit 1
    	fi
      
elif [[ "${nanya}" == "N" || "${nanya}" == "n" ]]; then
        echo "[*] Bye..."
	exit 0
 else
        echo "[-] Masukkan tidak valid. Harap masukkan 'Y/n'."
	exit 1
 fi

# - END -

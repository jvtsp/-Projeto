#!/bin/bash
function GCU(){
user=$( dialog --stdout --title "Novo usuario" --inputbox 'Digite o nome desejado: ' 0 0 )
senha=$( dialog --stdout --title "Digite a senha" --inputbox 'Digite a senha' 0 0)
	mkdir /home/$user
	adduser $user -p $senha -d/home/$user
}
function APU(){
 dialog --stdout --title "Apagar Usuario" --inputbox 'Digite o usuario que deseja apagar'
}
GCU
}
OPCAO=$(dialog							\
	--stdout						\
	--title "Gerenciador de usuarios"			\
	--menu "Escolha uma opção: "				\
	0 0 0							\
	1 "Criar Usuario"					\
	2 "Apagar usuario"					\
	3 "Criar Grupo"						\
	4 "Apagar Grupo"					\
	5 "Listar /etc/passwd"					\
	6 "voltar")

	case $OPCAO in
		1) GCU 	   ;;
		2) APU     ;;
		3) CAG     ;;
		4) APG     ;;
		5) LSP	   ;;
		6) bash /home/vagrant/menu.sh ;;
		*) dialog --title "Opçao invalida." --msgbox "Digite Novamente" 0 0 ;;
	esac



#!/bin/bash
function GCU(){
USUARIO=$( dialog --stdout --title "Novo usuario" --inputbox 'Digite o nome desejado: ' 0 0 )
	useradd $USUARIO
[ $? == 0 ] && (dialog --msgbox "criado com sucesso" 0 0; \
 mkdir /home/$USUARIO ; OPCAO) || (dialog --msgbox "tente novamente" 0 0; GCU)
}
function APU(){
DELU=$( dialog --stdout --title "Apagar Usuario" --inputbox 'Digite o usuario desejado: ' 0 0 )
	userdel $DELU
[ $? == 0 ] && (dialog --msgbox "apagado com sucesso" 0 0; \
 rmdir /home/$DELU ; OPCAO) || (dialog --msgbox "tente novamente" 0 0; APU)
}
function CAG(){
NEWG=$( dialog --stdout --title "Novo Grupo" --inputbox 'Digite o grupo desejado: ' 0 0 )
	
[ $? == 0 ] && (dialog --msgbox "criado com sucesso" 0 0; \
  ; OPCAO) || (dialog --msgbox "tente novamente" 0 0; CAG)
}

function OPCAO(){
MENU=$(dialog							\
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

	case $MENU in
		1) GCU 	   ;;
		2) APU     ;;
		3) CAG     ;;
		4) APG     ;;
		5) LSP	   ;;
		6) bash /home/vagrant/menu.sh ;;
		*) dialog --title "Opçao invalida." --msgbox "Digite Novamente" 0 0 ;;
	esac
}
OPCAO

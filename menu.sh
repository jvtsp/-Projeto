#!/bin/bash
menu=$(	dialog				\
	--stdout			\
	--title "Menu de opções" 	\
	--menu  "Escolha uma das opções: "\
	0 0 0				\
	1	"Gerenciar Arquivos"	\
	2	"Gerenciar Usuarios"	\
	3	"Gerenciar Rede"	\
	4	"Gerenciar Dispositivos")

case $menu in
	1)  ;;
	2) bash /home/vagrant/usuario.sh  ;;
	3)  ;;
	4)  ;;
esac

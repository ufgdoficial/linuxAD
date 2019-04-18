#!/bin/bash

#**************************************************************************************************
# SCRIPT PARA:
# 	- CONFIGURACAO E ATUALIZACAO DO SISTEMA;
#	- INSERCAO NO DOMINIO "UFGD.EDU.BR";
#	- INSTALACAO DE SOFTWARES PRINCIPAIS
#	- CONFIGURACAO DE GUI GNOME 3.0 PARA USUÁRIO
#	- TESTE DE LOGIN
#	- SEGURANCA DE PASTA DE USUARIO

#clear
#tput setb 1
#tput setf 7

#---------- Funcões Globais-----------------------------------------------------------------------#
cabecalho(){
	clear;
	
	echo -e "\\033[42;1;37m******************************************************************************\033[0m";
	echo -e "\\033[42;1;37m*******************       CONFIGURACAO LINUX COIN/UFGD ***********************\033[0m";	
	echo -e "\\033[42;4;37m******************************************************************************\033[0m\n";	
}

#-------------------------------------------------------------------------------------------------#

#----------Verificações antes da instalação-------------------------------------------------------#
cabecalho;

echo -e "\nPrezado(a) Técnico(a) de Informática,\n\n Antes de prosseguir com a instalaçãoo, verifique os seguintes pontos abaixo:\n\n";
echo -e "\n\\033[42;1;37m1.\033[0m A distribuição LINUX instalada é a Debian 9;";
echo -e "\n\\033[42;1;37m2.\033[0m Você está logado no terminal como sudo(root);";
echo -e "\n\\033[42;1;37m3.\033[0m Seu ponto de rede ou conexao WI-FI está funcionando corretamente;";
echo -e "\n\\033[42;1;37m4.\033[0m Está logado no sistema GROOT: https://groot.ufgd.edu.br;";
echo -e "\n\\033[42;1;37m5.\033[0m Você deu todas as permissões para a pasta de instalação: \n chmod -R 777 linuxAD";
echo -e "\n\n\\033[41;7;37mATENÇÃO: ESSE SCRIPT SOMENTE IRA FUNCIONAR PARA INTERFACE GNOME 3.0\033[0m\n\n";
echo -e "\n\nAperte <ENTER> para [continuar] ou CTRL + C para [cancelar]";
read

#-------------------------------------------------------------------------------------------------#

#----------Sources.list: Inserção de fontes para baixar programas----------------------------------
cabecalho;

echo -e "\n\\033[42;1;37mEditando arquivo /etc/apt/sources.list...\033[0m"; 

echo -e "#------------------------------------------------------------------------------# " > /etc/apt/sources.list
echo -e "#                   OFFICIAL DEBIAN 9 REPOS - COIN/UFGD                    			" >> /etc/apt/sources.list
echo -e "#------------------------------------------------------------------------------#\n" >> /etc/apt/sources.list

echo -e "###### Debian Main Repos ######" >> /etc/apt/sources.list
echo -e "deb http://deb.debian.org/debian/ stable main contrib non-free" >> /etc/apt/sources.list
echo -e "deb-src http://deb.debian.org/debian/ stable main contrib non-free" >> /etc/apt/sources.list

echo -e "deb http://deb.debian.org/debian/ stable-updates main contrib non-free" >> /etc/apt/sources.list
echo -e "deb-src http://deb.debian.org/debian/ stable-updates main contrib non-free\n" >> /etc/apt/sources.list

echo -e "deb http://deb.debian.org/debian-security stable/updates main" >> /etc/apt/sources.list
echo -e "deb-src http://deb.debian.org/debian-security stable/updates main" >> /etc/apt/sources.list

echo -e "deb http://ftp.debian.org/debian stretch-backports main" >> /etc/apt/sources.list
echo -e "deb-src http://ftp.debian.org/debian stretch-backports main\n\n">> /etc/apt/sources.list

echo -e "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list

echo -e "\n\nAperte <ENTER> para [continuar]";
read
#-------------------------------------------------------------------------------------------------#

#----------Atualização do Sistema Debian 9--------------------------------------------------------#
cabecalho;

echo -e "\n\\033[42;1;37mAtualizando o sistema operacional Linux...\033[0m"; 
apt-get update
apt-get upgrade --yes

echo -e "\n\nAperte <ENTER> para [continuar]";
read
#-------------------------------------------------------------------------------------------------#

#----------Instalação de programas ---------------------------------------------------------------#
cabecalho;
echo -e "\n\\033[42;1;37mInstalação de programas\n\n\033[0m"; 
echo -e "\nSerão instalados os seguintes programas:\n\n";
echo -e "\n\\033[42;1;37m1.\033[0m Chromium;";
echo -e "\n\\033[42;1;37m2.\033[0m Google Chrome;";

echo -e "\n\nAperte <ENTER> para [continuar]"
read

apt-get install chromium
apt-get install google-chrome-stable 



#-------------------------------------------------------------------------------------------------#


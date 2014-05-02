# Ambiente de Desenvolvimento Web Java
===================

## Introdução
Este projeto automatiza a criação de um ambiente para execução e implantação de uma aplicação Java Web com Tomcat e Mysql utilizando o Vagrant e o Chef como provisionador.

## Pré-requisitos

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)

Instale os plugins abaixo:

    vagrant plugin install vbguest
    vagrant plugin install vagrant-cachier
    vagrant plugin install vagrant-digitalocean (Para criar o ambiente na nuvem Digital Ocean)

## Iniciando sua máquina virtual

    Para criar sua máquina virtual:

    host $ git clone --recursive https://github.com/magnocosta/ambienteTomcatMysql
    host $ cd ambienteTomcatMysql
    host $ vagrant up

    A primeira vez que o comando é executado pode levar alguns minutos para concluir do download do Box.

## O que vem no box ?

    - Mysql
    - Tomcat 6
    - Oracle Java 6

## Virtual Machine Management

    Para suspender a utilização de sua máquina virtual:
    host $ vagrant suspend

    Para continuar utilizando sua máquina virtual:
    host $ vagrant resume

    Para desligar sua máquina virtual:
    host $ vagrant halt

    Para ligar sua máquina virtual:
    host $ vagrant up

    Você pode checar o estado de sua máquina virtual com:
    host $ vagrant status

    Para destruir completamente dua máquina virtual (Cuidado!):
    host $ vagrant destroy

    Para mais informações [Vagrant documentation](http://vagrantup.com/v1/docs/index.html).


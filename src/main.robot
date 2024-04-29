*** Settings ***

Documentation    
##################################################
# Bibliotecas & Recuros | Globais
##################################################

Library    SeleniumLibrary
Library    FakerLibrary
Library    String
Library    OperatingSystem


##################################################
# Elementos
##################################################
Variables    ./elements/envio_formulario.yml

##################################################
# Resources
##################################################
Resource    ./config/hooks.robot

##################################################
# Keywords
##################################################
Resource    ./keywords/envio_formulario.robot
Resource    ./keywords/envio_formulario_bdd.robot

##################################################
# Pages
##################################################
Resource    ./pages/pages_login.robot

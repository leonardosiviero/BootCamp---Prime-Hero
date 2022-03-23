*** Settings ***
Library     String

*** Variables ***
&{PESSOA}   nome=Leonardo  sobrenome=Siviero  idade=32  estadoCivil=casado  etnia=brasileiro  ocupacao=Engenheiro
@{frutas}   uva  laranja  laranja  maca  melao  melancia

*** Test Cases ***
Exibir os dados de uma pessoa no console
  exibir o dicionario no console

Exibir as frutas adicionadas a uma lista
  exibir cada uma das frutas

*** Keywords ***
exibir o dicionario no console
  Log To Console  Dados da pessoa:
  Log To Console  Nome: ${PESSOA.nome}
  Log To Console  Sobrenome: ${PESSOA.sobrenome}
  Log To Console  Idade: ${PESSOA.idade}
  Log To Console  Estado Civil: ${PESSOA.estadoCivil}
  Log To Console  Peso: ${PESSOA.etnia}
  Log To Console  Ocupacao: ${PESSOA.ocupacao}

exibir cada uma das frutas
  Log To Console  \n${frutas[0]}\n${frutas[1]}\n${frutas[2]}\n${frutas[3]}\n${frutas[4]}\n${frutas[5]}  

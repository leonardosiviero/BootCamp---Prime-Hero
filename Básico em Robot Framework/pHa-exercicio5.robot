*** Test Cases ***
Imprimir numeros sequanciais no console
  Impressao sequencial

Imprimir no console nome dos paises
    Imprime nome dos paises
  
*** Keywords ***
Impressao sequencial
  FOR  ${NUM}  IN RANGE  0  11
      Log To Console    Estou no numero: ${Num}
  END

Imprime nome dos paises
  @{PAISES}  Create list  Alemanha  Africa  Chile  Brasil  Peru
  FOR    ${PAIS}   IN   @{PAISES}
      Log to console   Estou no pais: ${PAIS}
  END
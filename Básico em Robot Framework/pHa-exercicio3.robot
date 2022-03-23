*** Test Cases ***
Meu testes de soma
  ${RESULTADO}  Somar os numeros  1  2
  Log  ${RESULTADO}

*** Keywords ***
Somar os numeros 
  [Arguments]  ${NUM_A}  ${NUM_B}
  ${SOMA}  Evaluate  ${NUM_A} + ${NUM_B}
  [Return]  ${SOMA}

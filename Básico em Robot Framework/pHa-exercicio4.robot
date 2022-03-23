*** Test Cases ***
Gerar email com interpolacao de variaveis
  ${EMAIL}        Criar email     leonardo     siviero     32
  Log to console  ${EMAIL}

*** Keywords ***
Criar email
  [Arguments]  ${NOME}  ${SOBRENOME}  ${IDADE}
  ${NOVO_EMAIL}  set variable  ${NOME}_${SOBRENOME}_${IDADE}@robot.com
  [Return]     ${NOVO_MAIL}


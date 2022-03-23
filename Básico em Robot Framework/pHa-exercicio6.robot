*** Test Cases ***
Imprimir numeros 5 ou 8
  Impressao de numeros especificos no console
  comprar macarrao
  
*** Keywords ***
Impressao de numeros especificos no console
    FOR    ${COUNT}    IN RANGE    0    11
        IF    '${COUNT}'=='5'
            Log To Console   Estou no numero ${COUNT}
        ELSE IF    '${COUNT}'=='8'
            Log To Console   Estou no numero ${COUNT}
        ELSE
            Log To Console   Este não é o número 5 ou o número 8
        END
    END

comprar macarrao
    Log to console  Devo comprar macarrão no mercadinho.
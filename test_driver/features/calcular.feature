#language: pt

Funcionalidade: Calcular valores
  Para visualizar o resultado das operações matemáticas
  Eu como usuário 
  Quero conseguir realizar operações de soma, subtração, multiplicação e divisão

  Esquema do Cenário: Realizar operações matematicas
    Dado que o usuário pressiona o número '<primeiroNumero>'
    E escolhe a operação '<operacao>'
    E pressiona o número '<segundoNumero>'
    Quando tocar no sinal de igual
    Então deve visualizar o número '<resultado>' como resultado

    Exemplos:
    | primeiroNumero | operacao | segundoNumero | resultado |
    |       1        |     +    |       2       |     3.0   |
    |       9        |     -    |       8       |     1.0   |
    |       6        |     *    |       3       |    18.0   |
    |       8        |     /    |       4       |     2.0   |
    |       8        |     +    |       8       |    15.0   |


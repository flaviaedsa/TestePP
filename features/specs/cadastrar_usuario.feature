#language: pt

Funcionalidade: Criar usuario
  Como uma aplicacao de gerenciamento de usuarios
  Quero cadastrar usuarios 
  Para manter a base de dados sempre atualizada

@teste1
Cenario: Usuario criado com sucesso
  Quando faco uma chamada do tipo POST para o endpoint de cadastro de usuarios
  Então o codigo de resposta deve ser igual a "200" 
  E o usuario deve ser salvo corretamente na base de dados

@teste11
Esquema do Cenário: Usuario nao cadastrado - Dados invalidos
  Dado que eu tenha informações invalidas do usuario:
    | name   | <name>   |  
    | email  | <email>  |
    | gender | <gender> |
    | status | <status> |
  Quando faco uma chamada do tipo POST para o endpoint de cadastro de usuarios
  Então o codigo de resposta deve ser igual a "200"  
  E devo visualizar uma "<mesagem>" informando que o campo esta invalido 

  Exemplos:
    | name            | email               | gender | status | mensagem       |
    |                 | email@testando.com  | Male   | Active | can't be blank |
    | Flávia de Souza |                     | Female | Active | can't be blank |
    | Flávia de Souza | email@testando.com  |        | Active | can't be blank |
    | Flávia de Souza | email@testando.com  | Female |        | can't be blank |
    | Flávia de Souza | emailtestando       | Female | Active | is invalid     |
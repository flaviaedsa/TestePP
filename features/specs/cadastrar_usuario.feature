#language: pt

@cadastrar
Funcionalidade: Criar usuario
  Como uma aplicacao de gerenciamento de usuarios
  Quero cadastrar usuarios 
  Para manter a base de dados sempre atualizada

Cenario: Usuario criado com sucesso
  Quando faco uma chamada do tipo POST para o endpoint de cadastro de usuarios
  Então o codigo de resposta deve ser igual a "200" 
  E o usuario deve ser salvo corretamente na base de dados
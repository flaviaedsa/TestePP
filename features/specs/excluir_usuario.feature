#language:pt

Funcionalidade: Excluir usuario
  Como uma aplicacao de gerenciamento de usuarios
  Quero excluir usuarios da base
  Para manter a base de dados sempre atualizada

  Contexto:
    Dado que eu tenha um usuario cadastrado na base de dados

@teste3
  Cenario: Excluir usuario 
    Quando faco uma chamada do tipo DELETE para o endpoint de exclusao de usuarios 
    Então o codigo de resposta deve ser igual a "200"  
    E o usuario nao deve mais ser listado na base
#language:pt

@alterar
Funcionalidade: Alterar usuario
  Como uma aplicacao de gerenciamento de usuarios
  Quero alterar os dados dos usuarios já cadastrados
  Para manter a base de dados sempre atualizada

  Contexto:
    Dado que eu tenha um usuario cadastrado na base de dados

  Cenario: Usuario alterado com sucesso    
    Quando faco uma chamada do tipo PUT para o endpoint de alteração de usuarios 
    Então o codigo de resposta deve ser igual a "200"   
    E as alteracoes deve ser salvas corretamente na base
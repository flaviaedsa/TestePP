## Teste PicPay - Automação de teste de API Rest - CRUD

Este teste tem o objetivo de:
    - Criar um usuário e validar se o mesmo foi criado;
    - Alterar o nome deste usuário e validar a alteração;
    - Deletar o usuario criado e validar se o mesmo foi removido.

### Pré requisitos:

    - Gerenciador de versões do Ruby;
    - Ruby >= 2.7.2;
    - Bundler.    

## Tecnologias:

    - Linguagem Ruby
    - Bitliotecas:
        - cucumber (BDD)
        - rspec
        - httparty
        - faker
## Configurando o ambiente:
    Antes de rodar os testes, por favor instale:

    [Ruby/ rbenv/ bundler] - Instalando rbenv, ruby e bundler

    Guia Instalando Ruby no Windows: https://medium.com/qaninja/instalando-ruby-cucumber-e-capybara-no-windows-10-acb1fe833a95

    Guia Instalando Ruby no Ubuntu: https://medium.com/qaninja/como-instalar-ruby-com-rbenv-no-ubuntu-a75d1999362b    

## Instalação & Execução:
    $ git clone <repositório>
    $ cd repositorio/
    $ bundler install
    $ cucumber
    $ Para rodar algum cenario especifico utilize as tags (@cadastrar, @alterar ou @excluir): cucumber -t @tag
  
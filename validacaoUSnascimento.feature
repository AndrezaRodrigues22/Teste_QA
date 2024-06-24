# language: pt

Funcionalidade: Validação da Data de Nascimento no Cadastro de Usuário
    Como usuario do sistema contato seguro
    Quero validar a data de nascimento do usuario
    Para que sejam validada
  
Contexto: 
    Dado que estou na página do sistema de contato seguro

Cenario: Cadastro com data de nascimento maior que 18 anos
    Quando eu clico no botão "+ Novo Usuário"
    E preencho o campo "Nascimento" com "1990-01-01"
    E clico no botão "Salvar"
    Então o sistema mostra na lista de usuarios.

Cenario: Cadastro com data de nascimento menor 18 anos 
    Quando eu clico no botão "+ Novo Usuário"
    E preencho o campo " Nascimento" com "2006-06-23"
    E clico no botão "Salvar"
    Então o sistema deve bloquear esta ação.
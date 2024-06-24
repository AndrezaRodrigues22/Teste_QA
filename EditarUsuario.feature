# language: pt

Funcionalidade: Botão de Editar Usuário
  Como um usuário do sistema de contato seguro
  Eu quero poder editar as informações dos usuários existentes
  Para que eu possa atualizar seus dados quando necessário

 Contexto:
    Dado que estou na página do sistema contato seguro
    
  Cenario: Botão de Editar com sucesso
    Quando clico no botão "Edit" da lista de usuários
    E o formulário de edição deve estar pré-preenchido com as informações do usuário
    Entao o sistema deve permitir editar as informações dos usuários com sucesso

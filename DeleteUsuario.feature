# language: pt

Funcionalidade: Botão Delete.
    Como um administrador do sistema de contato seguro
    Quero poder deletar usuários da lista
    Para que eu possa remover usuários desnecessários ou incorretos
Contexto:
    Dado que estou na página do sistema contato seguro
    
Cenario: Sistema exibe mensagem de sucesso ao deletar o usuário.
    Dado que vejo o usuário "Andreza test" na lista de usuários
    Quando eu clico no botão "Delete"
    Entao o sistema deve exibir uma mensagem "Usuário deletado com sucesso"
    E o usuário "Andreza Test"  deve excluir da lista de usuários
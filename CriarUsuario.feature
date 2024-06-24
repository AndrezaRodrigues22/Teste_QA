# language: pt

Funcionalidade: Cadastro de novo usuário no sistema de contato seguro
    Como usuário administrador do sistema contato seguro
    Quero poder adicionar os usuários
    Para gerenciar/visualizar minhas relações e informações de todos os usuarios cadastrados

Contexto:
    Dado estou na página do sistema de contato seguro

Cenario: Cadastrar um novo usuário com sucesso.
    Quando eu clico no botão "+ Novo Usuário"
    E preencho os seguintes campos:
    | Nome         | Email                 | Empresas      |
    | Ana Silva    | ana.silva@test.com    | Empresa1      |
    E clico em "Salvar"
    Então o sistema deve exibir o novo usuário na lista de usuários

Cenario: Verificando campos obrigatórios.
    Quando eu clico no botão "+ Novo Usuário"
    E não preencho os campos obrigatórios
    E clico em "Salvar"
    Então o sistema deve exibir uma mensagem de alerta "Preencha este campo"

Cenario: Cadastrar usuário com campos opcionais vazios.
    Quando eu clico no botão "+ Novo Usuário"
    E preencho os seguintes campos obrigatórios:
    | Nome         | Email                    | Empresas        |  Nascimento   |
    | Maria Santos | maria.santos@test.com    | Empresa1        |  20/04/2000   |
    E não preencho os campos opcionais:
    | Telefone | Cidade |
    E clico em "Salvar"
    Então o sistema deve criar o novo usuário com os campos opcionais vazios

Cenário: Tentar cadastrar usuário com email já existente.
    Quando eu clico no botão "+ Novo Usuário"
    E o email "usuario_existente@example.com" já está cadastrado no sistema
    Quando tento cadastrar um novo usuário com o mesmo email
    Então o sistema deve exibir a mensagem de alerta "Email já registrado"
    E o usuário não deve ser cadastrado no sistema

Funcionalidade: Cadastro de Usuário sem Inserir Empresa

  Cenário: Tentar cadastrar usuário sem inserir a empresa.
    Quando clico no botão "+Novo Usuário"
    E não seleciono a Empresa
    E clico em "salvar"
    Então o sistema mostra uma mensagem de atenção "Insira as empresas do usuário!"

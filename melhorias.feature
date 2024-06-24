# language: pt

Funcionalidade: Cadastro de novo usuário
  Como usuario do sistema
  Quero cadastrar novos usuários
  Para que eles possam acessar o sistema e suas funcionalidades

Cenário: Cadastrar usuário com todos os campos obrigatórios preenchidos corretamente.
  Dado que estou na página de cadastro de usuários
  Quando preencho todos os campos obrigatórios com informações válidas
    | Nome         | Email                      | Telefone         |  Empresas   |  Cidade   | Nascimento   |
    | João         | joao.oliveira@teste.com    | 92999638401      |  Empresa1   |  Manaus   | 02/04/1998   |
  E clico em "Salvar"
  Então o sistema deve criar o novo usuário
  E devo ver a mensagem "Usuário cadastrado com sucesso"

Cenário: Tentar cadastrar usuário sem preencher todos os campos obrigatórios.
  Dado que estou na página do sistema de contato seguro
  Quando tento salvar sem preencher todos os campos obrigatórios
  Então o sistema deve exibir mensagens de erro indicando que todos os campos obrigatórios são necessários
  E o usuário não deve ser cadastrado no sistema

Funcionalidade: Mostrar Mensagem de Sucesso ao Usuário
   Como usuario do sistema
   Quero poder visualizar uma mensagem de sucesso ao criar usuario
   Para que esta ação seja validada com sucesso

  Contexto:
    Dado que estou na página do sistema de contato seguro

  Cenário: Enviar uma mensagem de sucesso ao usuário.
    Quando clico "+ Novo usuario"
    E preencho todos os campos obrigatórios
    E clico em "Salvar"
    Então o sistema deve exibir uma mensagem com sucesso ao criar o usuario

Funcionalidade: Validação da Data de Nascimento no Cadastro de Usuário
    Como usuario do sistema contato seguro
    Quero validar a data de nascimento do usuario
    Para que sejam validada
Contexto: 
    Dado que estou na página do sistema de contato seguro

Cenario: Cadastro com data de nascimento menor 18 anos.
    Quando eu clico no botão "+ Novo Usuário"
    E preencho o campo " Nascimento" com "2006-06-23"
    E clico no botão "Salvar"
    Então o sistema deve bloquear esta ação.
Funcionalidade: Busca de Usuário campo Global

  Contexto:
    Dado que estou na página do sistema de contato seguro

  Cenário: Buscar um usuário pelo nome.
    Quando eu digito "João" no campo de busca de usuário
    E clico no botão de busca
    Então o sistema deve exibir uma lista de usuários contendo o nome "Joao"
    E o sistema deve destacar o nome "Joao" nos resultados da busca

Funcionalidade: Filtragem por Campo Específico

  Contexto:
    Dado que estou na página do sistema de contato seguro

  Cenário: Filtrar por um campo específico
    Quando eu digito "cidade" no campo de filtro
    E clico no botão de busca
    Então o sistema deve exibir uma lista filtrada dos itens que correspondem a "cidade"
    E todos os itens exibidos devem conter a "cidade" no campo específico

Funcionalidade: Ordenação de Itens colunas

  Contexto:
    Dado que estou na página de listagem de usuarios

  Cenário: Ordenar itens por nome em ordem alfabética ascendente
    Quando eu seleciono a opção de ordenar por nome de forma ascendente
    Então o sistema deve exibir uma lista de produtos ordenada por nome em ordem alfabética ascendente
    E o primeiro usuario da lista deve ser o que vem primeiro alfabeticamente

Funcionalidade: Limite de Caracteres em Campo de Texto

  Contexto:
    Dado que estou na página de criacao de usuario

  Cenário: Validar limite de caracteres em campo de descrição
    Quando eu insiro um texto com mais de 30 caracteres no campo
    | Nome                              | Email                | Telefone         |  Empresas   |  Cidade                                 | Nascimento   |
    | andrezaoliveirarodriguestestet1   | andreza@teste.com    | 92999638401      |  Empresa1   |  Manaustestetstetstetstetetstetetstet1  | 02/04/1998   |
    E clico "Salvar"
    Então o sistema deve exibir uma mensagem de erro indicando que o texto excede o limite de caracteres permitido
    E não deve salvar as alterações no perfil do usuário





describe('Pagina de Cadastro', () => {
  it('Deve preencher os campos do formulário corretamente para cadastrar um novo usuário', () => {
    cy.visit('http://localhost:5400')
    cy.get(('#new-user')).click();
    cy.get('[placeholder="Nome"]').type('Lucas test',{delay: 70 });
    cy.get('[placeholder="Email"]').type('Lucas@email.com',{delay: 70 });
    cy.get('[placeholder="Telefone"]').type('9299900290',{delay: 70 });
    cy.get('[placeholder="Cidade de nascimento"]').type('Manaus',{delay: 70 });
    cy.get('[placeholder="Data de nascimento"]').type('1998-06-02',{delay: 70 });
    cy.get('#search_input').click();
    cy.get('.search-wrapper', { timeout: 10000 }).should('exist')
    cy.contains('li.option.highlightOption.highlight', 'Empresa 1').should('be.visible').click({ force: true });
    cy.get('.ReactModal__Content').click();
    cy.wait(2000);
    cy.get('.sc-eCImPb > button').click();
  })
})
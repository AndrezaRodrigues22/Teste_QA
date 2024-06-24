describe('Pagina de Cadastro', () => {
  it('Preencher os campos do formulário incorretamente ap cadastrar um novo usuário', () => {
    cy.visit('http://localhost:5400')
    cy.get(('#new-user')).click();
    cy.get(('#new-user'), { timeout: 10000 }).should('be.visible')
    cy.get(('.sc-eCImPb > button')).click();
  })
})
describe('testing add to cart functionality', () => {
  beforeEach(() => {
    cy.visit('/')
  })

  it("cart count increases by one", () => {
    cy.get('#2').click({force: true})
    cy.get('[data-cy="cart"]').contains("My Cart (1)")
    // better way is to assign data-attribute
  })

})
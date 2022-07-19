describe('testing product details', () => {
  beforeEach(() => {
    cy.visit('/')
  })

  it("products are clickable", () => {
    cy.get('[alt="Giant Tea"]').click();
    cy.get(".product-detail").should("be.visible");
  })

})
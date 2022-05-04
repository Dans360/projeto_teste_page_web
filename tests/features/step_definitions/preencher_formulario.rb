Quando('eu faço um cadastro') do
    @teste1 = PreencherFormularioPage.new
    
    @teste1.load
    @teste1.preencherusuario
    sleep(5)
end
  
Entao('eu verifico cadastro com sucesso') do
    @texto = find('#notice')
    expect(@texto.text).to eql 'Usuário Criado com sucesso'
end
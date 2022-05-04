class PreencherFormularioPage < SitePrism::Page
    set_url '/users/new'
    
    element :nome , '#user_name'
    element :ultimo_nome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'
    
    element :criar, 'input[value="Criar"]'
    
    def preencherusuario
        nome.set 'Primeiro_nome'
        ultimo_nome.set 'SobreNome'
        email.set 'primeiro_nome360@uol.com'
        endereco.set 'rua sem saída'
        universidade.set 'Anhembi murumbi'
        profissao.set 'Analista'
        genero.set 'Masculino'
        idade.set '34'
        criar.click    
    end
end
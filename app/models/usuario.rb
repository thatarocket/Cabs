# email:string
# password_digest:string
# username:string

# password:string virtual
class Usuario < ApplicationRecord
    has_secure_password
    
    validates :username, presence: { message: "É obrigatório informar o nome de usuário!" }
    validates :email, presence: { message: "É obrigatório informar o email!" }, format: { with: URI::MailTo::EMAIL_REGEXP,
    message: "Formato de e-mail inválido!" } 
    validates :password, presence: { message: "É obrigatório informar a senha!" }
end

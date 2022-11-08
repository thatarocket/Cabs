# email:string
# password_digest:string
# username:string

# password:string virtual
class Usuario < ApplicationRecord
    has_secure_password

    def self.authenticate(username, password)   
        user = find_by(username)
        if(user && user.password == password)
            user
        else
            nil
        end
    end
    
    validates :username, presence: { message: "É obrigatório informar o nome de usuário!" },uniqueness: true
    validates :email, presence: { message: "É obrigatório informar o email!" }, format: { with: URI::MailTo::EMAIL_REGEXP,
    message: "Formato de e-mail inválido!" },uniqueness: true
    validates :password, presence: { message: "É obrigatório informar a senha!" }
end

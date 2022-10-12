class Usuario < ApplicationRecord
    validates :username, presence: { message: "É obrigatório informar o nome de usuário!" }, uniqueness: { message: "Nome de usuário já existe!" }
    validates :email, presence: { message: "É obrigatório informar o email!" }, format: { with: URI::MailTo::EMAIL_REGEXP,
    message: "Formato de e-mail inválido!" } , uniqueness: { message: "Já existe uma conta com esse email!" }
    validates :senha, presence: { message: "É obrigatório informar a senha!" }
end

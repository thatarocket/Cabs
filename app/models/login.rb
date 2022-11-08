class Login < ApplicationRecord
    has_secure_password
    validates :username, presence: { message: "É obrigatório informar o nome de usuário!" },uniqueness: true
    validates :password, presence: { message: "É obrigatório informar a senha!" }
end

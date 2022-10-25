class Login < ApplicationRecord
    validates :username, presence: { message: "É obrigatório informar o nome de usuário!" }
    validates :senha, presence: { message: "É obrigatório informar a senha!" }
end

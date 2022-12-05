FactoryBot.define do
    factory :item_troca do
        nome { 'DVD Harry Potter' }
        descricao { 'DVD Harry Potter e o Cálice de fogo' }
        categoria { 'Objetos' }
        condicao { 'Usado' }
    end

    factory :item_troca2, class: ItemTroca do
        nome { 'Blusa Harry Potter' }
        descricao { 'Harry Potter e o Cálice de fogo' }
        categoria { 'Vestiário' }
        condicao { 'Usado' }
    end

    factory :item_troca3, class: ItemTroca do
        nome { 'Sapato Harry Potter' }
        descricao { 'Harry Potter e o Cálice de fogo' }
        categoria { 'Sapatos' }
        condicao { 'Usado' }
    end
  end
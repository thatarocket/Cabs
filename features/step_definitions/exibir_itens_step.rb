Dado('não exista um item na categoria') do
    find(:xpath,'/html/body/div[2]/section[2]/p[2]').text == 'Não há itens nesta categoria'
end


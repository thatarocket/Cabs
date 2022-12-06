Dado('não exista um item na categoria') do
    find(:xpath,'//*[@id="Acessórios"]/div/p').text == 'Não há itens nesta categoria'
    
end


class ItensController < ApplicationController
    def search_item
        ItemSearch.find_in_item(params[:search_terms])
    end

end


require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
    context 'GET #item' do
        it 'should success and render to item page' do
            get :index
            expect(response).to have_http_status(200)
            expect(response).to render_template(:index)

        end
    end
end
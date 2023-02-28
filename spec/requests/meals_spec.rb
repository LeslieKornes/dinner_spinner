require 'rails_helper'

RSpec.describe "Meals", type: :request do
  
  describe "GET /index" do
    it 'returns a successful response' do
      get '/meals'

      expect(response).to have_http_status(200)
    end  
  end
end

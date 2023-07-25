require 'rails_helper'

RSpec.describe 'User', type: :request do
  context 'GET /users' do
    it 'should return http success' do
      get '/users'
      expect(response.status).to eq(200)
      expect(response).to be_successful
    end
  end

  context 'GET /users/:id' do
    it 'should renders a successful response' do
      user = User.create!(name: 'anbehindY', photo: 'person.jpg', bio: 'Full-stack web developer')
      get user_url(user)
      expect(response).to be_successful
    end
  end
end

require 'rails_helper'

RSpec.describe 'Post', type: :request do
  let(:user) { User.create!(name: 'anbehindY', photo: 'person.jpg', bio: 'Full-stack web developer') }
  let(:post) { Post.create!(author: user, title: 'Programming', text: 'Software development is an iterative process') }

  context 'GET #index' do
    it 'should renders a successful response' do
      get "/users/#{user.id}/posts"
      expect(response).to be_successful
    end

    it 'should render the correct template' do
      get "/users/#{user.id}/posts"
      expect(response.body).to render_template(:index)
    end

    it 'should return the correct placeholder text' do
      get "/users/#{user.id}/posts"
      expect(response.body).to include('List of all posts from the given user id')
    end
  end

  context 'GET #show' do
    it 'should render the successful response' do
      get "/users/#{user.id}/posts/#{post.id}"
      expect(response).to be_successful
    end

    it 'should render the correct template' do
      get "/users/#{user.id}/posts/#{post.id}"
      expect(response.body).to render_template(:show)
    end

    it 'should return the correct placeholder text' do
      get "/users/#{user.id}/posts/#{post.id}"
      expect(response.body).to include('Post of the given parameters')
    end
  end
end
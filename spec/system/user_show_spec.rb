require 'rails_helper'

RSpec.describe 'User show page', type: :system do
  let(:user) { create(:user) }

  before do
    visit user_path(user)
  end

  it 'shows the user name' do
    expect(page).to have_content(user.name)
  end
end

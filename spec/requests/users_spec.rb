require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get(users_path) }
    it 'check status' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders correct template' do
      expect(response).to render_template('index')
    end

    it 'renders correct template' do
      expect(response).to_not render_template('show')
    end

    it 'check for placeholder text' do
      expect(response.body).to include('Users#index')
    end

    it 'check for placeholder text' do
      expect(response.body).to include('Users#index')
    end
  end

  describe 'GET /show' do
    before(:example) { get('/users/365') }

    it 'check status' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders correct template' do
      expect(response.body).to render_template('show')
    end

    it 'renders correct template' do
      expect(response).to_not render_template('index')
    end

    it 'check for placeholder text' do
      expect(response.body).to include('Users#show')
    end

    it 'check for placeholder text' do
      expect(response.body).to include('Users#show')
    end
  end
end

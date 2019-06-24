require 'rails_helper'

RSpec.describe BlogPostsController, type: :controller do
  describe 'GET #new' do
    it 'renders the page' do
      get :new 
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST #create' do 
    context 'with valid params' do
      subject { post :create, params: FactoryBot.attributes_for(:blog_post) }
      it { is_expected.to change(BlogPost, :count).by(1) }
      it { is_expected.to redirect_to BlogPost.last }
    end
  end
end

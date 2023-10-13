require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  let(:valid_attributes) { attributes_for(:your_model) }
  let(:user) { create(:user) } # Create a user using the factory

  describe 'GET #index' do
    context 'when user is signed in' do
      before do
        sign_in user # Sign in the user using Devise test helper
        get :index
      end

      it 'returns a success response' do
        expect(response).to be_successful
      end
    end
  #describe "GET #index" do
    #it "responds with a successful HTTP status code" do
      #get :index
      #expect(response).to have_http_status(:success)
    #end
    
    #it "renders the index template" do
      #get :index
      #expect(response).to render_template("index")
    #end
  end
end

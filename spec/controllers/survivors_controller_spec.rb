require 'rails_helper'

RSpec.describe SurvivorsController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      survivor = Survivor.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      survivor = Survivor.create! valid_attributes
      get :show, params: {id: survivor.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Survivor" do
        expect {
          post :create, params: {survivor: valid_attributes}, session: valid_session
        }.to change(Survivor, :count).by(1)
      end

      it "renders a JSON response with the new survivor" do

        post :create, params: {survivor: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(survivor_url(Survivor.last))
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the new survivor" do

        post :create, params: {survivor: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested survivor" do
        survivor = Survivor.create! valid_attributes
        put :update, params: {id: survivor.to_param, survivor: new_attributes}, session: valid_session
        survivor.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the survivor" do
        survivor = Survivor.create! valid_attributes

        put :update, params: {id: survivor.to_param, survivor: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the survivor" do
        survivor = Survivor.create! valid_attributes

        put :update, params: {id: survivor.to_param, survivor: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested survivor" do
      survivor = Survivor.create! valid_attributes
      expect {
        delete :destroy, params: {id: survivor.to_param}, session: valid_session
      }.to change(Survivor, :count).by(-1)
    end
  end

end

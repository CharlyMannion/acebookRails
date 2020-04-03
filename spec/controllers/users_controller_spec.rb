require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET /new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
      user :create, params: { user: { email: "test@example.com", password: "testpassword", username: "testUsername" } }
      expect(response).to redirect_to(users_url)
    end

    it "creates a user" do
      user :create, params: { user: { email: "test@example.com", password: "testpassword", username: "testUsername" } }
      expect(User.find_by(email: "test@example.com")).to be
    end
  end

  describe "GET /" do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

end

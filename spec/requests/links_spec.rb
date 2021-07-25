require 'rails_helper'

RSpec.describe "Links", type: :request do
  describe "GET /" do
     it "expect to render new_template successfully" do
        get "/"
        expect(response).to render_template(:new)
     end

     it "expect to display 'Generate a Short URL'" do
        get "/"
        expect(response.body).to include("Generate a Short URL")
     end

     it "does not render a different template" do
        get "/"
        expect(response).to_not render_template(:show)
    end
  end

  describe "POST /" do
    it "creates a new short_URL and redirect to #show template" do
        get "/"

        post "/links", :params => { :link => {:long_url => "https://stackoverflow.com/questions/60160204/rails-controller-test-with-rspec"} }

        expect(response).to redirect_to(assigns(:link))
        follow_redirect!

        expect(response).to render_template(:show)
        expect(response.body).to include("Your finalized Link")
        expect(response.body).to include("Back")
    end
  end

  describe "GET /" do
    it "redirect from a saved short_url to a long_url" do
        get "/46"
        expect(response).to redirect_to ("https://bootrails.com/blog/rails-form-tutorial")
    end
  end
end

require 'rails_helper'

describe StaticPagesController, :type => :controller do 
  context "GET #about" do 
    before do 
      get :about
    end

    it "responds successfully with an HTTP 200 status code" do 
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the about template" do 
      expect(response).to render_template("about")
    end
  end

  context "GET #index" do 
    before do 
      get :index
    end

    it "responds successfully with an HTTP 200 status code" do 
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do 
      expect(response).to render_template("index")
    end
  end

  context "GET #contact" do 
    before do 
      get :contact
    end

    it "responds successfully with an HTTP 200 status code" do 
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do 
      expect(response).to render_template("contact")
    end
  end

  # Thanks page is rendered in a GET response from #contact
end
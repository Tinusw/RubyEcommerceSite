require 'rails_helper'

describe UsersController, :type => :controller do 

  before do 
    @user = FactoryGirl.create(:user)
  end

  describe "GET #show" do 
    context "User is logged in" do 
      before do 
        sign_in @user
      end

      it "loads correct user details" do 
        get :show, params: { id: @user.id }
        expect(response).to  be_success
        expect(assigns(:user)).to eq @user
      end
    end

    context "No User is logged in" do 
      it "redirect to login" do 
        get :show, params: { id: @user.id }
        expect(response).to redirect_to(root_path)
      end
    end
  end

  describe "GET #edit" do 
    context "User is logged in" do 
      before do 
        sign_in @user
      end

      it "renders correct user edit page" do 
        get :edit, params: { id: @user.id }
        expect(response).to be_success
        expect(response).to render_template("edit")
      end
    end

    context "No user is logged in" do 
      it "redirects to login instead of edit page" do 
        get :edit, params: {id: @user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
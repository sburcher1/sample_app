require 'rails_helper' 

  describe ProductsController do 

     before do
       @user = User.create!(email: "a@b.com", password: "password", password_confirmation: "password")
     end
    
    describe "GET #index" do 
      it "populates an array of contacts" do
        sign_in @user
        product = Product.create!(name: "woo", description: "woooooooooooooooooooooooooooooooooooooooooooo")
        get :index 
        expect(response).not_to be_redirect
       
        expect(assigns(:products)).to eq([product])
        end
        
    end

    describe "GET #show" do 
      it "assigns the requested contact to @contact" 
      it "renders the :show template" 
    end

    describe "GET #new" do
      it "assigns a new Contact to @contact" 
      it "renders the :new template" 
    end 


  end
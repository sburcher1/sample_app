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
      
      it "assigns the requested product to @product" do
        sign_in @user
        product = Product.create!(name: "woo", description: "woooooooooooooooooooooooooooooooooooooooooooo")
        expect(assigns(:product)).to eq @product
      end

      it "renders the :show template" do
        sign_in @user
        product = Product.create!(name: "woo", description: "woooooooooooooooooooooooooooooooooooooooooooo")
        get :show, {id: product.id}
        expect(response).not_to be_redirect
      end

    end

    describe "GET #new" do
      it "assigns a new Product to @product" do
        sign_in @user
        product = Product.create!(name: "woo", description: "woooooooooooooooooooooooooooooooooooooooooooo")
        expect(assigns(:product)).to eq @product
      end

      it "renders the :new template" do
        sign_in @user
        product = Product.create!(name: "woo", description: "woooooooooooooooooooooooooooooooooooooooooooo")
        get :new, {id: product.id}
        expect(response).not_to be_redirect
      end
    end


  end

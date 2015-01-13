require 'rails_helper' 

  describe ProductsController do 
    
    describe "GET #index" do 
      it "populates an array of contacts"
      get :index 
      assigns(:products).should eq([product])
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
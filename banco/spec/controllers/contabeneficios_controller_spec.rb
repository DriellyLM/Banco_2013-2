require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ContabeneficiosController do

  # This should return the minimal set of attributes required to create a valid
  # Contabeneficio. As you add validations to Contabeneficio, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "conta" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContabeneficiosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all contabeneficios as @contabeneficios" do
      contabeneficio = Contabeneficio.create! valid_attributes
      get :index, {}, valid_session
      assigns(:contabeneficios).should eq([contabeneficio])
    end
  end

  describe "GET show" do
    it "assigns the requested contabeneficio as @contabeneficio" do
      contabeneficio = Contabeneficio.create! valid_attributes
      get :show, {:id => contabeneficio.to_param}, valid_session
      assigns(:contabeneficio).should eq(contabeneficio)
    end
  end

  describe "GET new" do
    it "assigns a new contabeneficio as @contabeneficio" do
      get :new, {}, valid_session
      assigns(:contabeneficio).should be_a_new(Contabeneficio)
    end
  end

  describe "GET edit" do
    it "assigns the requested contabeneficio as @contabeneficio" do
      contabeneficio = Contabeneficio.create! valid_attributes
      get :edit, {:id => contabeneficio.to_param}, valid_session
      assigns(:contabeneficio).should eq(contabeneficio)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Contabeneficio" do
        expect {
          post :create, {:contabeneficio => valid_attributes}, valid_session
        }.to change(Contabeneficio, :count).by(1)
      end

      it "assigns a newly created contabeneficio as @contabeneficio" do
        post :create, {:contabeneficio => valid_attributes}, valid_session
        assigns(:contabeneficio).should be_a(Contabeneficio)
        assigns(:contabeneficio).should be_persisted
      end

      it "redirects to the created contabeneficio" do
        post :create, {:contabeneficio => valid_attributes}, valid_session
        response.should redirect_to(Contabeneficio.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contabeneficio as @contabeneficio" do
        # Trigger the behavior that occurs when invalid params are submitted
        Contabeneficio.any_instance.stub(:save).and_return(false)
        post :create, {:contabeneficio => { "conta" => "invalid value" }}, valid_session
        assigns(:contabeneficio).should be_a_new(Contabeneficio)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Contabeneficio.any_instance.stub(:save).and_return(false)
        post :create, {:contabeneficio => { "conta" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested contabeneficio" do
        contabeneficio = Contabeneficio.create! valid_attributes
        # Assuming there are no other contabeneficios in the database, this
        # specifies that the Contabeneficio created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Contabeneficio.any_instance.should_receive(:update).with({ "conta" => "MyString" })
        put :update, {:id => contabeneficio.to_param, :contabeneficio => { "conta" => "MyString" }}, valid_session
      end

      it "assigns the requested contabeneficio as @contabeneficio" do
        contabeneficio = Contabeneficio.create! valid_attributes
        put :update, {:id => contabeneficio.to_param, :contabeneficio => valid_attributes}, valid_session
        assigns(:contabeneficio).should eq(contabeneficio)
      end

      it "redirects to the contabeneficio" do
        contabeneficio = Contabeneficio.create! valid_attributes
        put :update, {:id => contabeneficio.to_param, :contabeneficio => valid_attributes}, valid_session
        response.should redirect_to(contabeneficio)
      end
    end

    describe "with invalid params" do
      it "assigns the contabeneficio as @contabeneficio" do
        contabeneficio = Contabeneficio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Contabeneficio.any_instance.stub(:save).and_return(false)
        put :update, {:id => contabeneficio.to_param, :contabeneficio => { "conta" => "invalid value" }}, valid_session
        assigns(:contabeneficio).should eq(contabeneficio)
      end

      it "re-renders the 'edit' template" do
        contabeneficio = Contabeneficio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Contabeneficio.any_instance.stub(:save).and_return(false)
        put :update, {:id => contabeneficio.to_param, :contabeneficio => { "conta" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested contabeneficio" do
      contabeneficio = Contabeneficio.create! valid_attributes
      expect {
        delete :destroy, {:id => contabeneficio.to_param}, valid_session
      }.to change(Contabeneficio, :count).by(-1)
    end

    it "redirects to the contabeneficios list" do
      contabeneficio = Contabeneficio.create! valid_attributes
      delete :destroy, {:id => contabeneficio.to_param}, valid_session
      response.should redirect_to(contabeneficios_url)
    end
  end

end

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

describe CategoriesController do

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in CategoriesController. 
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all categories as @categories" do
      category = create :category
      get :index, {}, valid_session
#      assigns(:categories).should eq([category])
    end
  end

  describe "GET show" do
    it "assigns the requested category as @category" do
      category = create :category
      get :show, {:id => category.to_param}, valid_session
      assigns(:category).should eq(category)
    end
  end

  describe "GET new" do
    it "assigns a new category as @category" do
      get :new, {}, valid_session
      assigns(:category).should be_a_new(Category)
    end
  end

  describe "GET edit" do
    it "assigns the requested category as @category" do
      category = create :category
      get :edit, {:id => category.to_param}, valid_session
      assigns(:category).should eq(category)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Category" do
        expect {
          post :create, {:category =>  attributes_for(:category)}, valid_session
        }.to change(Category, :count).by(1)
      end

      it "assigns a newly created category as @category" do
        post :create, {:category =>  attributes_for(:category)}, valid_session
        assigns(:category).should be_a(Category)
        assigns(:category).should be_persisted
      end

      it "redirects to the created category" do
        post :create, {:category =>  attributes_for(:category)}, valid_session
        response.should redirect_to(Category.unscoped.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved category as @category" do
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        post :create, {:category => {  :name => ""}}, valid_session
        assigns(:category).should be_a_new(Category)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        post :create, {:category => {  :name => ""}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      
      it "assigns the requested category as @category" do
        category = create :category
        put :update, {:id => category.to_param, :category =>  attributes_for(:category)}, valid_session
        assigns(:category).should eq(category)
      end

      it "redirects to the category" do
        category = create :category
        put :update, {:id => category.to_param, :category =>  attributes_for(:category)}, valid_session
        response.should redirect_to(category)
      end
    end

    describe "with invalid params" do
      it "assigns the category as @category" do
        category = create :category
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        put :update, {:id => category.to_param, :category => { :name => "" }}, valid_session
        assigns(:category).should eq(category)
      end

      it "re-renders the 'edit' template" do
        category = create :category
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        put :update, {:id => category.to_param, :category => { :name => ""}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested category" do
      category = create :category
      expect {
        delete :destroy, {:id => category.to_param}, valid_session
      }.to change(Category, :count).by(-1)
    end

    it "redirects to the categories list" do
      category = create :category
      delete :destroy, {:id => category.to_param}, valid_session
      response.should redirect_to(categories_url)
    end
  end

end

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/skool_years", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # SkoolYear. As you add validations to SkoolYear, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      SkoolYear.create! valid_attributes
      get skool_years_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      skool_year = SkoolYear.create! valid_attributes
      get skool_year_url(skool_year)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_skool_year_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      skool_year = SkoolYear.create! valid_attributes
      get edit_skool_year_url(skool_year)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new SkoolYear" do
        expect {
          post skool_years_url, params: { skool_year: valid_attributes }
        }.to change(SkoolYear, :count).by(1)
      end

      it "redirects to the created skool_year" do
        post skool_years_url, params: { skool_year: valid_attributes }
        expect(response).to redirect_to(skool_year_url(SkoolYear.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new SkoolYear" do
        expect {
          post skool_years_url, params: { skool_year: invalid_attributes }
        }.to change(SkoolYear, :count).by(0)
      end

    
      it "renders a successful response (i.e. to display the 'new' template)" do
        post skool_years_url, params: { skool_year: invalid_attributes }
        expect(response).to be_successful
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested skool_year" do
        skool_year = SkoolYear.create! valid_attributes
        patch skool_year_url(skool_year), params: { skool_year: new_attributes }
        skool_year.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the skool_year" do
        skool_year = SkoolYear.create! valid_attributes
        patch skool_year_url(skool_year), params: { skool_year: new_attributes }
        skool_year.reload
        expect(response).to redirect_to(skool_year_url(skool_year))
      end
    end

    context "with invalid parameters" do
    
      it "renders a successful response (i.e. to display the 'edit' template)" do
        skool_year = SkoolYear.create! valid_attributes
        patch skool_year_url(skool_year), params: { skool_year: invalid_attributes }
        expect(response).to be_successful
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested skool_year" do
      skool_year = SkoolYear.create! valid_attributes
      expect {
        delete skool_year_url(skool_year)
      }.to change(SkoolYear, :count).by(-1)
    end

    it "redirects to the skool_years list" do
      skool_year = SkoolYear.create! valid_attributes
      delete skool_year_url(skool_year)
      expect(response).to redirect_to(skool_years_url)
    end
  end
end

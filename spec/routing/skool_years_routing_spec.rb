require "rails_helper"

RSpec.describe SkoolYearsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/skool_years").to route_to("skool_years#index")
    end

    it "routes to #new" do
      expect(get: "/skool_years/new").to route_to("skool_years#new")
    end

    it "routes to #show" do
      expect(get: "/skool_years/1").to route_to("skool_years#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/skool_years/1/edit").to route_to("skool_years#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/skool_years").to route_to("skool_years#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/skool_years/1").to route_to("skool_years#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/skool_years/1").to route_to("skool_years#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/skool_years/1").to route_to("skool_years#destroy", id: "1")
    end
  end
end

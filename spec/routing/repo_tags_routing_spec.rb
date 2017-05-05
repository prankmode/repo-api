require "rails_helper"

RSpec.describe RepoTagsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/repo_tags").to route_to("repo_tags#index")
    end

    it "routes to #new" do
      expect(:get => "/repo_tags/new").to route_to("repo_tags#new")
    end

    it "routes to #show" do
      expect(:get => "/repo_tags/1").to route_to("repo_tags#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/repo_tags/1/edit").to route_to("repo_tags#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/repo_tags").to route_to("repo_tags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/repo_tags/1").to route_to("repo_tags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/repo_tags/1").to route_to("repo_tags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/repo_tags/1").to route_to("repo_tags#destroy", :id => "1")
    end

  end
end

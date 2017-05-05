require 'rails_helper'

RSpec.describe "RepoTags", type: :request do
  describe "GET /repo_tags" do
    it "works! (now write some real specs)" do
      get repo_tags_path
      expect(response).to have_http_status(200)
    end
  end
end

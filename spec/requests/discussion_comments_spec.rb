require 'spec_helper'

describe "DiscussionComments" do
  describe "GET /discussion_comments" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get discussion_comments_path
      response.status.should be(200)
    end
  end
end

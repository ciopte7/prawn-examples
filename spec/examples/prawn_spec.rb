require "spec_helper"

describe "failure" do 
  it "should fail" do 
    true.should_not be_true
  end
end
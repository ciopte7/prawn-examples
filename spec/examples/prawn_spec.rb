require "spec_helper"

describe "failure" do 
  it "should work" do 
    true.should be_true
  end

  it 'should raise an exception' do
    raise "Mike Testing"
  end
end

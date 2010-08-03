require 'spec_helper'

describe Document do
  before(:each) do
    @valid_attributes = {
      :parent_id => 1,
      :content_type => "value for content_type",
      :filename => "value for filename",
      :size => 1,
      :attachable_id => 1,
      :attachable_type => "value for attachable_type",
      :title => "value for title"
    }
  end

  it "should create a new instance given valid attributes" do
    Document.create!(@valid_attributes)
  end


	it "should FAIL if size is greater than 1 megabyte" do
		file_too_big = User.new(@valid_attributes.merge(:size => 2.megabytes))
		file_too_big.should_not be_valid
	end
		
end

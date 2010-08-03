require 'spec_helper'

describe "/documents/show.html.erb" do
  include DocumentsHelper
  before(:each) do
    assigns[:document] = @document = stub_model(Document,
      :parent_id => 1,
      :content_type => "value for content_type",
      :filename => "value for filename",
      :size => 1,
      :attachable_id => 1,
      :attachable_type => "value for attachable_type",
      :title => "value for title"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/value\ for\ content_type/)
    response.should have_text(/value\ for\ filename/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ attachable_type/)
    response.should have_text(/value\ for\ title/)
  end
end

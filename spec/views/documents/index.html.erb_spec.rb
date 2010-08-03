require 'spec_helper'

describe "/documents/index.html.erb" do
  include DocumentsHelper

  before(:each) do
    assigns[:documents] = [
      stub_model(Document,
        :parent_id => 1,
        :content_type => "value for content_type",
        :filename => "value for filename",
        :size => 1,
        :attachable_id => 1,
        :attachable_type => "value for attachable_type",
        :title => "value for title"
      ),
      stub_model(Document,
        :parent_id => 1,
        :content_type => "value for content_type",
        :filename => "value for filename",
        :size => 1,
        :attachable_id => 1,
        :attachable_type => "value for attachable_type",
        :title => "value for title"
      )
    ]
  end

  it "renders a list of documents" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for content_type".to_s, 2)
    response.should have_tag("tr>td", "value for filename".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for attachable_type".to_s, 2)
    response.should have_tag("tr>td", "value for title".to_s, 2)
  end
end

require 'spec_helper'

describe "/documents/edit.html.erb" do
  include DocumentsHelper

  before(:each) do
    assigns[:document] = @document = stub_model(Document,
      :new_record? => false,
      :parent_id => 1,
      :content_type => "value for content_type",
      :filename => "value for filename",
      :size => 1,
      :attachable_id => 1,
      :attachable_type => "value for attachable_type",
      :title => "value for title"
    )
  end

  it "renders the edit document form" do
    render

    response.should have_tag("form[action=#{document_path(@document)}][method=post]") do
      with_tag('input#document_parent_id[name=?]', "document[parent_id]")
      with_tag('input#document_content_type[name=?]', "document[content_type]")
      with_tag('input#document_filename[name=?]', "document[filename]")
      with_tag('input#document_size[name=?]', "document[size]")
      with_tag('input#document_attachable_id[name=?]', "document[attachable_id]")
      with_tag('input#document_attachable_type[name=?]', "document[attachable_type]")
      with_tag('input#document_title[name=?]', "document[title]")
    end
  end
end

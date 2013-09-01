require 'spec_helper'

describe "pages/edit" do
  before(:each) do
    @page = assign(:page, stub_model(Page,
      :type_id => 1,
      :title => "MyText",
      :content => "MyText",
      :status => false
    ))
  end

  it "renders the edit page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", page_path(@page), "post" do
      assert_select "input#page_type_id[name=?]", "page[type_id]"
      assert_select "textarea#page_title[name=?]", "page[title]"
      assert_select "textarea#page_content[name=?]", "page[content]"
      assert_select "input#page_status[name=?]", "page[status]"
    end
  end
end

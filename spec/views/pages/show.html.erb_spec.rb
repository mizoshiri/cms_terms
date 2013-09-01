require 'spec_helper'

describe "pages/show" do
  before(:each) do
    @page = assign(:page, stub_model(Page,
      :type_id => 1,
      :title => "MyText",
      :content => "MyText",
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end

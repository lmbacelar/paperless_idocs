require 'spec_helper'

describe "sections/new" do
  before(:each) do
    assign(:section, stub_model(Section,
      :name => "MyString",
      :content => "MyText",
      :position => 1,
      :ancestry => "MyString"
    ).as_new_record)
  end

  it "renders new section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sections_path, :method => "post" do
      assert_select "input#section_name", :name => "section[name]"
      assert_select "textarea#section_content", :name => "section[content]"
      assert_select "input#section_position", :name => "section[position]"
      assert_select "input#section_ancestry", :name => "section[ancestry]"
    end
  end
end

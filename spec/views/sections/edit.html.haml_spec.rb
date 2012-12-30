require 'spec_helper'

describe "sections/edit" do
  before(:each) do
    @section = assign(:section, stub_model(Section,
      :name => "MyString",
      :content => "MyText",
      :position => 1,
      :ancestry => "MyString"
    ))
  end

  it "renders the edit section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sections_path(@section), :method => "post" do
      assert_select "input#section_name", :name => "section[name]"
      assert_select "textarea#section_content", :name => "section[content]"
      assert_select "input#section_position", :name => "section[position]"
      assert_select "input#section_ancestry", :name => "section[ancestry]"
    end
  end
end

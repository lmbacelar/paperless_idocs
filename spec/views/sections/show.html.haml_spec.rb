require 'spec_helper'

describe "sections/show" do
  before(:each) do
    @section = assign(:section, stub_model(Section,
      :name => "Name",
      :content => "MyText",
      :position => 1,
      :ancestry => "Ancestry"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Ancestry/)
  end
end

require 'rails_helper'

RSpec.describe "schools/show", type: :view do
  before(:each) do
    assign(:school, School.create!(
      school_name: "School Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/School Name/)
  end
end

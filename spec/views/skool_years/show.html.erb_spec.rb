require 'rails_helper'

RSpec.describe "skool_years/show", type: :view do
  before(:each) do
    assign(:skool_year, SkoolYear.create!(
      year: "Year",
      teacher: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Year/)
    expect(rendered).to match(//)
  end
end

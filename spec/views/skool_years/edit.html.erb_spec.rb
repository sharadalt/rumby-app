require 'rails_helper'

RSpec.describe "skool_years/edit", type: :view do
  let(:skool_year) {
    SkoolYear.create!(
      year: "MyString",
      teacher: nil
    )
  }

  before(:each) do
    assign(:skool_year, skool_year)
  end

  it "renders the edit skool_year form" do
    render

    assert_select "form[action=?][method=?]", skool_year_path(skool_year), "post" do

      assert_select "input[name=?]", "skool_year[year]"

      assert_select "input[name=?]", "skool_year[teacher_id]"
    end
  end
end

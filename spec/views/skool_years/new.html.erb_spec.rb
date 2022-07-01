require 'rails_helper'

RSpec.describe "skool_years/new", type: :view do
  before(:each) do
    assign(:skool_year, SkoolYear.new(
      year: "MyString",
      teacher: nil
    ))
  end

  it "renders new skool_year form" do
    render

    assert_select "form[action=?][method=?]", skool_years_path, "post" do

      assert_select "input[name=?]", "skool_year[year]"

      assert_select "input[name=?]", "skool_year[teacher_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "skool_years/index", type: :view do
  before(:each) do
    assign(:skool_years, [
      SkoolYear.create!(
        year: "Year",
        teacher: nil
      ),
      SkoolYear.create!(
        year: "Year",
        teacher: nil
      )
    ])
  end

  it "renders a list of skool_years" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Year".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end

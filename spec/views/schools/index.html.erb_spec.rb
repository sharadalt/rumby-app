require 'rails_helper'

RSpec.describe "schools/index", type: :view do
  before(:each) do
    assign(:schools, [
      School.create!(
        school_name: "School Name"
      ),
      School.create!(
        school_name: "School Name"
      )
    ])
  end

  it "renders a list of schools" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("School Name".to_s), count: 2
  end
end

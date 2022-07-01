require 'rails_helper'

RSpec.describe "teachers/index", type: :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        teacher_id: "Teacher",
        teacher_name: "Teacher Name",
        school_name: "School Name",
        school_year: "School Year"
      ),
      Teacher.create!(
        teacher_id: "Teacher",
        teacher_name: "Teacher Name",
        school_name: "School Name",
        school_year: "School Year"
      )
    ])
  end

  it "renders a list of teachers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Teacher".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Teacher Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("School Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("School Year".to_s), count: 2
  end
end

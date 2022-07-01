require 'rails_helper'

RSpec.describe "teachers/show", type: :view do
  before(:each) do
    assign(:teacher, Teacher.create!(
      teacher_id: "Teacher",
      teacher_name: "Teacher Name",
      school_name: "School Name",
      school_year: "School Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Teacher/)
    expect(rendered).to match(/Teacher Name/)
    expect(rendered).to match(/School Name/)
    expect(rendered).to match(/School Year/)
  end
end

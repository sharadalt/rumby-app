require 'rails_helper'

RSpec.describe "teachers/edit", type: :view do
  let(:teacher) {
    Teacher.create!(
      teacher_id: "MyString",
      teacher_name: "MyString",
      school_name: "MyString",
      school_year: "MyString"
    )
  }

  before(:each) do
    assign(:teacher, teacher)
  end

  it "renders the edit teacher form" do
    render

    assert_select "form[action=?][method=?]", teacher_path(teacher), "post" do

      assert_select "input[name=?]", "teacher[teacher_id]"

      assert_select "input[name=?]", "teacher[teacher_name]"

      assert_select "input[name=?]", "teacher[school_name]"

      assert_select "input[name=?]", "teacher[school_year]"
    end
  end
end

require 'rails_helper'

RSpec.describe "teachers/new", type: :view do
  before(:each) do
    assign(:teacher, Teacher.new(
      teacher_id: "MyString",
      teacher_name: "MyString",
      school_name: "MyString",
      school_year: "MyString"
    ))
  end

  it "renders new teacher form" do
    render

    assert_select "form[action=?][method=?]", teachers_path, "post" do

      assert_select "input[name=?]", "teacher[teacher_id]"

      assert_select "input[name=?]", "teacher[teacher_name]"

      assert_select "input[name=?]", "teacher[school_name]"

      assert_select "input[name=?]", "teacher[school_year]"
    end
  end
end

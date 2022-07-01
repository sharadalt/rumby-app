require 'rails_helper'

RSpec.describe "schools/edit", type: :view do
  let(:school) {
    School.create!(
      school_name: "MyString"
    )
  }

  before(:each) do
    assign(:school, school)
  end

  it "renders the edit school form" do
    render

    assert_select "form[action=?][method=?]", school_path(school), "post" do

      assert_select "input[name=?]", "school[school_name]"
    end
  end
end

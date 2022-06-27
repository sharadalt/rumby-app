require 'rails_helper'

RSpec.describe "Teachers", type: :request do
  
  describe "GET /index" do
    it "returns http success" do
      get "/teachers"
      expect(response).to have_http_status(:success)
    end

      it "create multiple teachers" do
       teacher1 = Teacher.create!(teacher_id: 1, teacher_name: "teacher1", school_name: "school1", school_year: "2000")
       teacher2 = Teacher.create!(teacher_id: 2, teacher_name: "teacher2", school_name: "school2", school_year: "2001")
       expect(Teacher.all).to eq([teacher1,teacher2])
       get "/teachers"
       expect(assigns(:teachers)).to eq([teacher1,teacher2])
      end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/teachers/new"
      expect(response).to have_http_status(:success)
    end
  

    it "renders the new template" do
      get "/teachers/new"
      expect(response).to render_template(:new)
    end

    it "instantiates @teacher" do
        get "/teachers/new"
        get new_teacher_url
        expect(assigns(:teacher)).not_to be_nil
    end
  end

  describe "Teacher create" do
    it "increases the number of Teachers by 1" do
      get "/teachers/new"
      post "/teachers", :params => {:teacher => {teacher_id: 1, teacher_name: "teacher1", school_name: "school1", school_year: "2000"}}
      expect(Teacher.count).to eq 1
    end

    it "assigns the new teacher to @teacher" do
      get "/teachers/new"
      post "/teachers", :params => {:teacher => {teacher_id: 1, teacher_name: "teacher1", school_name: "school1", school_year: "2000"}}
      expect(assigns(:teacher)).to eq Teacher.last
    end

    it "redirects to the new teacher" do
      get "/teachers/new"
      post "/teachers", :params => {:teacher => {teacher_id: 1, teacher_name: "teacher1", school_name: "school1", school_year: "2000"}}
      expect(response).to redirect_to Teacher.last
    end
  end


  # describe "GET /show" do
  #   it "returns http success" do
  #     get "/teachers/show"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  

  # describe "GET /edit" do
  #   it "returns http success" do
  #     get "/teachers/edit"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end

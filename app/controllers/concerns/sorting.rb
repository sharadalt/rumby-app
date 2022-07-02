module Sorting
  extend ActiveSupport::Concern
    def sort_column
      Teacher.column_names.include?(params[:sort]) ? params[:sort] : "teacher_id"
      #class_name.column_names.include?(params[:sort]) ? params[:sort] : attribute_name
    end
  
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

    def sortable(column,title = nil)
      title ||= column.titleize
      #css_class = column == sort_column ? "current #{sort_direction}" : nil
      direction = column == sort_column() && sort_direction == "asc" ? "desc" : "asc"
      link_to title, :sort => column, :direction => direction
    end
end
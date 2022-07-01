module ApplicationHelper
	def sortable(column,title = nil)
	  title ||= column.titleize
    #css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column() && sort_direction == "asc" ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction
  end

  def link_to_add_fields(name, f, association)
  	# create a new object from the association
  	new_object = f.object.send(association).klass.new
  	#create the fields form
  	id = new_object.object_id
    #create the fields form
  	fields = f.fields_for(association, new_object, child_index: id) do |builder|
  		render(association.to_s.singularize + "_fields", f:builder)
  	end
  	# pass down the link to the fields form
  	link_to(name, '#', class: 'add_fields', data:{id:id, fields: fields.gsub("\n","")})
  end
end

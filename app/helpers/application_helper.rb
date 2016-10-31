module ApplicationHelper
  def sortable(column, title = nil)
    #if title == nil, using column with the capitalization
    title ||= column.titleize
    #give toggle class name
    glyph = sort_direction == 'asc' ? 'glyphicon-arrow-down':'glyphicon-arrow-up'
    css_class = column == sort_column ? glyph : nil
    # tenary operator, if column == the value from sort_column method and dir == "asc",
    # then dir = "desc". Basically Toggling
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    #return link_to
    link_to({section: @section, :sort => column, :direction => direction}, {class: "btn btn-default current"}) do
      (title + ' ' + content_tag(:span, content_tag(:i, '', class: "glyphicon #{css_class}"))).html_safe
      # wrap everything and use method html_safe so the result won't be plain text
    end
  end

  def displa

  end
end

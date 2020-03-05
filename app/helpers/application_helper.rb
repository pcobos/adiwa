module ApplicationHelper
  def navbar_transparent?
    current_page?(root_path)
  end
end

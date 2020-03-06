module ApplicationHelper
  def navbar_transparent?
    current_page?(root_path) ||
    current_page?(user_session) ||
    current_page?(new_user_registration_path) ||
    current_page?(new_user_session_url)
  end
end

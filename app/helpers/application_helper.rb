module ApplicationHelper
  def navbar_transparent?
    current_page?(root_path) ||
    current_page?(new_user_session_path) ||
    current_page?(new_user_registration_path) ||
    current_page?(new_ceremony_path) ||
    current_page?(new_ceremony_session_path) ||
    current_page?(new_user_session_url)
  end
end

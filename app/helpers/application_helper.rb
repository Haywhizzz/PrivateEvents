module ApplicationHelper
  def show_sign_in_or_out
    out = ''
    if session[:user_id]
      out << link_to('Sign Out', session_path(session[:user_id]), method: :delete, class: 'btn btn-danger')

    else
      out << link_to('login', new_session_path, class: "btn btn-success mr-3")
      out << link_to('Sign up', new_user_path, class: "btn btn-primary pt-2")
    end

    out.html_safe
  end
end

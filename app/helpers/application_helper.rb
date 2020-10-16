module ApplicationHelper
  def show_sign_in_or_out
    out = ''
    if session[:user_id]
      out << link_to('Sign Out', session_path(session[:user_id]), method: :delete)

    else
      out << link_to('login', new_session_path, class: 'btn btn-outline-success mr-3')
      out << link_to('Sign up', new_user_path, class: 'btn btn-outline-primary')
    end

    out.html_safe
  end
end


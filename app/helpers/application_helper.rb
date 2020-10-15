module ApplicationHelper
  def show_sign_in_or_out
    out = ''
    if logged_in?
      out << link_to('My Profile', user_path(session[:user_id]), class: 'btn btn-outline-success mr-3')
    #   out << link_to('Sign out', sign_out_path, class: 'nav-link', method: :delete)
    else
      out << link_to('login', sign_in_path, class: 'btn btn-outline-success mr-3')
      out << link_to('Sign up', new_user_path, class: 'btn btn-outline-primary')
    end

    out.html_safe
  end
end


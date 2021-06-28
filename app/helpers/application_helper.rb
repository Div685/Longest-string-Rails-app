module ApplicationHelper
  def nav_signup
    if current_user
      link_to(current_user.uname, "/users/#{current_user.uname}", class: 'login navbar-brand') +
        link_to('Sign Out', sign_out_path, class: 'login navbar-brand')
    else 
      link_to('Login', '/login', class: 'login navbar-brand') + '|'.html_safe +
        link_to('Register', sign_up_path, class: 'login navbar-brand p-2')
    end
  end
end

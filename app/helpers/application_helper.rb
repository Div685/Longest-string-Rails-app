module ApplicationHelper
  def nav_signup
    if current_user
      link_to(current_user.uname, root_path, class: 'login') +
        link_to('Sign Out', sign_out_path, class: 'login')
    else
      link_to('Login', '/login', class: 'login') + '|'.html_safe +
        link_to('Register', sign_up_path, class: 'login')
    end
  end
end

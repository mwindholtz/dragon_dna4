class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception  
  if Rails.env == 'production'
        http_basic_authenticate_with name: "case", password: "western"
  end # production

  
  def load_targets
    @m_targets = Monster.all.to_a
    @c_targets = Character.all.to_a
  end

  def load_present_groups
    @present_groups = Group.present
  end

end

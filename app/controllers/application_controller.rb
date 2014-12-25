class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception  
  
  def load_targets
    @m_targets = Monster.find(:all)
    @c_targets = Character.find(:all)
  end

  def load_present_groups
    @present_groups = Group.present
  end

end

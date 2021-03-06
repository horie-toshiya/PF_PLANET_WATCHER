class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def after_sign_up_path_for(resource)
    main_contents_path
  end

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_main_contents_path          #pathは設定したい遷移先へのpathを指定してください
    when Customer
      main_contents_path              #ここもpathはご自由に変更してください
    end
  end

end

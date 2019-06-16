class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def set_categories
    @categories = Category.all.includes([middle_categories: :lower_categories])
    @middle_categories = MiddleCategory.all.where(category_id: params[:category_id])
  end
end

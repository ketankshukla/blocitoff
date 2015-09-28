class RegistrationsController < Devise::RegistrationsController

  #we create this registrations controller to override devise gem's parameters
  #we added a new field :name

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end

end
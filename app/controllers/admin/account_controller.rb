class Admin::AccountController < AdminController
  def edit
  end

  def update
    @admin_user = current_admin_user

    if @admin_user.update(admin_user_params)
      bypass_sign_in(@admin_user)
      redirect_to admin_account_edit_path, notice: 'Successfully saved.'
    else
      redirect_to admin_account_edit_path, alert: 'Could not save.'
    end
  end

  private

  def admin_user_params
    params.require(:admin_user).permit(:password, :password_confirmation)
  end
end

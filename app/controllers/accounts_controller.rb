class AccountsController < ApplicationController

  def show
    @account = current_user.account
  end

  def new
    @account = current_user.build_account
  end

  def create
    account = current_user.create_account(account_params)
    redirect_to meals_path
  end

  private

  def account_params
    params.require(:account).permit(:name, :age, :sex, :weight, :growth, :hips, :waist)
  end
end

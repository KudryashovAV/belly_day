class AccountsController < ApplicationController
  before_action :authenticate_user!

  def show
    @account = current_user.account
  end

  def new
    @account = current_user.build_account
  end

  def create
    account = current_user.create_account(account_params)
    redirect_to account_path(account)
  end

  private

  def account_params
    params.require(:account).permit(:name, :age, :sex, :weight, :growth, :hips, :waist)
  end
end

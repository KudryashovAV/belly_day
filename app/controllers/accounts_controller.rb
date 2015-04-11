class AccountsController < ApplicationController
	def new
    @account = Account.new
  end

  def create
    account = Account.create account_params
    redirect_to 
  end

  private

  def account_params
    params.require(:account).permit(:name, :age, :sex, :weight, :growth, :hips, :waist)
  end
end

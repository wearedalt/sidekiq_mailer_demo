class EmailingsController < ApplicationController

  def create
    user_name = params[:user_name]
    email     = params[:email]

    AwesomeMailer.invite(user_name, email).deliver

    redirect_to new_emailing_path, notice: 'Emailing was successfully created.'
  end

end

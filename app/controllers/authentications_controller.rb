class AuthenticationsController < ApplicationController
  def index
    @authentications = current_user.authentications if current_user
  end

  def create
    # render :text => request.env["omniauth.auth"].to_yaml
    omniauth = request.env["omniauth.auth"]
    authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    if authentication
      flash[:notice] = "Signed in successfully."
      sign_in(authentication.user)
      redirect_to questions_url
    elsif current_user
      current_user.authentications.create!(:provider => omniauth['provider'], :uid => omniauth['uid'])
      flash[:notice] = "Authentication successful."
      redirect_to authentications_url
    else
      user = User.new
      

      if user.save
        flash[:notice] = "Signed in successfully."
        sign_in(authentication.user)
        redirect_to authentications_url

        # sign_in_and_redirect(:user, user)
      else
        # notice: "Account not currently linked to an account, please either sign in and link social media account, or sign up"
        session[:omniauth] = omniauth.except('extra')
        redirect_to questions_url
        flash[:notice] = "Social Media account not currently linked to a PDP account, please either sign in and link 
        social Media account, or sign up"
      end
    end
  end

  def destroy
    @authentication = current_user.authentications.find(params[:id])
    @authentication.destroy
    flash[:notice] = "Successfully destroyed authentication."
    redirect_to authentications_url
  end
end
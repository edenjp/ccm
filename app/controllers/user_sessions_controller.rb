class UserSessionsController < ApplicationController
  def new
    @session = UserSession.new
  end

  def create
    @session = UserSession.new(session, params[:user_session])
    if @session.authenticate
      # Não esqueça de adicionar a chave no i18n!
      redirect_to root_path, :notice => t('flash.notice.signed_in')
    else
      render :new
    end
  end

  def destroy
    # Ainda não :-)
  end
end
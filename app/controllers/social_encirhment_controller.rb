class SocialEncirhmentController < ApplicationController
  def index
    p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"

    browser = SessionManager.restore_browser_session
    browser.close
    # p User.current_browser_session
    # p User.browser_session
    # p session[:browser_session]
    # @http_client =  User.browser_session
    #
    #
    # p "Check browswer exists orn ot"
    #
    # p @http_client.inspect
    # p @http_client.exists?
    #
    # # @http_client.goto 'facebook.com'
    # #
    # p @http_client

    # SessionManager.autoload_browser_session(current_user)
  end
end

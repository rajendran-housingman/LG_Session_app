class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  protected

  def after_sign_in_path_for(resource)
    p "Successful Login After............"
    p resource
    @http_client = SessionManager.initiate_session(resource)
    # User.current_browser_session =@http_client
    p "PPPPPPPPPPPPPPPPPPPPPPPPPPPPPP"
    p "PPPPPPPPPPPPPPPPPPPPPPPPPPPPPP"
    p @http_client
    root_path
  end



end

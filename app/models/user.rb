class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.browser_session=(session)
    Thread.current[:browser_session] = session
  end

  def self.browser_session
    Thread.current[:browser_session]
  end


  def self.current_browser_session=(solution)
    Thread.current[:current_browser_session] = solution
  end

  def self.current_browser_session
    Thread.current[:current_browser_session]
  end

end

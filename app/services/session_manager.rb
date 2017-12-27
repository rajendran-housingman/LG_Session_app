require 'watir'
# require 'watir-webdriver'
require 'uri'

class SessionManager
  def self.initiate_session(current_user)
    p "Trying to intiate the browser session"
    p "11111111111111111"
    p "11111111111111111"
    # headless = Headless.new
    # headless.start
    # TODO -- commented by latest changes.................
    switches = ['--ssl-protocol=tlsv1',"--disable-notifications"]
    # @http_client = Watir::Browser.new :phantomjs
    @http_client = Watir::Browser.new :chrome, :args => switches
    @http_client.instance_variable_set :@speed, :fast

    # @http_client =  User.browser_session
    @http_client.goto 'www.facebook.com'

    @http_client.text_field(:name, 'email').set("jameswagon91@gmail.com")
    @http_client.text_field(:name, 'pass').set("jakay07@")
    @http_client.label(:id, "loginbutton").click

    User.browser_session = @http_client
    User.current_browser_session= @http_client
    p "Findign the page url........"

    p @http_client.title

    p User.browser_session
    p User.current_browser_session

    File.open('user_session_cookies_data.txt', "wb") { |file|
      @http_client.driver.manage.all_cookies.each do |cookie|
        file.write(cookie.to_json)
        file.write("@_@")
      end
    }

    return @http_client
  end

  def self.destroy_browser_session()
    p "Trying to destroy session.................."
    p "^666666666666666666666666666666666666"
    p "^666666666666666666666666666666666666"
    p "^666666666666666666666666666666666666"
    p "^666666666666666666666666666666666666"
    # data = User.browser_session
    # p data
    # # @http_client = User.browser_session
    # # p "$$$$$$$$$$$$$$$$$$$$$$$4444444444"
    # # p "$$$$$$$$$$$$$$$$$$$$$$$4444444444"
    # # p @http_client
    # # User.browser_session = nil
    # # @http_client.close
    #
    # @http_client =  User.browser_session
    # @http_client.close

    # switches = ['--ssl-protocol=tlsv1',"--disable-notifications"]
    # @http_client = Watir::Browser.new :chrome, :args => switches
    # @http_client.goto 'google.com'
    # @http_client.close
  end

  def self.autoload_browser_session(current_user)
    p "Refreshing the browser session "

    p User.current_browser_session
    if User.current_browser_session
      p "Already session exists......"
    else
      p "Not Able to find the session"
      autoload_browser_session(current_user)
    end
    User.current_browser_session
  end

  def initialize
    # @name = 'me'
    # @pass = 'pass'
  end

  def start
    # headless = Headless.new
    # headless.start
    # switches = ['--ssl-protocol=tlsv1',"--disable-notifications","--proxy=#{@options[:proxy_ip]}:#{@options[:proxy_port]}", "--proxy-auth=#{@options[:username]}:#{@options[:password]}"]
    # TODO -- commented by latest changes.................
    switches = ['--ssl-protocol=tlsv1',"--disable-notifications"]
    # @http_client = Watir::Browser.new :phantomjs
    @http_client = Watir::Browser.new :chrome, :args => switches
    @http_client.instance_variable_set :@speed, :fast
  end

  def login
    @http_client.goto 'www.facebook.com'

    @http_client.text_field(:name, 'email').set("velbca01@gmail.com")
    @http_client.text_field(:name, 'pass').set("velmurugan93")
    @http_client.label(:id, "loginbutton").click

    User.browser_session = @http_client
    User.current_browser_session= @http_client
  end

  def save_user_session
    File.open('user_session_cookies_data.txt', "wb") { |file|
      @http_client.driver.manage.all_cookies.each do |cookie|
        file.write(cookie.to_json)
        file.write("@_@")
      end
    }
  end

  def self.restore_browser_session
    msp = Watir::Browser.new :chrome
    msp.goto 'www.facebook.com'
    f = File.open('user_session_cookies_data.txt')
    s = f.gets
    d = s.split("@_@")
    d.each do |dd|
      temp_o = JSON.parse(dd)
      msp.cookies.add "#{temp_o["name"]}", temp_o["value"], path: "/", secure: true
    end
    msp.refresh
    msp
  end



end
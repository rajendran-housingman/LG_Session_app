class DashboardController < ApplicationController
  def index
    p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    p "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"


    # @http_client =  User.browser_session

   # p User.respond_to?(:current_browser_session)
   #  if User.respond_to?(:current_browser_session)
   #    p "GGGGGGGGGGGGGGGGGGGGGGGGG"
   #    p "GGGGGGGGGGGGGGGGGGGGGGGGG"
   #    p "GGGGGGGGGGGGGGGGGGGGGGGGG"
   #    # p User.current_browser_session
   #    p "Session is exist..............."
   #    switches = ['--ssl-protocol=tlsv1',"--disable-notifications"]
   #    browser = Watir::Browser.new :chrome, :args => switches
   #    browser.goto 'google.com'
   #    f = File.open('cookies_temp123.txt')
   #    s = f.gets
   #    d = s.split("@_@")
   #
   #    p "Cookiessssssssssssssss"
   #    p browser.cookies.to_a
   #
   #    d.each do |dd|
   #      temp_o = JSON.parse(dd)
   #      # browser.driver.manage.add_cookie(:name => temp_o["name"], :value =>temp_o["value"])
   #      browser.cookies.add 'name', 'BAh7B0kiD3Nlc3Npb25faWQGOgZFRkk', path: "/", secure: true
   #      # browser.cookies.add 'my_session', 'BAh7B0kiD3Nlc3Npb25faWQGOgZFRkk', secure: true
   #    end
   #    # p User.current_browser_session
   #  else
   #    browser.goto 'facebook.com'
   #    # p "Session is not exist..............."
   #    # browser = Watir::Browser.new :chrome
   #    # f = File.open('cookies_temp123.txt')
   #    # s = f.gets
   #    # d = s.split("@_@")
   #    # d.each do |dd|
   #    #   temp_o = JSON.parse(dd)
   #    #   browser.driver.manage.add_cookie(:name => temp_o["name"], :value =>temp_o["value"])
   #    # end
   #  end




    # p User.browser_session

    # p session[:browser_session]


    # p "Check browswer exists orn ot"

    # p @http_client.inspect
    # p @http_client.exists?
    #
    # # @http_client.goto 'facebook.com'
    # #
    # p @http_client
    # p User.browser_session

  end
end

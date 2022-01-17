class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    # your code here
    erb :home
  end

  get '/registrations/signup' do
    # your code here
    erb :signup
  end

  post '/registrations' do
    # your code here

    redirect '/users/home'
  end

  get '/users/home' do
    # your code here
  end

  get '/sessions/login' do
    # the line of code below render the view page in app/views/sessions/login.erb
    erb :'sessions/login'
  end

  post '/sessions' do
    # your code here

    redirect '/users/home'
  end

  get '/sessions/logout' do
    # your code here
    
    redirect '/'
  end

end

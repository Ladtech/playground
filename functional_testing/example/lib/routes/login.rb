class Login < Sinatra::Base

  get '/' do
    haml :login
  end

  post '/' do
    redirect '/bill', true if params[:username] == 'Rob' && params[:password] == 'password'
    redirect '/login', true
  end
end


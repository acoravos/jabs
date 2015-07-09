get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/users' do
  @users = User.all
  erb :users
end

get '/user/:id' do

  erb :profile
end

#--------------------login/logout--------------------
post '/login' do
  @user = User.find_by(username: params[:username])

  if @user.password == params[:password]
    session[:current_user_id] = @user.id
    session[:current_username] = @user.username
    redirect '/'
    #else wrong password will redirect to a separate page
  end
end

get '/logout' do
    session[:current_user_id] = nil
    session[:current_username] = nil
    redirect '/'
end


#--------------------signup--------------------------
get '/signup' do
  erb :signup
end

post '/signup' do
  @user = User.new(username: params[:username])
  @user.password = params[:password]
  @user.save!
  session[:current_user_id] = @user.id
  session[:current_username] = @user.username
  redirect '/'
  #if @user.save : redirect '/404'
end


get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/users' do
  @users = User.all
  erb :users
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

#--------------------search--------------------------

post '/search' do
  @search = User.find_by(username: params[:desired_user])
  session[:desired_profile] = @search.username
    if @search == nil
      redirect '/user_not_found'
    else
      redirect "/user/#{@search.id}"
    end
end

get '/user_not_found' do
  erb :user_not_found
end

#--------------------profile------------------------
get '/user/:id' do
  @desired_user = User.find(params[:id])
  session[:desired_profile] = @desired_user.username
  erb :profile
end






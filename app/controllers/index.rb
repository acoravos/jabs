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
  session[:desired_id] = @desired_user.id
  erb :profile
end

#--------------------new tweet------------------------

get 'user/newtweet' do

  erb :newtweet
end

#--------------------follow------------------------

#OPTION TWO
post "/follow" do
  Following.create(leader_id: params[:leader], follower_id: params[:follower])
  redirect "/user/#{params[:leader]}"
end

#OPTION ONE
# get "/follow/:leader/:follower" do
#   @relationship = Following.create(leader_id: params[:leader], follower_id: params[:follower])
#   p @relationship
#   redirect "/user/#{params[:leader]}"
# end


helpers do
  def hello_world
    p "hello world"
  end

  def is_following?
    following = false
    if Following.find_by(leader_id: session[:desired_id], follower_id: session[:current_user_id])
        following = true
    end
    p following
  end

end

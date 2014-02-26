get '/edit' do
  post_id = params[:post_id]
  if post_id != nil && post_id != ""
    #@edit_post =
  end
end

get '/view' do
  post_id = params[:post_id]
  if post_id != nil && post_id != ""
    @post_data = Post.where('post_id = ?',post_id).first
    erb :view_post
  end
end

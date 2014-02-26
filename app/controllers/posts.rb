get '/edit' do
  post_id = params[:post_id]
  if post_id != nil && post_id != ""
    #@edit_post =
  end
end

get '/view' do
  post_id = params[:post_id]
  if post_id != nil && post_id != ""
    @post_data = Post.where('id = ?',post_id).first
    @comments = Comment.where('post_id = ?',post_id)

    erb :view_post
  end
end

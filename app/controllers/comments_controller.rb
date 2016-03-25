class CommentsController < ApplicationController
  def create

    @post = Post.find(params[:post_id])
    
    @comment= @post.comments.build(comment_params)
    
    if @comment.save
      redirect_to @post, notice: 'El comentario fue creado correctamente'
    else
      redirect_to @post, notice: 'Error creando el comentario '+
                                                    @comment.errors.full_messages.to_sentence
    end

       
  end 
  private
  def comment_params
      params.require(:comment).permit(:author,:body,:email)
  end   

end

class CommentsController < ApplicationController


#we are creating a new comment and saving it for a particular post/article.....


def create
#first fetch the id for the article we are going to create the comment

=begin
	We use the create method on @article.comments 
	to create and save the comment. This will automatically link the comment
	 so that it belongs to that particular article.

Once we have made the new comment, we send 
the user back to the original article using the 
article_path(@article) helper. As we have already seen,
 this calls the show action of the ArticlesController which in 
 turn renders the show.html.erb template. This is where we want the 
 comment to show, so let's add that to the app/views/articles/show.html.erb.
rescue Exception => e
	
=end








    @article = Article.find(params[:article_id])

    #then fetch the comment for that article..........to create......
    @comment = @article.comments.create(comment_params)
    
    redirect_to article_path(@article)
  end
 

def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end





 #this is for strong parameters....it is a hash.....
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end







end

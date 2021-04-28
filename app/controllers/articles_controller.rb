class ArticlesController < ApplicationController
	def index
		@articles = Article.page(params[:page])
	end

	def show
		@article = Article.find(params[:id])
	end
	 
	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params.require(:article).permit(:title, :subtitle, :content, :user_id))
		if @article.save
			redirect_to articles_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
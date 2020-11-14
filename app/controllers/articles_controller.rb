class ArticlesController < ApplicationController

def new 
	@article = Article.new
	@article.title = "DEMOO"

end

def new
	@article = Article.new
	@article.status = "solo_numeros"
end 

 def index
@articles = Article.all
end


 def create
  @article = Article.create(title: params[:article][:title])
 
  render json: @article
end
  
def edit
@article = Article.find(params[:id])
end


def show
  @article = Article.find(params[:id])
  
end


def update
@article = Article.find(params[:id])
@article.update(
title: params[:article][:title],
status: params[:article][:status]
)
redirect_to root_path
end

def destroy
@article = Article.find(params[:id])
@article.destroy
#redirect_to root_path
end
end 

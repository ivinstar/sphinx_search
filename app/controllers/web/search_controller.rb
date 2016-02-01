class Web::SearchController < Web::ApplicationController

  def index
  	@q = params.try(:[],:search).try(:[],:text)
  	if @q.nil?
  	  @collection = {}	
  	else
  	  @collection = Article.search  @q	
  	end	
  	
  end	

  
  def show
  	@word = params[:word]
  	@collection = Article.find(params[:id])
  end	


end	
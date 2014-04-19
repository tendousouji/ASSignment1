class CategoriesController < ApplicationController
	def create
	    @book = Book.find(params[:book_id])
	    @category = @book.categories.create(category_params)
	    redirect_to book_path(@book)
  	end
 
 	def destroy
	    @book = Book.find(params[:book_id])
	    @category = @book.categories.find(params[:id])
	    @category.destroy
	    redirect_to book_path(@book)
  	end


  	private
	    def category_params
	      params.require(:category).permit(:name)
	    end
end

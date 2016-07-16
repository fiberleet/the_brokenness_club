class SubcategoriesController < ApplicationController
	before_action :require_login_and_admin

	def update
		subcategory = Subcategory.find(params[:id])
		subcategory.update!(subcategory_params)
		redirect_to categories_path
	end

	def destroy
		subcategory.delete(params[:id])
		redirect_to categories_path
	end

	def new
		@category = Category.find(params[:category_id])
		@subcategory = @category.subcategories.new
	end

	def create
		@category = Category.find(params[:category_id])
		@subcategory = @category.subcategories.new(subcategory_params)

		if @subcategory.save
			redirect_to categories_path
		else
			render 'new'
		end
	end

	def edit
		@category = Category.find(params[:category_id])
		@subcategory = @category.subcategories.find(params[:id])
	end

	private

		def require_login_and_admin
			unless user_signed_in? and current_user.has_role? :admin
				redirect_to new_user_session_path, :notice => "You do not have permission to view this page."
			end
		end

		def subcategory_params
			params.require(:subcategory).permit(:name)
		end
end
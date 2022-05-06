class CategoriesController < ApplicationController

    before_action :find_category, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

    def new
        @category = Category.create(category_params)
    end

    def create
        @category = Category.create(category_params)
        if @category.save 
            redirect_to @category
        else  
            render 'new'
        end
    end

    def show
        
    end

    def edit
    end

    def update

        if @category.update(category_params)
            redirect_to @category
        else  
            render 'edit'
        end
    end

    def destroy
        @category.destroy 
        redirect_to root_path
    end

    private 

    def category_params
        params.require(:category).permit(:name, :description)
    end

    def find_category
        @category = Category.find(params[:id])
    end
end

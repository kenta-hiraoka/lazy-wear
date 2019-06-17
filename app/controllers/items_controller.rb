class ItemsController < ApplicationController

  def index
  end

  def new
      @item_form = ItemForm.new
  end

  def create
    @item_form = ItemForm.new(item_params)
    if @item_form.save
        redirect_to root_path
      else
        @errors = @item_form.errors
        render :new
    end
  end

  def show
  end

  def upload
  end

  def edit
  end

  def upload
  end



  def destroy
  end

  private

  def item_params
    params.require(:item_form).permit(
      :name,
      :text,
      :category_id,
      :middle_category_id,
      :feeling,
       {:remove_images => []},
       { :images => [] }
      )
  end
end

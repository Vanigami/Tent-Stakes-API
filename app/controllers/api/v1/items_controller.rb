class Api::V1::itemsController < ApplicationController
    before_action :find_item, only: [:show, :update, :destroy]

    # GET /items
    def index
        @items = item.all 
        render json: @items
    end

    # GET /item/:id
    def show 
     
        render json: @item
item
    #POST /items
    def create 
     @item = item.new(item_params)
        if @item.save
            render json: @item
        else
            render error: { error: 'Unable to create item :('}, status: 400
        end
    end
    #PATCH /items/:id
    def update
        if @item 
            @item.update(item_params)
            render json: { message: 'item successfully updated!'}, status: 200
        else 
            render json: {error: 'Unable to update item :('}, status: 400
        end
    end
    #DELETE /items/:id
    def destroy
        if @item 
            @item.destroy 
            render json: {message: 'item successfully deleted!'}, status: 200
        else
            render json: {error: 'Unable to delete item.'}, status: 400
        end
    end

    private 

    #strong params 
    def item_params
        params.require(:item).permit(:item_name, :item_category, :item_weight, :checklist_id)
    end

    def find_item
        @item = item.find(params[:id])
    end






end

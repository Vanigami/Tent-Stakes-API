class Api::V1::ChecklistsController < ApplicationController
    before_action :find_checklist, only: [:show, :update, :destroy]

    # GET /checklists
    def index
        @checklists = Checklist.all 
        render json: @checklists
    end

    # GET /checklist/:id
    def show 
        render json: @checklist
    end
    #POST /checklists
    def create 
     @checklist = Checklist.new(checklist_params)
        if @checklist.save
            render json: @checklist
        else
            render error: { error: 'Unable to create Checklist :('}, status: 400
        end
    end
    #PATCH /checklists/:id
    def update
        if @user 
            @user.update(checklist_params)
            render json: { message: 'Checklist successfully updated!'}, status: 200
        else 
            render json: {error: 'Unable to update Checklist :('}, status: 400
        end
    end
    #DELETE /checklists/:id
    def destroy
        if @checklist
            @checklist.destroy 
            render json: {message: 'Checklist successfully deleted!'}, status: 200
        else
            render json: {error: 'Unable to delete Checklist.'}, status: 400
        end
    end

    private 

    #strong params 
    def checklist_params
        params.require(:checklist).permit(:name)
    end

    def find_checklist
        @checklist = Checklist.find(params[:id])
    end

end

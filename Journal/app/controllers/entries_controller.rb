class EntriesController < ApplicationController
    def index
        if params[:search]
            @entries = Entry.where("name ILIKE ?", "%#{params[:search]}%")
        else
            @entries = Entry.all
        end
    end
 
    def new
        @entry = Entry.new()
    end
 
    def create
        @entry = Entry.new(entry_params)
        if @entry.save
            redirect_to root_url
        else
            render :new
        end
    end

    def destroy
        Entry.find(params[:id]).destroy
        redirect_to root_url
    end

    def edit
        @entry = Entry.find(params[:id])
    end

    def update
        @entry = Entry.find(params[:id])
      
        if @entry.update(entry_params)
          redirect_to entries_path
        else
          render 'edit'
        end
    end

    private
 
    def entry_params
        params.require(:entry).permit(:name, :link)
    end
 
end

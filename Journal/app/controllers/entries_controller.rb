class EntriesController < ApplicationController
    def index
        if params[:search]
            search
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

    def search
        if @entry = Entry.all.find{|entry| entry.name.include? (params[:search])}
          redirect_to entry_path(@entry)
        end
    end

    def show
        @entry = Entry.find(params[:id])
    end
 
    private
 
    def entry_params
        params.require(:entry).permit(:name, :link)
    end
 
end

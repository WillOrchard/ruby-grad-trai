class EntriesController < ApplicationController
    def index
        @entries = Entry.all
    end
 
    def new
        @entry = Entry.new()
    end
 
    def create
        @entry = Entry.new(entry_params)
        if @entry.valid?
            @entry.save
            redirect_to root_url
        else
            render :new
        end
    end

    def destroy
        Entry.find(params[:id]).destroy
        redirect_back(fallback_location: root_path)
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

    def coding_resources
        @entries = Entry.where(category: "Coding Resource")
        render 'CodingResources'
      end

    def solirius_resources
        @entries = Entry.where(category: "Solirius Resource")
        render 'SoliriusResources'
    end

    def useful_websites
        @entries = Entry.where(category: "Useful Website")
        render 'UsefulWebsites'
    end

    def show_category
        @entries = Entry.where(category: params[:category])
    end

    private
 
    def entry_params
        params.require(:entry).permit(:name, :link, :category, :search)
    end
 
end

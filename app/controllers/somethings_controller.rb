class SomethingsController < ApplicationController
    def index
        @somethings = Something.all
    end

    def show
        @something = Something.find(params[:id])
    end

    def new
        @something = Something.new
    end

    def create
        something = Something.create(something_params)
        redirect_to something_path(something)
    end

    private

    def something_params
        params.require(:something).permit(:name, :age)
    end
end

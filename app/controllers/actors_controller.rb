class ActorsController < ApplicationController

    def index
      @actors= Actor.all
    end

    def new
      @actors = Actor.new
      end

      def create
          @actors = Actor.new(actor_params)

          
          if @actors.save
            redirect_to  actors_path , notice: "el actor ha sido creado exitosamente"
          else
            render :new
          end

      end



    private
    def actor_params
    params.require(:actor).permit(:name, :bio, :birth_place, :birth_date, :image_url, :alive, :death_date, :death_place )
    end

end

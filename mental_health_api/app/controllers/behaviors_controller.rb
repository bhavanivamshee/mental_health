class BehaviorsController < ApplicationController
    def index
        @behaviors = Behavior.all

        render json: @behaviors.to_json
    end
end

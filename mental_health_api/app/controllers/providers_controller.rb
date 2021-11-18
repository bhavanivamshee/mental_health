class ProvidersController < ApplicationController
    def index
        @providers = Provider.all

        render json: @providers.to_json
    end
end

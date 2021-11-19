class MedicationsController < ApplicationController
    def index
        @medications = Medication.all

        render json: @medications.to_json
    end

    def create
        @medication = current_user.medications.build(medication_params)
        if @medication && @medication.save
        render json: @medication.to_json
        elserender json: { message: @medication.errors }, status: 400
        end
    end

end

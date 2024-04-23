class Evaluations::StepTwoController < ApplicationController
  include EvaluationScoped

  skip_before_action :authenticate

  def show
  end

  def update
    @applied_instrument.update! applied_instrument_params
    @applied_instrument.update! finished: true
    redirect_to evaluations_step_two_path(@applied_instrument.signed_id), notice: "Avaliação finalizada com sucesso."
  end

   private
    def applied_instrument_params
      params.require(:applied_instrument).permit(:answer_1, :answer_2, :answer_3, :answer_4)
    end
end
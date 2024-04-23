class Evaluations::StepOneController < ApplicationController
  include EvaluationScoped

  skip_before_action :authenticate

  def show
  end

  def update
    @applied_instrument.evaluated.update!(evaluated_params)
    redirect_to evaluations_step_two_path(@applied_instrument.signed_id)
  end

  private
    def evaluated_params
      params.require(:evaluated).permit(:name, :cpf, :email, :birthdate)
    end
end
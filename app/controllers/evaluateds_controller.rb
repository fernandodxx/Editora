class EvaluatedsController < ApplicationController
  before_action :set_evaluated, only: %i[ show edit update destroy ]

  def index
    @evaluateds = Current.user.evaluateds.all
  end

  def show
  end

  def new
    @evaluated = Evaluated.new
  end

  def edit
  end

  def create
    @evaluated = Current.user.evaluateds.create!(evaluated_params)

    if @evaluated.save
      redirect_to @evaluated, notice: "Avaliado criado com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @evaluated.update(evaluated_params)
      redirect_to @evaluated, notice: "Avaliado alterado com sucesso.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @evaluated.destroy!
    redirect_to evaluateds_url, notice: "Avaliado apagado com sucesso.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluated
      @evaluated = Current.user.evaluateds.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evaluated_params
      params.require(:evaluated).permit(:name, :cpf, :email, :birthdate)
    end
end

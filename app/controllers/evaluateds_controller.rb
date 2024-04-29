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
    redirect_to @evaluated, notice: "Avaliado criado com sucesso."
  end

  def update
    if @evaluated.update(evaluated_params)
      redirect_to @evaluated, notice: "Avaliado alterado com sucesso.", status: :see_other
    end
  end

  def destroy
    @evaluated.destroy!
    redirect_to @evaluated, notice: "Avaliado apagado com sucesso.", status: :see_other
  end

  private
    
    def set_evaluated
      @evaluated = Current.user.evaluateds.find(params[:id])
    end

    def evaluated_params
      params.require(:evaluated).permit(:name, :cpf, :email, :birthdate)
    end
end

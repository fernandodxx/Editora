class AppliedInstrumentsController < ApplicationController
  include EvaluatedScoped
 
  before_action :set_applied_instrument, only: :show
  before_action :ensure_can_see_results, only: :show

  def index
    @applied_instruments = @evaluated.applied_instruments
  end

  def show
  end

  def new
    @applied_instrument = AppliedInstrument.new
  end

  def create
     @applied_instrument = @evaluated.applied_instruments.create!(applied_instrument_params)
     send_applied_instrument_invitation

     redirect_to evaluated_applied_instruments_url(@evaluated), notice: "Instrumento aplicado com sucesso."
  end

  private

    def set_applied_instrument
      @applied_instrument = @evaluated.applied_instruments.find(params[:id])
    end

    def ensure_can_see_results
      head :not_found unless @applied_instrument.finished?
    end

    def applied_instrument_params
      params.require(:applied_instrument).permit(:instrument_id)
    end

    def send_applied_instrument_invitation
      AppliedInstrumentMailer.with(applied_instrument: @applied_instrument).invitation.deliver_later
    end
end
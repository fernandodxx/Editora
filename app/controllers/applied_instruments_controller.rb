class AppliedInstrumentsController < ApplicationController
  include EvaluatedScoped

  def index
    @applied_instruments = @evaluated.applied_instruments
  end

  def show
    @applied_instrument = @evaluated.applied_instruments.finished.find(params[:id])
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

    def applied_instrument_params
      params.require(:applied_instrument).permit(:instrument_id)
    end

    def send_applied_instrument_invitation
      AppliedInstrumentMailer.with(applied_instrument: @applied_instrument).invitation.deliver_later
    end
end
class AppliedInstrumentMailer < ApplicationMailer
  def invitation
    @applied_instrument = params[:applied_instrument]
    mail to: @applied_instrument.evaluated.email, subject: "Responda seu questionario"
  end
end

# Preview all emails at http://localhost:3000/rails/mailers/applied_instrument_mailer
class AppliedInstrumentMailerPreview < ActionMailer::Preview
  def invitation
    AppliedInstrumentMailer.with(applied_instrument: AppliedInstrument.last).invitation
  end
end

module EvaluationScoped
  extend ActiveSupport::Concern

  included do
    before_action :set_applied_instrument
  end

  private
    def set_applied_instrument
      @applied_instrument = AppliedInstrument.find_signed!(params[:id])
    rescue ActiveSupport::MessageVerifier::InvalidSignature
      head :not_found
    end
end
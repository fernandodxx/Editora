module EvaluatedScoped
  extend ActiveSupport::Concern

  included do
    before_action :set_evaluated
  end

  private
    def set_evaluated
      @evaluated = Current.user.evaluateds.find(params[:evaluated_id])
    end
end
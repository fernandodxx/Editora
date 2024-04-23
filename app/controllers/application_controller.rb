class ApplicationController < ActionController::Base
  before_action :authenticate

  private
    def authenticate
      if psychologist = authenticate_with_http_basic { |user_name, _| Psychologist.find_by(user_name: user_name) }
        Current.user = psychologist
      else
        request_http_basic_authentication
      end
    end
end

module Admin
  class BaseController < ::ApplicationController
    layout 'admin'

    before_filter :auth_admin!
    before_filter :auth_member!

    load_and_authorize_resource

    def current_ability
      @current_ability ||= Admin::Ability.new(current_user)
    end
  end
end


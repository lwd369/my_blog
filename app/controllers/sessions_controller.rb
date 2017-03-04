class SessionsController < Clearance::SessionsController
  layout "session"

  def create
    @user = authenticate(params)

    sign_in(@user) do |status|
      if status.success?
        # redirect_back_or url_after_create
        redirect_to admin_root_path
      else
        flash.now.notice = status.failure_message
        render template: "sessions/new", status: :unauthorized
      end
    end
  end

  def new
    render template: "sessions/new"
  end
end

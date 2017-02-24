class QiniuManagerController < ApplicationController
  def uptoken
    render json: {uptoken: get_qiniu_token}
  end
end

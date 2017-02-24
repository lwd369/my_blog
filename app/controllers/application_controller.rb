class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def get_qiniu_token
    put_policy = Qiniu::Auth::PutPolicy.new(
        'lwd369-bucket', # 存储空间
        nil,    # 指定上传的资源名，如果传入 nil，就表示不指定资源名，将使用默认的资源名
        3600    # token 过期时间，默认为 3600 秒，即 1 小时
    )
    # 生成上传 Token
    uptoken = Qiniu::Auth.generate_uptoken(put_policy)
  end
end

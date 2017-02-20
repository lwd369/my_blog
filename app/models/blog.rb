class Blog < ApplicationRecord
  validates :title, presence: {message: "标题不能为空"}

  def create_date
    created_at.to_date
  end

end

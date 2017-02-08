class Blog < ApplicationRecord
  validates :title, presence: {message: "标题不能为空"}
end

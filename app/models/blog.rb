class Blog < ApplicationRecord
  validates :title, presence: {message: "标题不能为空"}
  before_save :save_content_summary

  self.per_page = 10

  def create_date
    created_at.to_date
  end


  def save_content_summary
    self.content_summary = content.split("\n")[0]
  end
end

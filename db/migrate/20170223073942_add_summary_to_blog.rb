class AddSummaryToBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :content_summary, :string
  end
end

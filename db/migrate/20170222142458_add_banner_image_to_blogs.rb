class AddBannerImageToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :banner_image, :string
  end
end

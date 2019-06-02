class AddImageUrlToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :image_url, :string, default: "https://www.cgi.com/sites/default/files/Cloud-hybrid.jpg"
  end
end

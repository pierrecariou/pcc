class GiveDefaultValueForPhoto < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :photo, :string, default: "https://res.cloudinary.com/pensercestchouette/image/upload/v1559772286/b12q9dcyzpcgwfwejhcn.png"
  end
end

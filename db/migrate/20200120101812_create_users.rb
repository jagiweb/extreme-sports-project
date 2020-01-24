class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :image, default: "https://cdn.clipart.email/cc7bc85e29d34d8cd0e649715a528150_silhouette-portrait-man-at-getdrawingscom-free-for-personal-use-_1920-1080.png"
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end

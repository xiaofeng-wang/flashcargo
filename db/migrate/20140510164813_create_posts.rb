class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :message
      t.string :image
      t.string :audio
      t.string :video
      t.boolean :facebook
      t.boolean :twitter
      t.boolean :googleplus

      t.timestamps
    end
  end
end

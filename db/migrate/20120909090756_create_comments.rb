class CreateComments < ActiveRecord::Migration
  def up
  end

  def down
  end
  
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text  :message
      t.integer :link_id

      t.timestamps
    end
  end
end

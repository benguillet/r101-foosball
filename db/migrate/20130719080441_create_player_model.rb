class CreatePlayerModel < ActiveRecord::Migration
  def up
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
    end
  end

  def down
    drop_table :players
  end
end

class AddScorePlayer < ActiveRecord::Migration
  def up
    change_table :players do |t|
      t.integer :score
    end
  end

  def down
    change_table :players do |t|
      t.remove_column :score
    end
  end
end

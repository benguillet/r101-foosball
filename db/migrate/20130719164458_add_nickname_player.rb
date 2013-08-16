class AddNicknamePlayer < ActiveRecord::Migration
  def up
    change_table :players do |t|
      t.string :nickname, null: false
    end
  end

  def down
    change_table :players do |t|
      t.remove_column :nickname
    end
  end
end

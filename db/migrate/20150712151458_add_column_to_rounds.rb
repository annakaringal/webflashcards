class AddColumnToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :score, :integer, default: 0
  end
end

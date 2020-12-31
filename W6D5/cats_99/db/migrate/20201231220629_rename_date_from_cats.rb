class RenameDateFromCats < ActiveRecord::Migration[5.2]
  def change
    remove_column :cats, :date
    add_column :cats, :birth_date, :date
  end
end

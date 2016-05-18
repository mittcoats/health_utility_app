class AddSectionIDtoGambles < ActiveRecord::Migration
  def change
    add_column :gambles, :section_id, :integer
    add_index :gambles, :section_id
  end
end

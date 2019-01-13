class AddUserReferenceToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :organizer_id, :integer, foreign_key: true
    add_foreign_key :events, :users, column: :organizer_id
  end
end

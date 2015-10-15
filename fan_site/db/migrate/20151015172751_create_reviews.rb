class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.column :user_name, :string
      t.column :novel_id, :integer
      t.column :description, :string

      t.timestamps
    end
  end
end

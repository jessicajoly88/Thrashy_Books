class CreateNovels < ActiveRecord::Migration
  def change
    create_table :novels do |t|
      t.column :author, :string
      t.column :title, :string
      t.column :rating, :string
      t.column :description, :string

      t.timestamps
    end
  end
end

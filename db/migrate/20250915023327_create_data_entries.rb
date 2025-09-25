class CreateDataEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :data_entries do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end

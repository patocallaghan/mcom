class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :user, null: false
      t.string :content, null: false
      t.boolean :read, default: false
      t.timestamps
    end
  end
end

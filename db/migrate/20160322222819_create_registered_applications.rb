class CreateRegisteredApplications < ActiveRecord::Migration
  def change
    create_table :registered_applications do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :URL

      t.timestamps null: false
    end
  end
end

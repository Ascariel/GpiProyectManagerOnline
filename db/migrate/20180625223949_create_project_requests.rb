class CreateProjectRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :project_requests do |t|
      t.string :name
      t.integer :category
      t.integer :project_id
      t.integer :status
      t.integer :user_id
      t.string :description
      # t.date :creation_date
      t.timestamps
    end
  end
end

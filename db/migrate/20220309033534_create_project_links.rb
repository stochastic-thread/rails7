class CreateProjectLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :project_links do |t|
      t.integer :project_id
      t.string :url

      t.timestamps
    end
  end
end

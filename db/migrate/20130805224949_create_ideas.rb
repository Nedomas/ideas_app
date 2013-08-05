class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.boolean :done

      t.timestamps
    end
  end
end

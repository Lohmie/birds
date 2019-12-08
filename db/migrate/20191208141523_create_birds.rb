class CreateBirds < ActiveRecord::Migration[5.2]
  def change
    create_table :birds do |t|
      t.string :saying
      t.string :author
      
      t.timestamps
    end
  end
end

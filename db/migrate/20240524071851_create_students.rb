class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :nickname
      t.text :bio

      t.timestamps
    end
  end
end

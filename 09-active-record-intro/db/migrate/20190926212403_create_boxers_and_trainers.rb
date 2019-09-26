class CreateBoxersAndTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :boxers do |t|
      t.string :name
    end

    create_table :trainers do |t|
      t.string :name
    end
  end
end

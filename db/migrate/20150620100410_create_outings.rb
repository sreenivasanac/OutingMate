class CreateOutings < ActiveRecord::Migration
  def change
    create_table :outings do |t|
      t.title
      t.slot
      t.choice1
      t.choice2
      t.choice3
      t.choice4
      t.choice5
      t.choice6
      t.timestamps
    end
  end
end

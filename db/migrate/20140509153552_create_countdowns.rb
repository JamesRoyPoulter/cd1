class CreateCountdowns < ActiveRecord::Migration
  def change
    create_table :countdowns do |t|
      t.string :name
      t.string :description
      t.datetime :countdown_date

      t.timestamps
    end
  end
end

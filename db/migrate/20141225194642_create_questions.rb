class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :kind
      t.references :poll, index: true

      t.timestamps
    end
  end
end

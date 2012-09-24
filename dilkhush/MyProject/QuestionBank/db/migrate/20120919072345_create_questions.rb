class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
			t.string :title
			t.text :question_body
			t.string :image
      t.timestamps
    end
  end
end

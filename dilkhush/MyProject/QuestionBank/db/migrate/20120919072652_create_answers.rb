class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
			t.text :answer_body
			t.boolean :mark
      t.timestamps
    end
  end
end

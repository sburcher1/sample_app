class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :email
      t.string :name
      t.text :body
      t.references :product, index: true

      t.timestamps
    end
  end
end

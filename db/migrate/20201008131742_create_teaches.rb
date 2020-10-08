# frozen_string_literal: true

###
# Create Teaches Class
#
class CreateTeaches < ActiveRecord::Migration[6.0]
  def change
    create_table :teaches do |t|
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
  end
end

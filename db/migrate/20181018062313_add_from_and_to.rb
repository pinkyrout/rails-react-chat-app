class AddFromAndTo < ActiveRecord::Migration[5.1]
  def change
  	add_reference :messages, :from
  end
end

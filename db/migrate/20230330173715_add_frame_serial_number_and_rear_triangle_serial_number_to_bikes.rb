class AddFrameSerialNumberAndRearTriangleSerialNumberToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :frame_serial_number, :string
    add_column :bikes, :rear_triangle_serial_number, :string
  end
end

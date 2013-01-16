class TableWidth < SharedDocument
  
  def to_pdf
    add_fonts
    correct_table_width
    broken_table_width
    render_file file_name
  end
  
  private
  
  def file_name
    "pdfs/table_width.pdf"
  end
  
  def correct_table_width
    text "Correct table"
    bounding_box [bounds.left, cursor], :width => bounds.width, :height => 250 do
      stroke_bounds
      table(dummy_data, :width => bounds.width) do 
        cells.style height: 20
      end
    end
    move_down 30
  end
  
  def broken_table_width
    text "Broken Table"
    bounding_box [bounds.left, cursor], :width => bounds.width, :height => 250 do
      stroke_bounds
      table(dummy_data_colspan, :width => bounds.width, :column_widths => {0 => 10, 1 => 10, 2 => 40, 3 => 100, 5 => 60, 6 => 40, 7 => 10}) do 
        cells.style height: 20
      end
    end
  end
end
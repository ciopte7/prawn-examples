class TableFont < SharedDocument
  
  def to_pdf
    text "Regular font"
    add_fonts
    show_font_works
    broken_table
    fixed_table
    render_file file_name
  end
  
  private
  
  def file_name
    "pdfs/table_font.pdf"
  end
  
  def show_font_works
    text "Avenir font works."
  end
  
  def broken_table
    text "broken table"
    table(dummy_data) do 
    end
    move_down 30
  end
  
  def fixed_table
    text "fixed table"
    table(dummy_data) do 
      cells.style height: 20
    end
  end
  
end
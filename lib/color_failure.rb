class ColorFailure < SharedDocument
  def to_pdf
    fill_color "9C72A4"
    text "This text should be the color black", color: "000000"
    render_file file_name
  end

  private

  def file_name
    "pdfs/color_failure.pdf"
  end
end
class SharedDocument < Prawn::Document
  def add_fonts
    add_avenir_font_family
    font "Avenir"
    default_leading 4
    font_size 8
  end
  
  def add_avenir_font_family
    font_families.update("Avenir" => {
      :normal => "fonts/Avenir35-Light.ttf",
      :bold   => "fonts/Avenir55Roman.ttf"
    })
  end
  
  def dummy_data
    [ 
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8]
    ]
  end
  
  def dummy_data_colspan
    [ [ {:content => "1", :colspan => 8} ],
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8]
    ]
  end
end
class TacosController < ApplicationController

  def index
    @fillings = [
      "Wagyu Beef", "Truffle Carnitas", "Saffron Shrimp", "Miso Glazed Pork", "Wild Mushroom", 
      "Caviar & Cream", "Smoked Octopus", "Duck Confit", "Spiced Hibiscus", "Aged Manchego",
      "Korean Galbi", "Pickled Cactus", "Crispy Quinoa", "Harissa Lamb", "Yuzu Salmon"
    ].sample(6)
    # render :template => "tacos/index"
  end

end
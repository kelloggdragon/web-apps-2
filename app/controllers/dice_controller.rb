class DiceController < ApplicationController

  def index
    @die1 = rand(1..6)
    @die2 = rand(1..6)
    @total = @die1 + @die2
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => { :die1 => @die1, :die2 => @die2, :total => @total } }
    end
  end

end

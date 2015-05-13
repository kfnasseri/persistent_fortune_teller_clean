class ZodiacsController < ApplicationController

def new_form

end

def create_row

  z = Zodiac.new
  z.sign = params[:symbol]
  z.creatures  = params[:animal]
  z.fortune = params[:horoscope]
  z.save

  @sign = params[:symbol]
  @creature = params[:animal]
  @horoscope = params[:horoscope]

  redirect_to('http://localhost:3000/zodiacs')
end

def sign
  @zodiac = Zodiac.find_by({:sign => params[:the_sign]})
end

def creature
  @zodiac = Zodiac.find_by({:creatures => params[:the_creature]})

end

def show
  @zodiac = Zodiac.find_by({:id => params[:the_id]})
end

def index
  @list_of_zodiacs = Zodiac.all
end

def destroy_row
    z = Zodiac.find(params[:the_id])
    z.destroy

    redirect_to("http://localhost:3000/zodiacs")
end

end

class MainController < ApplicationController
  def index
    # render('index')
  end
  
  def about
    @createdBy = 'DawoodAli23'
    # render('about')
  end
end

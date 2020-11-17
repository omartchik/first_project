class PagesController < ApplicationController

  def home
    about
  end
  def about
    @array = ["mari","toto","azeri","oamar",'baya','tutie','taazeroiz', 'tramazei','omdfr', 'obeair', 'basiur', "biazerujgs"]
    if params[:name]
      @array = @array.select {|member| member.starts_with?(params[:name])}
    end
  end

end

class ServformController < ApplicationController
  
  def redir_to_root
    redirect_to "/servform/home"
  end
  
  def home
  end

  def result
    if !session.key?(:count) 
      session[:count] = 0
    end
    session[:count] += 1
    user = params[:user]
    @visit_count = session[:count]
    @name = user[:name]
    @location = user[:location]
    @fav_lang = user[:fav_lang]
    @comment = user[:comment]

  end

  def reset_count
    session[:count] = 0
    redirect_to "/servform/home"
  end


  # private
  #   def user_params
  #     params.require(:user).permit(:name, :location, :fav_lang, :comment)
  #   end
end

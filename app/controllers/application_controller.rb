class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :load_stop, except: [:profile]


  def index
    redirect_to planner_path if @stop.nil?
  end

  def planner
    
  end

  def schedule
    redirect_to planner_path if @stop.nil?
  end

  def profile
  end


  private
    def load_stop
      if params[:id] || params[:stop]
        @stop = Stop.where(id: params[:id] || params[:stop]).first
        @stop ||= Stop.where(stop_id: params[:id] || params[:stop]).first
      
      elsif session[:stop_id]
        @stop = Stop.find(session[:stop_id])

      end

      # Handle if @stop is nil
      # @stop = nil

      session[:stop_id] = @stop.id unless @stop.nil?  
    end
end

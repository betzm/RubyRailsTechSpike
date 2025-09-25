def process_input
  @result = params[:user_input].upcase # Example processing
  render :index
end
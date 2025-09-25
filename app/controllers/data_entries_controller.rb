class DataEntriesController < ApplicationController
  def new
    @data_entry = DataEntry.new
  end

  def create
    @data_entry = DataEntry.new(data_entry_params)

    if @data_entry.save
      flash[:notice] = "Your data was saved!"
      redirect_to new_data_entry_path
    else
      flash.now[:alert] = "There was a problem saving your data."
      render :new
    end
  end

  private

  # Note the require(:data_entry) here
  def data_entry_params
    params.require(:data_entry).permit(:name, :email, :message)
  end
end


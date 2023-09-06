class EntriesController < ApplicationController
  before_action :set_entry, only: %i[show edit update destroy]
  def index
    @entries = Entry.all
  end

  def show; end

  def new; end

  def edit; end

  def create
    @entry = current_user.entries.build(entry_params)
    respond_to do |format|
      if @entry.save
        format.html { redirect_to entry_url(@entry), notice: 'Entry was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to entry_url(@activity), notice: 'Entry was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
    end
  end

  private

  def set_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:activity_id, :performed_at, :duration, :recorded, 
                                  boolean_entries_attributes: %[:completed],
                                  datum_entries_attributes: %[:completed, :datum])
  end
end
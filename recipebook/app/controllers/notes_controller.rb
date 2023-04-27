class NotesController < ApplicationController
  private

  def step_params
      params.require(:note).permit(recipe_ids: [], :note_text, :note_no)
  end
end

class TranslationController < ApplicationController
  def detect
    if params[:text]
      @value = params[:text]
      @language = Translation.detect(@value)
    end
  end
end

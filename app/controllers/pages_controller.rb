class PagesController < ApplicationController
  def about
  end

  def contact
    search = params[:member]
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
    if search.present?
      @members = @members.select { |name| name.downcase == search.downcase }
    end

  end

  def home
  end
end

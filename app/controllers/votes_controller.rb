class VotesController < ApplicationController

  def create
    if params["vote"].blank? || params["vote"]["option_id"].blank?
      @error = "Select One Option"
    else
      ip = determine_ip
      @vote = Vote.where(ip: ip).first_or_initialize
      @vote.ip = ip
      @vote.option_id = params["vote"]["option_id"]
      if @vote.save
        @options = Vote::FANTASY_OPTIONS
        @total_votes = Vote.count
        @result = Vote.group(:option_id).count(:option_id)
      else
        @error = @vote.errors.full_messages.first
      end
    end
  end

end

class HomeController < ApplicationController

  def index
    ip = determine_ip
    @vote = Vote.find_by_ip(ip)
    @options = Vote::FANTASY_OPTIONS
    if @vote.present?
      @total_votes = Vote.count
      @result = Vote.group(:option_id).count(:option_id)
    end

    @review = Review.new
    @reviews = Review.order('id desc').limit(30)
  end
end

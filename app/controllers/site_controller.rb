class SiteController < ApplicationController
  before_filter :poll_data

  def fanspole
  end

  def dream11
  end

  def oyecaptain
  end

  def fandromeda
  end

  def cricbattle
  end

  def cricketinc
  end

  def daily_fantasy_cricket
  end

  protected
    def poll_data
      ip = determine_ip
      @vote = Vote.find_by_ip(ip)
      @options = Vote::FANTASY_OPTIONS
      if @vote.present?
        @total_votes = Vote.count
        @result = Vote.group(:option_id).count(:option_id)
      end
    end

end

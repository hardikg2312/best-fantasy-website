class Vote < ActiveRecord::Base

  validates_presence_of  :ip, :option_id
  validates_uniqueness_of :ip

  # PREMIUM_FEATURE will be open if level is greater.
  FANTASY_OPTIONS = [
      {:id => 1, :name => 'Fanspole', :logo => 'site-logo/fanspole.png', :path => 'fanspole', :site => 'https://www.fanspole.com/'}, 
      {:id => 2, :name => 'Dream11', :logo => 'site-logo/dream11.png', :path => 'dream11', :site => 'https://fantasycricket.dream11.com'}, 
      {:id => 3, :name => 'OyeCaptain', :logo => 'site-logo/oyecaptain.png', :path => 'oyecaptain', :site => 'https://www.oyecaptain.com/'},
      {:id => 4, :name => 'Fandromeda', :logo => 'site-logo/fandromeda.png', :path => 'fandromeda', :site => 'https://fandromeda.com/event'},
      {:id => 5, :name => 'CricBattle', :logo => 'site-logo/cricbattle.png', :path => 'cricbattle', :site => 'http://www.cricbattle.com/'}, 
      {:id => 6, :name => 'Cricketinc', :logo => 'site-logo/cricketinc.png', :path => 'cricketinc', :site => 'https://www.cricketinc.com/'}, 
      {:id => 7, :name => 'DailyFantasy Cricket', :logo => 'site-logo/daily-fantasy-cricket.png', :path => 'daily-fantasy-cricket', :site => 'https://www.dailyfantasycricket.com'}
    ]

end

class Vote < ActiveRecord::Base

  validates_presence_of  :ip, :option_id
  validates_uniqueness_of :ip

  # PREMIUM_FEATURE will be open if level is greater.
  FANTASY_OPTIONS = [
      {:id => 1, :name => 'Fanspole', :logo => 'site-logo/fanspole.png', :path => 'fanspole'}, 
      {:id => 2, :name => 'Dream11', :logo => 'site-logo/dream11.png', :path => 'dream11'}, 
      {:id => 3, :name => 'OyeCaptain', :logo => 'site-logo/oyecaptain.png', :path => 'oyecaptain'},
      {:id => 4, :name => 'Fandromeda', :logo => 'site-logo/fandromeda.png', :path => 'fandromeda'},
      {:id => 5, :name => 'CricBattle', :logo => 'site-logo/cricbattle.png', :path => 'cricbattle'}, 
      {:id => 6, :name => 'Cricketinc', :logo => 'site-logo/cricketinc.png', :path => 'cricketinc'}, 
      {:id => 7, :name => 'DailyFantasyCricket', :logo => 'site-logo/daily-fantasy-cricket.png', :path => 'daily-fantasy-cricket'}
    ]

end

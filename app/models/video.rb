class Video < ApplicationRecord

  enum category: {
    popular_at_ciroflix: 1,
    ciro_games: 2,
    cirao_on_tv: 3
  }

  enum status: {
	 	enabled: 1,
	 	disabled: 2
	 }
end

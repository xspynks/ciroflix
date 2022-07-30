class Video < ApplicationRecord
  has_many :pictures, as: :picturable  

  # validates :title, presence: true
  # validates :description, presence: false
  # validates :category, presence: true
  # validates :youtube_url, presence: true
  # validates :youtube_id, presence: true
  # validates :active, presence: true  

  enum category: {
    popular_at_ciroflix: 1,
    ciro_games: 2,
    cirao_on_tv: 3
  }

  enum video_status: {
	 	video_enabled: 1,
	 	video_disabled: 2
	 }
end
class Replica < ApplicationRecord
  belongs_to :job

  scope :by_timestamp, -> { order(timestamp: :asc)}


  def formatted_timestamp 
  	secondsTimeSpanToHMS(timestamp)
  end

	def secondsTimeSpanToHMS(s) 
		#byebug
	    h = (s/3600).floor.to_i #Get whole hours
	    s -= h*3600
	    m = (s/60).floor.to_i #Get remaining minutes
	    s -= m*60 
	    s = s.round(2)
	    return "#{h}:#{'%02d' % m}:#{'%05.2f' % s}" #zero padding on minutes and seconds
	end




end

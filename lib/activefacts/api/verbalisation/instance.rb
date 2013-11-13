module ActiveFacts
  module API
    module Instance
      module Verbalisation
	module ClassMethods
	  # When defining a role, this module supports new options:
	  # :reading => "forward/reverse". Forward and reverse readings.
	  # Must include MARKERS for the player names. May include adjectives.
	  def has_one *a
	    readings = a.last.is_a?(Hash) && a.last.delete(:readings)
	    puts "REVISIT: Not saving has_one readings #{readings.inspect}" if readings
	    role = super
#	    role.apply_readings readings
	    role
	  end

	  def one_to_one *a
	    readings = a.last.is_a?(Hash) && a.last.delete(:readings)
	    puts "REVISIT: Not saving one_to_one readings #{readings.inspect}" if readings
	    role = super
#	    role.apply_readings readings
	    role
	  end

	  def maybe *a
	    readings = a.last.is_a?(Hash) && a.last.delete(:readings)
	    puts "REVISIT: Not saving maybe readings #{readings.inspect}" if readings
	    role = super
#	    role.apply_readings readings
	    role
	  end
	end

	def verbalise *a
	  "REVISIT: (not) Verbalising an #{self.class.name}: " +
	    super
	end
      end
    end
  end
end

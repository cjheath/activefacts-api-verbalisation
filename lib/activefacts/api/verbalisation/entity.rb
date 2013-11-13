module ActiveFacts
  module API
    module Entity
      module Verbalisation
	module ClassMethods
	  # Define new verbalisation methods for Entity classes:
	  def identified_by *a, &b
	    readings = a.last.is_a?(Hash) && a.last.delete(:readings)
	    puts "REVISIT: Not saving entity_type readings #{readings.inspect}" if readings

	    super *a, &b
	  end
	end

	# Define new verbalisation methods for Entity instances:
      end

      # Prepend new methods for Entities:
      prepend ActiveFacts::API::Instance::Verbalisation
      prepend Verbalisation

      # Prepend new methods for Entity classes:
      module ClassMethods
	prepend ActiveFacts::API::Instance::Verbalisation::ClassMethods
        prepend Verbalisation::ClassMethods
      end
    end
  end
end

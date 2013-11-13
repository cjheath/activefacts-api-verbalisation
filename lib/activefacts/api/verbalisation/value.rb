module ActiveFacts
  module API
    module Value
      module Verbalisation
	module ClassMethods
	  # Define new verbalisation methods for Value classes:
	  def value_type *a, &b
	    readings = a.last.is_a?(Hash) && a.last.delete(:readings)
	    puts "REVISIT: Not saving value_type readings #{readings.inspect}" if readings

	    puts "Defining #{self}.value_type #{a.inspect}"
	    super *a, &b
	  end
	end

	# Define new verbalisation methods for Value instances:
      end

      # Prepend new methods for Values:
      prepend ActiveFacts::API::Instance::Verbalisation
      prepend Verbalisation

      # Prepend new methods for Value classes:
      module ClassMethods
	prepend ActiveFacts::API::Instance::Verbalisation::ClassMethods
        prepend Verbalisation::ClassMethods
      end
    end
  end
end

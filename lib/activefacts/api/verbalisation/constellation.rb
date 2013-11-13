module ActiveFacts
  module API
    class Constellation
      module Verbalisation
	def verbalise *a
	  "REVISIT: Constellation Verbalisation: " +
	    super
	end
      end

      prepend Verbalisation
    end
  end
end

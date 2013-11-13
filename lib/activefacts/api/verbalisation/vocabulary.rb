module ActiveFacts
  module API
    module Vocabulary
      module Verbalisation
	def verbalise
	  "REVISIT: (not) verbalising Vocabulary " +
	    super
	end
      end

      prepend Verbalisation
    end
  end
end

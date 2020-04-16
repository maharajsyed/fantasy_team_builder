class Draftlist < ActiveRecord::Base
    belongs_to :team 
    belongs_to :player

    attr_reader :attribute_name
end


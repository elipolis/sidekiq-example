class Campaign
    include Mongoid::Document

    field :name, String
    field :key, String

    before_create :generate_key

    def generate_key
        # Generate UID
    end
end

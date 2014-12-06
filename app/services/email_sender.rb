class EmailSenderA
    include Sidekiq::Worker

    def perform user_id, campaign_name
    end
end

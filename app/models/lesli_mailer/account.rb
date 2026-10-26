module LesliMailer
    class Account < ApplicationRecord
        belongs_to :account,
            class_name: "Lesli::Account",
            inverse_of: :mailer
        validates :account_id, uniqueness: true
        has_many :dashboards

        after_create :initialize_account

        def initialize_account
        end
    end
end

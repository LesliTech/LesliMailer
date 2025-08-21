module LesliMailer
    class Account < ApplicationRecord
        belongs_to :account, class_name: "Lesli::Account"
        has_many :dashboards

        after_create :initialize_account

        def initialize_account
            Dashboard.initialize_account(self)
        end
    end
end

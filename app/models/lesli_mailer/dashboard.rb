module LesliMailer
    class Dashboard < Lesli::Shared::Dashboard
        self.table_name = "lesli_mailer_dashboards"
        belongs_to :account

        COMPONENTS = %i[]
    end
end

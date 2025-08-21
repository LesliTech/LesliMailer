class CreateLesliMailerDashboards < ActiveRecord::Migration[7.0]
    def change
        create_table_lesli_shared_dashboards_10(:lesli_mailer)
    end
end

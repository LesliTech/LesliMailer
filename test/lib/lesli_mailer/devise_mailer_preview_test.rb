require "test_helper"
require LesliMailer::Engine.root.join(
    "lib/lesli_mailer_previews/lesli_mailer/devise_mailer_preview"
).to_s

module LesliMailer
    class DeviseMailerPreviewTest < ActiveSupport::TestCase
        test "builds a stable user without persisted data" do
            user = LesliMailer::DeviseMailerPreview.new.send(:preview_user)

            assert_equal "hello@lesli.dev", user.email
            assert_equal "Owner", user.first_name
            assert_equal "Lesli", user.account.name
            assert_not_predicate user, :persisted?
            assert_not_predicate user.account, :persisted?
        end
    end
end

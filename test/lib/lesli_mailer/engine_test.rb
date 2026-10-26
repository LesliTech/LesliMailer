require "test_helper"

module LesliMailer
    class EngineTest < ActiveSupport::TestCase
        test "inherits from Rails engine" do
            assert LesliMailer::Engine < Rails::Engine
        end

        test "isolates the LesliMailer namespace" do
            assert_predicate LesliMailer::Engine, :isolated?
        end

        test "registers packaged mailer previews" do
            preview_paths = LesliMailer::Engine.paths["test/mailers/previews"].to_a

            assert_includes preview_paths, LesliMailer::Engine.root.join("lib/lesli_mailer_previews").to_s
        end

        test "registers migrations in a host application" do
            assert_includes Rails.application.config.paths["db/migrate"].expanded,
                LesliMailer::Engine.root.join("db/migrate").to_s
        end

        test "defines its engine routes" do
            assert_predicate LesliMailer::Engine.routes.routes, :any?
        end
    end
end

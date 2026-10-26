require "test_helper"

module LesliMailer
    class VersionTest < ActiveSupport::TestCase
        test "has a version number" do
            assert_predicate LesliMailer::VERSION, :present?
        end

        test "has a build number" do
            assert_predicate LesliMailer::BUILD, :present?
        end
    end
end

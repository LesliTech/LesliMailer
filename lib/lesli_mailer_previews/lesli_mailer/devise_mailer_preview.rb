=begin

Lesli

Copyright (c) 2026, Lesli Technologies, S. A.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see http://www.gnu.org/licenses/.

Lesli · Ruby on Rails SaaS Development Framework.

Made with ♥ by https://www.lesli.tech
Building a better future, one line of code at a time.

@contact  hello@lesli.tech
@website  https://www.lesli.tech
@license  GPLv3 http://www.gnu.org/licenses/gpl-3.0.en.html

// · ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~
// · 
=end
module LesliMailer
    class DeviseMailerPreview < ActionMailer::Preview

        TOKEN = "preview-token"

        def reset_password_instructions
            LesliShield::DeviseMailer.reset_password_instructions(
                preview_user,
                TOKEN
            )
        end

        def confirmation_instructions
            LesliShield::DeviseMailer.confirmation_instructions(
                preview_user,
                TOKEN
            )
        end

        def welcome
            LesliShield::DeviseMailer.welcome(preview_user)
        end

        private

        # Keep previews available on a new database and stable across machines.
        def preview_user
            @preview_user ||= Lesli::User.new(
                email: "hello@lesli.dev",
                first_name: "Owner"
            ).tap do |user|
                user.account = Lesli::Account.new(
                    name: "Lesli",
                    email: "hello@lesli.dev",
                    status: "active"
                )
            end
        end
    end
end

# Database

LesliMailer uses collection code `02` and engine code `05`. Its current schema owns one table:

| Migration code | Table | Responsibility | Important relationships |
| --- | --- | --- | --- |
| `02.05.00.01.10` | `lesli_mailer_accounts` | Engine-specific state for a Lesli account | Required core account reference |

The table is created with:

```ruby
create_table_lesli_shared_account_10(:lesli_mailer)
```

Email delivery, jobs, and message bodies do not currently create additional LesliMailer tables. The previous documentation listed planned settings, catalogs, dashboards, workflows, custom fields, and email item tables that are not present in the migrations; they are not part of the supported schema.

```shell
bin/rails lesli:db:prepare
bin/rails db:migrate:status
```

See [Database Architecture](/engines/lesli/database/structure) and [Migration Versioning](/engines/lesli/database/versioning).

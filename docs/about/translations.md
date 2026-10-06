# Translations

LesliMailer reserves the `lesli_mailer` namespace for interface text and email copy owned by this engine. It currently ships empty English, Spanish, and Italian locale files.

Add email keys by mailer or workflow bucket:

```yaml
en:
  lesli_mailer:
    notifications:
      subject: "New notification"
      greeting: "Hello %{name}"
```

Use the complete key and pass interpolation explicitly:

```ruby
I18n.t(
  "lesli_mailer.notifications.greeting",
  name: recipient.name
)
```

Add the same key to every supported locale. Subjects and text that belong to another engine should remain in that engine's namespace, even when LesliMailer delivers the message.

When LesliBabel is installed:

```shell
bin/rails lesli_babel:scan
bin/rails lesli_babel:import
```

Locale files remain version-controlled application source. Review generated changes and test both text and HTML email rendering before release.

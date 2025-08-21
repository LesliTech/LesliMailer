# Installation & configuration

```shell
# Add LesliAdmin engine gem
bundle add lesli_admin
```

```shell
# Setup & initialize the database
rake lesli:db:setup
```

```ruby
# Load LesliAdmin engine
Rails.application.routes.draw do
    mount LesliAdmin::Engine => "/admin"
end
```

<div align="center">
	<img width="90" alt="Lesli logo" src="./app/assets/images/lesli_mailer/mailer-logo.svg" />
    <h3 align="center">Mails for the Lesli Framework.</h3>
</div>

<hr/>
<div align="center">
    <a target="blank" href="https://rubygems.org/gems/lesli_mailer">
        <img src="https://badge.fury.io/rb/lesli_mailer.svg" alt="Gem Version" height="24">
    </a>
</div>
<hr/>

<br />

<div align="center">
    <img 
        style="width:100%;max-width:800px;border-radius:6px;" 
        alt="Lesli screenshot" src="./docs/images/screenshot.png" />
</div>

### Quick start

```shell
# Add LesliMailer engine gem
bundle add lesli_mailer
```

```shell
# Setup & initialize the database
rake lesli:db:setup
```

```ruby
# Load LesliMailer engine
Rails.application.routes.draw do
    mount LesliMailer::Engine => "/mailer"
end
```


### Documentation
* [website](https://www.lesli.dev/)
* [database](./docs/database.md)
* [documentation](https://www.lesli.dev/engines/mailer/)


### Get in touch with Lesli

* [Email: hello@lesli.tech](hello@lesli.tech)
* [Website: https://www.lesli.tech](https://www.lesli.tech)
* [Twitter: @LesliTech](https://twitter.com/LesliTech)


### License
-------
Copyright (c) 2023, Lesli Technologies, S. A.

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

<hr />
<br />

<p align="center">
    <img width="200" alt="Lesli logo" src="https://cdn.lesli.tech/lesli/brand/app-logo.svg" />
    <h4 align="center">Ruby on Rails SaaS Development Framework.</h4>
</p>


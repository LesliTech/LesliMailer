<div align="center" class="documentation-header">
    <img width="100" alt="Lesli logo" src="./app/assets/images/lesli_mailer/mailer-logo.svg" />
    <h3 align="center">Ruby on Rails SaaS Development Framework.</h3>
</div>

<br />
<hr/>

<div align="center" class="documentation-statics">
    <a target="blank" href="https://github.com/LesliTech/LesliMailer/actions">
        <img alt="Tests passing" src="https://img.shields.io/badge/Tests-passing-green?style=for-the-badge&logo=github">
    </a>
    <a target="blank" href="https://rubygems.org/gems/lesli_mailer">
        <img alt="Gem Version" src="https://img.shields.io/gem/v/lesli_mailer?style=for-the-badge&logo=ruby">
    </a>
    <a target="blank" href="https://codecov.io/github/LesliTech/LesliMailer"> 
        <img alt="Codecov" src="https://img.shields.io/codecov/c/github/LesliTech/LesliMailer?style=for-the-badge&logo=codecov">
    </a>
    <a target="blank" href="https://sonarcloud.io/project/overview?id=LesliTech_LesliMailer"> 
        <img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/LesliTech_LesliMailer?server=https%3A%2F%2Fsonarcloud.io&style=for-the-badge&logo=sonarqubecloud&label=Quality">
    </a>
</div>

<hr/>
<br />


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


### Lesli Documentation
* [website](https://www.lesli.dev/)
* [documentation](https://www.lesli.dev/engines/mailer/)


### Get in touch with Lesli

* [Email: hello@lesli.tech](hello@lesli.tech)
* [Website: https://www.lesli.tech](https://www.lesli.tech)
* [Twitter: @LesliTech](https://twitter.com/LesliTech)


### License
-------
Copyright (c) 2025, Lesli Technologies, S. A.

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

<div align="center" class="has-text-centered">
    <img width="200" alt="Lesli logo" src="https://cdn.lesli.tech/lesli/brand/app-logo.svg" />
    <h4 align="center" class="mt-0">Ruby on Rails SaaS Development Framework.</h4>
</div>

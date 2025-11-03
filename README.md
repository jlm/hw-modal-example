# Hotwire Modal Example

This example is intended to show a minimal configuration for a Rails 8 app using
Hotwire as the Javascript framework,
Turbo_confirm (by RoleModel) for fancier Javascript confirmation dialogs,
Optics (by Rolemodel) as the CSS style library,
Postgresql as the database,
and Turbo frame modals as a method to provide modal windows for showing Rails forms.


## Requirements
* Ruby version 3.4.7
* Rails version 8.0.3
* Postrgesql version 9 or newer (I'm using 14) 
* Turbo-confirm by @RoleModel
* Optics by @RoleModel

## Configuration
* To install `turbo-confirm` (not working on macOS 26.0.1 with Homebrew when I wrote this):
```shell
./bin/importmap  pin @rolemodel/turbo-confirm
```
* To install `optics`, see https://github.com/RoleModel/optics/ or cheat and use the method that
Andy Outlaw uses in his example code referred to here: https://medium.com/@outlawandy/turbo-frame-modals-869801e37591

## Initialisation
* Initialise the database with `./bin/rails db:setup`.

## Testing
* If there were any tests, you could run them with `./bin/rspec`

## Deployment
It's not really worth deploying such a simple demonstration.

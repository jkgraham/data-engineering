# Challenge App

## Installation

1. Clone the project:
```bash
$ git clone git://github.com/jkgraham/data-engineering.git
```
1. Run bundler:
```bash
$ cd data-engineering
$ bundle
```
1. Migrate the database
```bash
$ rake db:migrate
```
1. Setup github oauth authentication: register app at [GitHub Applications Page](https://github.com/settings/applications), then export your keys:
```bash
$ export GITHUB_KEY=abc123
$ export GITHUB_SECRET=abcdef123456789
```
1. Start the app:
```bash
$ rails s
```
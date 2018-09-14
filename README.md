# README

## Local Development
1. Install docker and docker-compose
1. Run docker-compose file `docker-compose up`
1. In a separate tab, setup the db `docker-compose exec web bin/rails db:migrate`

## Testing Metadata
Example session in `docker-compose exec web bin/rails console`
```
creator = Creator.new(label: 'Theodor', note: 'The first creator')
contributor = Contributor.new(label: 'Dewey', note: 'Another creator')

work = Work.new(description: 'A Dr.Seuss thing')
work.creators << creator
work.contributors << contributor
work.save
```

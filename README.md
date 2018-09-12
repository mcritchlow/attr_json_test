# README

## Local Development
1. Install docker and docker-compose
1. Run docker-compose file `docker-compose up`
1. In a separate tab, setup the db `docker-compose exec web bin/rails db:migrate`

## Testing Metadata
Example session in `docker-compose exec web bin/rails console`
```
agent = Agent.new(label: 'Theodor', note: 'The first creator')
agent2 = Agent.new(label: 'Dewey', note: 'The second creator')
agent.save
agent2.save

work = Work.new(creators: [agent.id, agent2.id])
```

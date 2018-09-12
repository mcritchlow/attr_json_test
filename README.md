# README

## Local Development
1. Install docker and docker-compose
1. Run docker-compose file `docker-compose up`
1. In a separate tab, setup the db `docker-compose exec web bin/rails db:migrate`

## Testing Metadata
Example session in `bin/rails console`
```
agent = Agent.new(label: 'The Creator', note: 'The first creator')
=> #<Agent id: nil, json_attributes: {"label"=>"The Creator", "note"=>"The first creator"}>

work = Work.new(creators: [agent])
```




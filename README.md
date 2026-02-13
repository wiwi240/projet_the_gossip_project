File: the_gossip_project/README.md

Markdown

# The Gossip Project - Social Network Backend

A complex backend structure for a social platform featuring users, gossips, tags, and private messaging.

### Database Schema
* **Users**: Profile information (name, email, age) linked to a city.
* **Gossips**: Written by users. Can be categorized using multiple tags.
* **Tags**: Labels that can be attached to multiple gossips via a join table.
* **Private Messages**: Features a complex messaging system where a user (sender) can send a message to one or multiple recipients through a join table.
* **Cities**: Organizes users by their geographic location.



### Key Technical Features
* Use of **Custom Class Names** for messaging relations (`sender`, `recipient`).
* Many-to-Many associations for Tags and Messages.
* SQLite-compatible migrations using `integer` instead of `references` for renamed associations.

### Setup
1. `bundle install`
2. `rails db:migrate`
3. `rails db:seed`

### Data Visualization
To see the messaging system in action, run `rails c` and use:
`tp JoinTableMessageRecipient.all, "private_message.id", "recipient.first_name"`
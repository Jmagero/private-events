# ACTIVE RECORD ASSOCIATIONS PROJECT

This assignment consists of building an application named Private Events that behaves similarly to Eventbrite. The goal is to practice the main concepts of Associations in Rails.
 
<br />
<p align="center">
  <a href="https://github.com/jmagero/private-events">
    <img src="app\assets\images\microverse-logo.webp" alt="Logo" width="100" height="100">
  </a>

  <h3 align="center">Linter</h3>

  <p align="center">
    This is a collaborative project as part of the Microverse Ruby on Rails curriculum
    <br />
    <a href="https://github.com/jmagero/private-events/tree/feature"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/jmagero/private-events/issues">Report Bug</a>
    ·
    <a href="https://github.com/jmagero/private-events/issues">Request Feature</a>
  </p>
</p>


* Ruby version 2.7.1

## Table of Contents

* [About](#about)
* [Usage](#usage)
* [Development](#development)
  * [Built With](#built-with)
* [Author](#author)
* [Show Support](#show-your-support)
* [Acknowledgements](#acknowledgements)


## About

This project creates an application that allows users to create events and then manage user signups. Users can create events and send invitations and parties. Events take place at a specific date and at a location. A user can create events. A user can attend many events. An event ca be attende by many users. We used many-to-many relationships.

We started the project by setting up the following. 

* Modeled the data for the application, including the necessary tables.
* Built and migrated the User model.
* Created a simple Users controller and corresponding routes for `#new`, `#create`, and `#show` actions. Made a form where you can sign up a new user and a simple `#show` page.
* Created a simple sign in function that doesn’t require a password. Saved the ID of the “signed in” user in either the session hash to retrieve it when necessary. Displayed the name of the “signed in” user at the top.
* Built and migrated the Event model. Included the event’s date in the model.
* Added the association between the event creator (a User) and the event. Called this user the “creator”. Added the foreign key to the Events model.
* Modified the User’s Show page to list all the events a user has created.
* Created an EventsController and corresponding routes to allow for the creation of an event, show a single event, and list all events.
* The `#create` action uses the #build method of the association to create the new event with the user’s ID prepopulated.
* Created the Event Index page to display all events.
* Added the association between the event attendee (also a User) and the event. Called this user the “attendee”. Called the event the “attended_event”.
* Created and migrated all necessary tables and foreign keys.
* Made the Event’s Show page display a list of attendees.
* Made the User’s Show page display a list of events they are attending.
* Modified the User’s Show page to separate those events which have occurred in the past (“Previously attended events”) from those which are occurring in the future (“Upcoming events”).
* Modified the Event Index page to list all events, separated into Past and Upcoming categories.
* Refactored the “upcoming” and “past” methods into simple scopes.
* Put navigation links across the top.
* Allowed for users to invite other users to events. Only invited users can attend an event.

## Usage

### Installing Ruby

You shoudl have Ruby installed in your computer to run this project.

If you're not sure wether or not you have Ruby, type the following in your command line:<br>
`ruby -v`
That should return the version of Ruby that's running on your computer. 

If you need to install Ruby, follow the instructions in this [webpage](https://www.ruby-lang.org/en/documentation/installation/).

### Installing Rails

You should also have Rails installed in your computer.

Follow the instructions in this tutorial to install Rails [webpage](https://www.theodinproject.com/courses/ruby-on-rails/lessons/your-first-rails-application-ruby-on-rails)

### Clone the repo

Go ahead and clone the repo.

## Development

After cloning the repo, you should fire up a server. Open a command line terminal and paste the following command:

- Clone the repository : `git clone <https://github.com/guirecordon/members-only>`
- Drop the database : `rails db:drop`
- Create the database: `rails db:create`
- Run migration: rails `db:migrate`
- Then serve, `rails serve` or `rails s`

After that, open your browser and type the following in your address bar: 

`http://localhost:3000`

That will take you to the main form where you can create a new user. Fill out all the fields. If they pass validation, the form should be emptied out. Otherwise, you should get an error message on top of your form.


### Built With
* Ruby
* Rails
* Git
* Rubocop
* Bootstrap

## Authors

👤 **Jocylin Magero** 

- Twitter: [@magero_jocyline](https://twitter.com/magero_jocyline) 
- Github: [Jmagero](https://github.com/Jmagero)
- LinkedIn: [jocyline-magero](https://www.linkedin.com/in/jocyline-magero-9592b0145/)

👤 **Guilherme Recordon** 

- Twitter: [@guirecordon](https://twitter.com/RecordonG) 
- Github: [guirecordon](https://github.com/guirecordon)
- LinkedIn: [GuilhermeRecordon](www.linkedin.com/in/gui-recordon-marketingmba/)

## Show your support

Give a ⭐️ if you like this project!




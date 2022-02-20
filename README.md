# Minicom

Welcome to Minicom! A prototype Intercom service. Inside this directory you'll find a customer website, and admin website and servers that represents a simplified version of how Intercom works.

## Installation

choose your preferred framework. The current choices available are:
```
rails
spring
node
django
```
anywhere you see `{your-framework}` in the instructions below, replace it with the keyword above.

Run the command that matches your framework to install it.

```
script/{your-framework}/setup

(examples)

script/rails/setup
script/spring/setup
script/node/setup
script/django/setup
```

## Getting started

run the following in 3 different terminal windows:

```
script/customer/start
script/admin/start
script/{your-framework}/start
```

This will get you the customer site running at http://127.0.0.1:8008, the admin interface running at http://127.0.0.1:8009 and a webserver running at http://127.0.0.1:3000.

## Sending a message

Open the [customer website](http://127.0.0.1:8008) and enter the email address `alice@example.com`, then click the **Sign up** button.

You'll see the welcome message update with the name `alice`, but nothing else will happen - don't worry.

Now open or refresh the [admin interface](http://127.0.0.1:8009) and you should see your user has been created.

Click on `alice@example.com` in the admin interface (you cannot manually enter the email) and send a message. Refresh the customer site and that message should appear in an alert.

## Structure

A quick overview of the application structure:

- **admin-website/** -- The root of the admin interface.
- **customer-website/** -- The root of the customer's website.

Your framework will have a folder with it's name and have 4 endpoints:

- **POST /customer_api/ping** (registers a customer and returns their unread messages)
- **POST /customer_api/read** (marks a message as read)
- **GET /admin_api/users** (lists all users)
- **POST /admin_api/messages** (creates a message for a user

## Folders

Each Server framework is in its own folder (named after the framework) and has its own readme. You can safely ignore anything in the frameworks that you are not using.

- [Rails](./rails/README.md)
- [Spring](./spring/README.md)
- [Django](./django/README.md)
- [Node](./node/README.md)

## Prototype!

This is just a prototype implementation. Now's a good time to make note of anything you'd like to fix or think we could improve.

We might not ask you to implement any of these but we'd love to talk about them later.

## The Mission

Right now communication is one-way, from site admins to their users. Let's get a conversation going! Allow users to reply to messages from site admins.

Extend models, add new ones, throwaway what you like, keep what you need. We're just prototyping, so show some hustle and see what you can accomplish!


After you have finished getting two-way communication working, feel free to get creative? What do you think would be most important to work on next? What do you have time to implement?

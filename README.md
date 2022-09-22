Challenge for Backend Developer
===============================

To better assess a candidate's development skills, we would like to provide the following challenge. This is intended to be developed in a pair programming session within an hour of time.
It's allowed to use documentation and online resources.

Prerequisites
-------------

* [Git](https://git-scm.com/)
* [MySQL](https://www.mysql.com/)

Option one
* [Node.js](https://nodejs.org/)
* Node.js framework of your choice (i.e. [Loopback](https://loopback.io/))

Option two
* [Ruby](https://www.ruby-lang.org/)
* Ruby framework of your choice (i.e. [Ruby on Rails](https://rubyonrails.org/))

Installation
------------

Clone the project

```bash
git clone git@github.com:AmbulnzLLC/backend-challenge.git && cd backend-challenge/
```

Generate a Node.js or Ruby project. You can add libraries of your choice, but be ready to describe them.

**Please set up up your working environment before the interview (working Node.js or Ruby, MySQL)
so we don't spend time installing anything.**

Project description
-------------------

I'm passionate about productivity. I want to manage my tasks and projects more effectively. I need a simple tool that helps me control my task flow.

**Functional Requirements**
* I want to be able to create/update/delete projects
* I want to be able to add tasks to my project
* I want to be able to update/delete tasks
* I want to be able to prioritise tasks within a project
* I want to be able to set a deadline for my task
* I want to be able to mark a task as 'done'
* I want to be able to add comments to my tasks
* I want to be able to delete comments
* I want to be able to attach files to comments

Optional Functional Requirments:
* I want to be able to sign in/sign up by email/password or OAuth;

**Technical Requirements**
* RESTful JSON API to handle requests based on the functional requirements
* All entities created with proper relations
* Server side validation
* It should be well tested using TDD/BDD

Optional Technical Requirments:
* It should have a user authentication solution. The user should only have access to his/her own projects and tasks

Evaluation
----------

Our goal is to find answers to those questions:

* Do you understand the chosen stack, framework, and MVC pattern in general?
* Can you design interfaces that are clear and easy to use?
* Do you master your working environment?

Due to the limited time consider the following:

* It is not important to have a fully functional application at the end
* The goals might shift during the interview as we discuss the work flow

Levels of functionality:

* **basic** - items mentioned in description work
* **above average** - some optional features
* **exceptional** - getting tests to continuously build, deploy to heroku, etc.

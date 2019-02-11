Tech Week Challenge: Bankify
=================

As part of week 10 at Makers I'll be making a very simple command line interface banking app in Ruby

Features from the Makers Brief:
-------

```
  
User stories 

As a customer
So that I don't have to carry around cash
I want a bank account

As a customer
So that I can increase my balance
I want to deposit money in my account

As a customer
So that I can pay for things
I want to make withdrawals from my account

As a customer
So that I can review my finances
I want a record of my deposits and withdrawals

```



Features spec:
------

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```


Minimum Viable Product (MVP):
-----
I've decided my MVP will be the back end functionality of the balance, credit and debit behaviour.

After finishing this I will implement the display requirements.



Approach:
-----

* Create UML sequence and diagrams based on the user stories

* Decide on order user stories will be met

* Create branch for new feature, checkout to that branch

* Write a feature test, watch it fail

* Write the code to make it pass

* Refactor

* Make pull request to merge with master branch

* Review changes

* Accept / make change requests

* Merge branch with master

* Repeat this until the MVP is met



Planned Outcome:
-----

* Everything created using strict TDD (all tests passing, 100% test coverage)

* Practised Git workflow, working on specific branches for each feature before merging back into master (committing with each significant piece of work finished) 

* First four user stories met



Improvements:
-----




Technologies used
-------

* RSpec
* Ruby
* Rubocop
* Travis CI



## How to use Bankify ##

System requirements
-------

* Ruby 2.5.0
* Mac OS X
* Chrome browser



### Set up ###

1. clone the repo<br/>
Under the repo name click *clone or download*<br/>
Click on *use HTTPs*, copy the clone URL of the repo<br/>
In the terminal go on the working directory where you want to clone the project<br/>
Use the `git clone` command and paste the clone URL then press enter :

```shell
$ git clone 
```

2. On your local machine go inside of the *Bankify* directory :

```shell
$ cd Bankify
```
3. To install all the *gems* contained in the *Gemfile*, install and run *Bundle* :
Install :

```shell
$ install bundle
```
Run:

```shell
$ bundle
```
4. You can see the different directories, with the `ls` command.

### Database ###

5. If you do not have it already, install *psql* on your local machine. Connect to your database and create two of them to be able to run the test and the app, using the `CREATE DATABASE` command.<br/>
Make one called *Bankify_development* and one called *Bankify_test*.<br/>

```shell
$ psql
admin= CREATE DATABASE Bankify_development;
admin= CREATE DATABASE Bankify_test;
```

6. Exit from psql and from the command line run the `rake` command followed by the `db:migrate` command. This will create your tables in your development DB.<br/>

```shell
$ rake db:migrate
```

7. From the command line run the `rake` command followed by the `db:auto_migrate RACK_ENV=testing` command. This will create your tables in your test DB.<br/>

```shell
$ rake db:migrate RACK_ENV=testing
```

8. Connect to psql and connect to your database using the `\c` command.<br/>
Once you are connected to the database you've chosen, you can list the tables using the `\dt` command.<br/>

```shell
$ psql
admin= \c Bankify_development;
Bankify_development= \dt
```
9. You can connect to a specific table by using the `SELECT * FROM tablename;` command.<br/>

```shell
Bankify_development= SELECT * FROM users;
```

### Run the tests ###

1. Check that the codes are passing the test. From the root *Bankify* directory, run the *spec*.<br/>
You can check all the files in one go:

```shell
$ cd Bankify
$ rspec
```
To check only one file at a time :

```shell
$ cd Bankify
$ rspec spec/file_name_spec.rb
```

2. Check that the code respects the quality of the *Rubocop* guideline, by running `rubocop` from the *Bankify* directory :

```shell
$ cd Bankify
$ rubocop
```

## Run the app ##

1. On the command line, from the root directory *Bankify*, use the `rails s` command :

```shell
$ cd Bankify
$ rails s
```

You'll be able to see that the localhost port used is *3000*

1. Open your browser and type the url of your 



## Authors ##

@joaoag (João Abbott-Gribben)


## Acknowledgements ##

The following resources were consulted in part for this project:
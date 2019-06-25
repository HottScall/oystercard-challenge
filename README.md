<h1> Oystercard Challenge </h1>

<h2> Overview </h2>

This is our 2nd week pair programming challenege at Makers Academy which focusses on the main goals of; 

- I write code that is easy to change
- I can test drive my code 
- I can build with objects 

This project has no user interface/html and is run purely in the command line, this programme was written using Ruby. 


<h2>User Stories</h2>

UIn order to use public transport
As a customer
I want money on my card. 

In order to keep using public transport
As a customer
I want to add money to my card

In order to protect my money
As a customer
I don't want to put too much money on my card

In order to pay for my journey
As a customer
I need my fare deducted from my card

In order to get through the barriers
As a customer
I need to touch in and out

In order to pay for my journey
As a customer
I need to have the minimum amount for a single journey

In order to pay for my journey
As a customer
I need to pay for my journey when it's complete

In order to pay for my journey
As a customer
I need to know where I've travelled from

In order to know where I have been
As a customer
I want to see to all my previous trips

In order to know how far I have travelled
As a customer
I want to know what zone a station is in

In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out

In order to be charged the correct amount
As a customer
I need to have the correct fare calculated

<h2> How to run </h2> 

- Clone this repo https://github.com/HottScall/oystercard-challenge.git
- Open command line 
- cd oystercard-challenge
- type irb
- require './lib/oystercard'
  > true 
- Set a variable equal to Oystercard.new e.g O = Oystercard.new
- Use keywords such as top_up, deduct, touch_in(station), touch_out(station)

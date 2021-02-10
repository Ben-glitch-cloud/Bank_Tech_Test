# Bank_Tech_Test 

    This repo replicate's the funaction of a customer using a bank branch. You are able to deposit and withdraw money at any time. And print out a history of your bank transactions. 

### How to use  

    - Fork and clone the repo  
    - Install bundle to download rspec 
    - Copy the code from the lib file into irb  
    - And begin trying it out

### 

## Acceptance criteria 

### outcome

```
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see 
``` 

### Example 

``` 
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
``` 

## User story 

```  
As a user 
So I can deposite money 
I would like to deposite £100 in to the account
``` 

``` 
As a user 
So I can withdraw money 
I would like to withdraw £50 from my account 
``` 

``` 
As a User 
So I can see the history of my tranaction 
I would like to be able to see my tranaction history
```
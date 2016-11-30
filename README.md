# Bank app

## Specification

- [x] Interact with the your code via IRB
- [x] Can make a deposits
- [x] Can make a withdrawal
- [x] Can check balance
- [x] Can print an account statement
  - [x] date
  - [x] amount
  - [x] balance

## Instructions

### Installation

1. Download the folder as a `zip` and unzip or clone the repo.
2. Install `ruby` if not installed. Also for runnning the tests you will need `rspec` which can be installed in one of the following ways:
  1. Install the gem directly using `gem install rspec`.
  2. **OR** Using Bundler run `bundle install` from the root of the dowloaded folder.

### Usage
#### In the command line

1. `cd` into the root of the downloaded folder.
2. Start **irb**
3. Type: `require './load_files.rb'`
4. Carry out out your transactions!

##### Irb Commands

| Action         | Command                           |
|----------------|-----------------------------------|
| Create account | `account_name = Account.new`      |
| Deposit money  | `account_name.deposit(amount)`    |
| Withdraw money | `account_name.withdrawal(amount)` |
| Print Statement| `account_name.statement`          |

## Acceptance criteria

  Given a client makes a *deposit* of 1000 on 10-01-2012 And a *deposit* of 2000 on 13-01-2012 And a *withdrawal* of 500 on 14-01-2012 When she *prints* her bank statement Then she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

#### Verifying the acceptance criteria
1. `cd` into the root of the downloaded folder.
2. `ruby acceptance_criteria.rb`

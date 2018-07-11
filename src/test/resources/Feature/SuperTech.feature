Feature: Transfer Funds Online
  With valid registered payee and valid amount are able to transfer funds 
  
  Scenario 1: To use transfer funds online page for fund transfer with registered payee and valid amount
  Given I am on a fund transfer page
  
  When I entered registered payee "Jim"
  
  And I entered amount"500"
  
  Then Funds transfered successfully to Jim
  
  
  Scenario 2:To use transfer funds online page for fund transfer with unregistered payee and valid amount
  
  Given I am on a fund transfer page
  When I entered  payee "John"
  
  And I entered amount"500"
  Then Funds transfered failed,"John" is not approved
  
  
  Scenario 3: To use transfer funds online page for fund transfer with registered payee and invalid amount
  Given I am on a fund transfer page
  When I entered  payee "John"
  
  And I entered amount"2500"
  Then Funds transfered failed,amount is not valid

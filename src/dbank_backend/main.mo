import Debug "mo:base/Debug";
actor DBank {
  var currentValue =300;
  // reset current value
  currentValue := 100;
  // let is a constant will never change
  let id = 564112645644;
  // Debug.print(Debug_show(id));

// we are going to make a function with the help of this function we can deposite money

public func toup(amount: Nat){
  currentValue+=amount;
  Debug.print(Debug_show(currentValue))
};

// we are going to make a function with the help of this function we can withraaw money
// decrease current value by amount
// i made a condition for amount can't be greater than currentValue

public func withdraw(amount: Nat){
 
  let Amount: Int = currentValue-amount;
  
  if(Amount >= 0) {
    currentValue-=amount;
  Debug.print(Debug_show(currentValue))
  }else {
    Debug.print("amount is too large")
  }
};

// query function is faster than update functiom
// we have to return asyncronously inside canister

public query func checkBalance():async Nat {
return currentValue;
};


}
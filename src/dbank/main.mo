import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DecentralisedBank {

  stable var currentValue: Float = 30;
  // To replace the value use this symbol := 
  currentValue := 0;

  Debug.print("Hello We are Debunging");
  Debug.print(debug_show(currentValue));

  // Time

  stable var startTime = Time.now();
  // startTime := Time.now();
  Debug.print(debug_show(startTime));


  
  
  // Constant
  let id = 485897624491;
  Debug.print(debug_show(id));
  // id:= 151876165; as let is used for costant



  public func addUp(amount : Float){
    currentValue += amount;
    Debug.print(debug_show(currentValue));

  }; // function bhi semicolon sa band krna hai

  public func widthraw(amount : Float){
    let tempValue : Float = currentValue -amount;
    if(tempValue >=0){
    currentValue -= amount;
    Debug.print(debug_show(currentValue));
    } else{
      Debug.print("Amount too large, Enter the correct Amount")
    }
  }; // function bhi semicolon sa band krna hai

  // addUp(); //to  Call this function in termina
  // dfx canister call canister_name function_name  '("Argument")'

  // This is only ReadOnly Operation
  public query func checkBalance(): async Float {
        return currentValue;
  };
   

  // Compund Interest (In seconds ke hissab sa milega)
  // public func compound(){
  //   let currentTime = Time.now();
  //   let timeElapsed = currentTime - startTime;
  //   let timeElapsedinSec = timeElapsed / 1000000000; // converting time nenoseconds to 1 second.
  //   currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedinSec));
  //   startTime := currentTime ;
  // }

}
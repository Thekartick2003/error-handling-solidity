# Error-Handling
This is the etherium intermediate course project at metacrafter in which it explains about to resolve the error handling with the pre-defined methods such as(require(),assert(),revert()).and make the code workable and run successfully.

# Functionality
- Contract successfully uses require()
- Contract successfully uses assert()
- Contract successfully uses revert() 

# Description 
For my MetaCrafter project for the Ethereum intermediate course, I was expected to create a contract that addresses undesirable errors or risks that arise in the code during compilation and can be fixed using the pre-defined techniques listed below. 
I have created three functions for each error-handling mechanism in this project.
-  Who can cast a vote or not?
-  Qualified for a result based on the cumulative mark total 
-  Performance of the division

This is the functiom used to determine a person's eligibility to vote or not.
We presume that a person who is older than 18 can vote until they reach voting age, which is less than 55.
```solidity 
  function require_age_forVoting(uint _age) public pure returns(string memory) {
       require(_age >= 18, "Not Eligible Voter in India"); 
     require( _age <=55, "Age out of range"); // assuming the maximum age is 100
        return "Eligible voter in India";
    } 
```
This is the function assert_marks, which tell about the person qualified for the result or not.
here we had taken 3 subject(maths,Science,Geography) to calcualte the end result of each student.
```solidity 
uint public result; // public variable result(unsigned integer)
function assert_marks(uint _maths, uint _Science, uint _Geography) public {
    uint _sum = _maths + _Science + _Geography; // sum of all the subjects storing in the sum variable.
  result = _sum; // here sum is equal to the result.
    assert(result >= 200 || result <=300); //here if the total marks is lie between (200, 300) then person is qualified for the result else not. }
```
// Here the get_result function which will 
//Here If the cumaltive marks is greater than equal to 200 then person is eligible for the certificate/result.
```solidity 
function get_result() public view returns(string memory){
    if (result >= 200 || result <300){
        return "you are passed, congratualtion !!!"; } 
       //If the person cumaltive marks is less than 200 then person is not eligible for the       certificate and result, reapper in the exam.
       else if(result < 200 ){
      return "Better luck next time!";
    }  else if(result >300){
        return "not defined";
        }
    else{ return "wrong marks "; }
    
}
```
//here the function division error have two parameter(numerator,denominator) and it will perform the divsion performance.
```solidity   
 uint public divison_sum; //public variable divison_sum(unsigned integer).
   function divisonalerror(uint _numerator, uint _denominator) public {
        require(_denominator != 0, "Cannot divide by zero");//if the denominator is zero then the error occur
        if(_numerator % _denominator != 0) {
            revert("The number is not exactly divisible");
        } else {
 divison_sum = _numerator / _denominator;
        }
    }
```
# Thank you for Reading !!!
## Author
##### Kartick
##### [Thekartick2003](https://github.com/Thekartick2003)

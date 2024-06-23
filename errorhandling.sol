// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
/*
Specifically, your project must provide the following to be successfully completed:
Functionality are;-
Contract successfully uses require()
Contract successfully uses assert()
Contract successfully uses revert() statements
*/
  contract Smartcontract_application {
    // This is the function to understand who is the person is eligilbe to vote or note.
    // In this funtion here we assume, if the person age (age>=18) can vote till eligible age (age<=55).
  
function require_age_forVoting(uint _age) public pure returns(string memory) {
       require(_age >= 18, "Not Eligible Voter in India"); 
     require( _age <=55, "Age out of range"); // assuming the maximum age is 100
        return "Eligible voter in India";
    } 
    uint public result; // public variable result(unsigned integer)
    
//This is the function assert_marks, which tell about the person qualified for the result or not.
//here we had taken 3 subject(maths,Science,Geography) to calcualte the end result of each student.

function assert_marks(uint _maths, uint _Science, uint _Geography) public {
    uint _sum = _maths + _Science + _Geography; // sum of all the subjects storing in the sum variable.
    result = _sum; // here sum is equal to the result.
    assert(result >= 200 || result <=300); //here if the total marks is lie between (200, 300) then person is qualified for the result else not. 
}
// Here the get_result function which will 

function get_result() public view returns(string memory){
//Here If the cumaltive marks is greater than equal to 200 then person is eligible for the certificate/result.
    if (result >= 200 || result <300){
        return "you are passed, congratualtion !!!";
    } 
    //If the person cumaltive marks is less than 200 then person is not eligible for the certificate and result, reapper in the exam.
    else if(result < 200 ){
        return "Better luck next time!";
    } 
   
    else if(result >300){
        return "not defined";
    }
    else{
        return "wrong marks ";
            }
}
   uint public divison_sum; //public variable divison_sum(unsigned integer).
//here the function division error have two parameter(numerator,denominator) and it will perform the divsion performance.
  
function divisonalerror(uint _numerator, uint _denominator) public {
        require(_denominator != 0, "Cannot divide by zero");//if the denominator is zero then the error occur
        if(_numerator % _denominator != 0) {
            revert("The number is not exactly divisible");
        } else {
            divison_sum = _numerator / _denominator;
        }
    }
}


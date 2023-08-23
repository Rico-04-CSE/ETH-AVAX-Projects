// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Booking {
    uint public totalBooking;
    mapping(address => bool) public hasBooked;

    function seatBooking() public payable {
        require(!hasBooked[msg.sender], "Already Booked"); // Check if the sender's booking is successful
        
        totalBooking++;
        hasBooked[msg.sender] = true;

        if (totalBooking > 2) {
            revert("Booking limit has exceeded"); //Revert if the booking limit exceeded
        }

        assert(totalBooking <= 2); //Make sure that the booking does not exceed the given limit
    }
}

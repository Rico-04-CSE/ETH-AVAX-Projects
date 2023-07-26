// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Deposit {
    uint public totalDeposits;
    mapping(address => uint256) public balances;

    function transaction() public payable {
        require(balances[msg.sender] == 0, "Successful Transaction"); // Check if the sender's transaction is successful
        
        totalDeposits++;
        balances[msg.sender] = 100;

        if (totalDeposits > 3) {
            revert("Transaction limit exceeded"); //Revert if the transcation limit exceeded
        }

        assert(totalDeposits <= 3); //Make sure that the transactions does not exceed the given limit
    }
}

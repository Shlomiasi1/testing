// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
 
contract bank {
    int256 public minimumUsd= 50 * 1e18;
    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable{
    require(getConversionRate(msg.value)>= minimumUsd, "Didn't send enough!");
    funders.push(msg.sender);
    addressToAmountFunded[msg.sender] = msg.value;

    }

}

// const instance = await bank.deployed()
// instance.addFuns({value:"500000000000000000",from: accounts[0] })
// instance.addFuns({value:"500000000000000000",from: accounts[1] })
// const funds = instance.funds()
// instance.sumAccount({value:"500000000000000000",from: accounts[0] })
// instance.sumAccount({value:"500000000000000000",from: accounts[1] })
// const funds = instance.funds()
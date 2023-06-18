// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";

// import "forge-std/Test.sol";   //This import also works
import "../src/StakeContract.sol";
import "../src/mocks/MockERC20.sol";
import "../src/utils/Cheats.sol";

contract StackContract is Test {
    Cheats internal constant cheats = Cheats(HEVM_ADDRESS);
    StakeContract public stakeContract;
    MockERC20 public mockERC20;

    function setUp() public {
        stakeContract = new StakeContract();
        mockERC20 = new MockERC20();
    }

    function testExample(uint8 amount) public {
        // uint256 amount = 10e18;
        mockERC20.approve(address(stakeContract), amount);
        cheats.roll(55);
        bool stakePassed = stakeContract.stake(amount, address(mockERC20));
        assertTrue(stakePassed);
    }
}

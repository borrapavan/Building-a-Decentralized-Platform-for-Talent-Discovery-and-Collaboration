// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TalentPlatform {
    struct UserProfile {
        string name;
        string[] skills;
    }

    mapping(address => UserProfile) public users;

    function registerUser(string memory _name, string[] memory _skills) public {
        users[msg.sender] = UserProfile(_name, _skills);
    }
}

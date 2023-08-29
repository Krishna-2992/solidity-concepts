//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// 2 ways to call parent constructor
// Order of initialization

contract S {
    string public name;
    constructor(string memory _name){
        name = _name;
    }
}

contract T {
    string public text;
    constructor(string memory _text){
        text = _text;
    }
}

contract U is S("s"), T("t") {

}

contract V is S, T{  // order of execution is defined by this: S->T->V
    constructor(string memory _name, string memory _text) S(_name) T(_text) {

    }
}
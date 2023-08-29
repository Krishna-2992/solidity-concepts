//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// parent contract can be accessed in two ways: 
// direct
// using super keyword

contract E {
    event Log(string message);

    function foo() public virtual {
        emit Log("E.foo");
    }

    function bar() public virtual {
        emit Log("E.log");
    }
}

contract F is E {
    function foo() public virtual override {
        emit Log("F.foo");
        E.foo();               // directly calling
    }
    function bar() public virtual override {
        emit Log("F.bar");
        super.bar();          // using super keyword
    }
}
contract G is E {
    function foo() public virtual override {
        emit Log("G.foo");
        E.foo();               // directly calling
    }
    function bar() public virtual override {
        emit Log("G.bar");
        super.bar();          // using super keyword
    }
}
contract H is F, G {
    function foo() public virtual override(F, G) {
        emit Log("H.foo");
        F.foo();              
    }
    function bar() public virtual override(F, G) {
        emit Log("H.bar");
        super.bar();   // this will call all the parent contract's constructors
        // G.bar -> F.bar -> E.bar
    }
}
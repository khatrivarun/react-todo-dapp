//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import 'hardhat/console.sol';

contract Todos {
  struct Todo {
    uint256 id;
    string text;
  }

  Todo[] private todos;
  uint256 private length = 0;

  constructor() {
    console.log('Deploying a Todo Contract');
  }

  function getTodos() public view returns (Todo[] memory) {
    return todos;
  }

  function addTodo(string memory _text) public {
    todos.push(Todo({ id: length, text: _text }));
    length++;
  }

  function removeTodo(uint256 _id) public {
    for (uint256 i = _id; i < todos.length - 1; i++) {
      todos[i] = todos[i + 1];
    }

    delete todos[todos.length - 1];
    length--;
  }
}

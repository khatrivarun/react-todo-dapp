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
    Todo[] memory tempTodos = new Todo[](length - 1);

    for (uint256 i = 0; i < length - 1; i++) {
      tempTodos[i] = todos[i];
    }

    return todos;
  }

  function addTodo(string memory _text) public {
    todos.push(Todo({ id: length, text: _text }));
    length++;
  }
}

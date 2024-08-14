// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.21;

contract Structs{
    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text)public{
        // 3 ways to initialize a struct
        // - calling it like a function
        todos.push(Todo(_text,false));
        todos.push(Todo({text:_text,completed:false}));

        Todo memory todo;
        todo.text = _text;

        todos.push(todo);

    }

    function get(uint256 _index)public view returns(Todo memory todo){
        Todo storage todo = todos[_index];
        return todo;
    }

    function updateText(uint256 _index,string calldata _text)public{
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function toggleCompleted(uint256 _index)public{
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}

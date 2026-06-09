# Mollusk documentation

## Table of contents: 
- [Table of contents:](#table-of-contents)
- [Standard functions](#standard-functions)
  - [Functions of basic movement](#functions-of-basic-movement)
    - [mollusk.forward()](#molluskforward)
    - [mollusk.left()](#molluskleft)
    - [mollusk.right()](#molluskright)
    - [mollusk.back()](#molluskback)
    - [mollusk.up()](#molluskup)
    - [mollusk.down()](#molluskdown)
  - [Functions of directional change](#functions-of-directional-change)
    - [mollusk.turnLeft()](#molluskturnleft)
    - [mollusk.turnRight()](#molluskturnright)


## Standard functions

### Functions of basic movement

#### mollusk.forward()
```
mollusk.forward([distance])
```
Moves the turtle forward by `distance` blocks. Can handle negative numbers (it will work like moving opposite direction).
##### Parameters
1. distance=1 : number The number of blocks to move.
##### Returns
1. boolean Whether the movement completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually moved (equals `distance` if successful).

#### mollusk.left()
```
mollusk.left([distance])
```
Moves the turtle left by `distance` blocks, keeping the starting direction (turtle turns left, moves `distance` blocks forward, and turns right afterwards). Can handle negative numbers (it will work like moving opposite direction, turtle turns left, moves `distance` blocks back, and turns right afterwards).
##### Parameters
1. distance=1 : number The number of blocks to move.
##### Returns
1. boolean Whether the movement completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually moved (equals `distance` if successful).

#### mollusk.right()
```
mollusk.right([distance])
```
Moves the turtle right by `distance` blocks, keeping the starting direction (turtle turns right, moves `distance` blocks forward, and turns left afterwards). Can handle negative numbers (it will work like moving opposite direction, turtle turns right, moves `distance` blocks back, and turns left afterwards).
##### Parameters
1. distance=1 : number The number of blocks to move.
##### Returns
1. boolean Whether the movement completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually moved (equals `distance` if successful).

#### mollusk.back()
```
mollusk.back([distance])
```
Moves the turtle back by `distance` blocks. Can handle negative numbers (it will work like moving opposite direction).
##### Parameters
1. distance=1 : number The number of blocks to move.
##### Returns
1. boolean Whether the movement completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually moved (equals `distance` if successful).

#### mollusk.up()
```
mollusk.up([distance])
```
Moves the turtle up by `distance` blocks. Can handle negative numbers (it will work like moving opposite direction).
##### Parameters
1. distance=1 : number The number of blocks to move.
##### Returns
1. boolean Whether the movement completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually moved (equals `distance` if successful).

#### mollusk.down()
```
mollusk.down([distance])
```
Moves the turtle down by `distance` blocks. Can handle negative numbers (it will work like moving opposite direction).
##### Parameters
1. distance=1 : number The number of blocks to move.
##### Returns
1. boolean Whether the movement completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually moved (equals `distance` if successful).

### Functions of directional change

#### mollusk.turnLeft()
```
mollusk.turnLeft([count])
```
Rotate the turtle left 90 degrees `count` times
##### Parameters
1. count=1 : number The number of turns. Can handle negative numbers (it will work like opposite function).
##### Returns
1. boolean Whether the rotation completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of times actually turned (by 90 degrees) (equals `count` if successful).

#### mollusk.turnRight()
```
mollusk.turnRight([count])
```
Rotate the turtle right 90 degrees `count` times
##### Parameters
1. count=1 : number The number of turns. Can handle negative numbers (it will work like opposite function).
##### Returns
1. boolean Whether the rotation completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of times actually turned (by 90 degrees) (equals `count` if successful).
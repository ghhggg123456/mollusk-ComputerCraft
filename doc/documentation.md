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
- [Execute system](#execute-system)
  - [Executions private table](#executions-private-table)
    - [execution.craft()](#executioncraft)
    - [execution.equipLeft()](#executionequipleft)
    - [execution.equipRight()](#executionequipright)
    - [execution.move()](#executionmove)
    - [execution.turn()](#executionturn)
    - [execution.place()](#executionplace)
    - [execution.dig()](#executiondig)
    - [execution.attack()](#executionattack)
    - [execution.redstone()](#executionredstone)
    - [execution.refuel()](#executionrefuel)
    - [execution.transfer()](#executiontransfer)
    - [execution.select()](#executionselect)
    - [execution.suck()](#executionsuck)
    - [execution.drop()](#executiondrop)
  - [Execute function](#execute-function)
    - [execute()](#execute)
    - [executeLeft()](#executeleft)
    - [executeRight()](#executeright)
    - [executeBack()](#executeback)
    - [executeUp()](#executeup)
    - [executeDown()](#executedown)
  - [Available actions](#available-actions)


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

## Execute system
Execute is a family of helper functions that move the turtle in a specified direction for a given number of steps, executing a sequence of actions at each step. This allows complex algorithms to be written in a single line of code. Execute includes a private table of functions and six public functions, one for each direction.

### Executions private table
Execute uses a private table named `executions` which cannot be accessed directly, but is called automatically during execution. For use it call an execute family function with arguments from the [available actions](#available-actions) list.

#### execution.craft()
```
mollusk.execution.craft([count])
```
Crafts items `count` times using the current recipe. Does not depend on direction.
##### Parameters
1. count=64 : number The number of times to craft
##### Returns
1. boolean Whether the crafting completed successfully
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.craft()](#craft)

#### execution.equipLeft()
```
mollusk.execution.equipLeft([argument])
```
Equips an item or upgrade into the left tool slot. Does not depend on direction.
##### Parameters
1. argument : number | string The slot number, item ID, or upgrade name (uses currently selected slot by default)
##### Returns
1. boolean Whether the equipment was successful
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.equipLeft()](#equipLeft)
2. [mollusk.equipRight()](#equipRight)

#### execution.equipRight()
```
mollusk.execution.equipRight([argument])
```
Equips an item or upgrade into the right tool slot. Does not depend on direction.
##### Parameters
1. argument : number | string The slot number, item ID, or upgrade name (uses currently selected slot by default)
##### Returns
1. boolean Whether the equipment was successful
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.equipRight()](#equipRight)
2. [mollusk.equipLeft()](#equipLeft)

#### execution.move()
```
mollusk.execution.move(direction, [count])
```
Moves the turtle in the specified direction.
##### Parameters
1. direction : string One of "front", "left", "right", "back", "top", "bottom"
2. count=1 : number The number of steps to move
##### Returns
1. boolean Whether the movement completed successfully
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.forward()](#forward)
2. [mollusk.left()](#left)
3. [mollusk.right()](#right)
4. [mollusk.back()](#back)
5. [mollusk.up()](#up)
6. [mollusk.down()](#down)

#### execution.turn()
```
mollusk.execution.turn(direction, [count])
```
Rotates the turtle in the specified direction.
##### Parameters
1. direction : string One of "left" or "right"
2. count=1 : number The number of 90-degree turns
##### Returns
1. boolean Whether the rotation completed successfully
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.turnLeft()](#turnLeft)
2. [mollusk.turnRight()](#turnRight)

#### execution.place()
```
mollusk.execution.place(direction, [count, mode])
```
Places a block in the specified direction.
##### Parameters
1. direction : string One of "front", "left", "right", "back", "top", "bottom"
2. count=1 : number The number of blocks to place
3. mode="safety" : string The placement mode ("safety" or "strict")
##### Returns
1. boolean Whether the placement completed successfully
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.place()](#place)
2. [mollusk.placeLeft()](#placeLeft)
3. [mollusk.placeRight()](#placeRight)
4. [mollusk.placeBack()](#placeBack)
5. [mollusk.placeUp()](#placeUp)
6. [mollusk.placeDown()](#placeDown)

#### execution.dig()
```
mollusk.execution.dig(direction, [count, mode])
```
Digs a block in the specified direction.
##### Parameters
1. direction : string One of "front", "left", "right", "back", "top", "bottom"
2. count=1 : number The number of blocks to dig
3. mode="safety" : string The digging mode ("safety" or "strict")
##### Returns
1. boolean Whether the digging completed successfully
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.dig()](#dig)
2. [mollusk.digLeft()](#digLeft)
3. [mollusk.digRight()](#digRight)
4. [mollusk.digBack()](#digBack)
5. [mollusk.digUp()](#digUp)
6. [mollusk.digDown()](#digDown)

#### execution.attack()
```
mollusk.execution.attack(direction, [count, pause, mode])
```
Attacks in the specified direction.
##### Parameters
1. direction : string One of "front", "left", "right", "back", "top", "bottom"
2. count=1 : number The number of attacks
3. pause=1 : number The time in seconds between attacks
4. mode="safety" : string The attack mode ("safety" or "strict")
##### Returns
1. boolean Whether the attack sequence completed successfully
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.attack()](#attack)
2. [mollusk.attackLeft()](#attackLeft)
3. [mollusk.attackRight()](#attackRight)
4. [mollusk.attackBack()](#attackBack)
5. [mollusk.attackUp()](#attackUp)
6. [mollusk.attackDown()](#attackDown)

#### execution.redstone()
```
mollusk.execution.redstone(direction, [value, duration])
```
Sets redstone signal strength on the specified side.
##### Parameters
1. direction : string One of "front", "left", "right", "back", "top", "bottom"
2. value=0 : number The signal strength (0-15)
3. duration=nil : number The time in seconds to keep the signal on (nil = indefinitely)
##### Returns
1. boolean Whether the operation completed successfully
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.setRedstoneFront()](#setRedstoneFront)
2. [mollusk.setRedstoneLeft()](#setRedstoneLeft)
3. [mollusk.setRedstoneRight()](#setRedstoneRight)
4. [mollusk.setRedstoneBack()](#setRedstoneBack)
5. [mollusk.setRedstoneTop()](#setRedstoneTop)
6. [mollusk.setRedstoneBottom()](#setRedstoneBottom)

#### execution.refuel()
```
mollusk.execution.refuel([argument])
```
Refuels the turtle using the specified slot or item. Does not depend on direction.
##### Parameters
1. argument : number | string The slot number or item ID (uses currently selected slot by default)
##### Returns
1. boolean Whether refueling was successful
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.refuel()](#refuel)

#### execution.transfer()
```
mollusk.execution.transfer(slot)
```
Transfers items from the currently selected slot to the target slot. Does not depend on direction.
##### Parameters
1. slot : number The target slot number (required)
##### Returns
1. boolean Whether the transfer was successful
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.transferTo()](#transferTo)

#### execution.select()
```
mollusk.execution.select(argument)
```
Selects a slot by number or item ID. Does not depend on direction.
##### Parameters
1. argument : number | string The slot number or item ID (required)
##### Returns
1. boolean Whether the selection was successful
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.select()](#select)

#### execution.suck()
```
mollusk.execution.suck(direction, [count])
```
Sucks items from the specified direction.
##### Parameters
1. direction : string One of "front", "left", "right", "back", "top", "bottom"
2. count=1 : number The number of items to suck (max 64 per operation)
##### Returns
1. boolean Whether at least one item was sucked
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.suck()](#suck)
2. [mollusk.suckLeft()](#suckLeft)
3. [mollusk.suckRight()](#suckRight)
4. [mollusk.suckBack()](#suckBack)
5. [mollusk.suckUp()](#suckUp)
6. [mollusk.suckDown()](#suckDown)

#### execution.drop()
```
mollusk.execution.drop(direction, [count])
```
Drops items from the selected slot in the specified direction.
##### Parameters
1. direction : string One of "front", "left", "right", "back", "top", "bottom"
2. count=1 : number The number of items to drop (max 64 per operation)
##### Returns
1. boolean Whether at least one item was dropped
2. string | nil The reason for failure or nil if successful
##### See also
1. [mollusk.drop()](#drop)
2. [mollusk.dropLeft()](#dropLeft)
3. [mollusk.dropRight()](#dropRight)
4. [mollusk.dropBack()](#dropBack)
5. [mollusk.dropUp()](#dropUp)
6. [mollusk.dropDown()](#dropDown)

### Execute function

The execute function family includes six functions, one for each direction.

#### execute()
```
mollusk.execute(distance, {...})
```
Moves the turtle forward `distance` steps, executing a sequence of actions after each step. The function optimizes execution by removing unnecessary turns and modifying actions for maximum efficiency. Each action is looked up in the private `executions` table. Returns to the starting position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. distance : number The number of steps to move
2. ... : string | table A sequence of actions to execute after each step. Actions can be specified as strings (using default parameters) or tables with additional arguments. See [available actions](#available-actions) for the full list.
##### Returns
1. boolean Whether the execution completed successfully
2. string | nil The reason for stopping or nil if successful
3. number The number of cycles (steps) actually completed

#### executeLeft()
```
mollusk.executeLeft(distance, {...})
```
Moves the turtle left `distance` steps, executing a sequence of actions after each step. The function optimizes execution by removing unnecessary turns and modifying actions for maximum efficiency. Each action is looked up in the private `executions` table. Returns to the starting position and direction afterwards. If the function fails before completing, the turtle will still attempt to return to its original position and direction.
##### Parameters
1. distance : number The number of steps to move
2. ... : string | table A sequence of actions to execute after each step. Actions can be specified as strings (using default parameters) or tables with additional arguments. See [available actions](#available-actions) for the full list.
##### Returns
1. boolean Whether the execution completed successfully
2. string | nil The reason for stopping or nil if successful
3. number The number of cycles (steps) actually completed

#### executeRight()
```
mollusk.executeRight(distance, {...})
```
Moves the turtle right `distance` steps, executing a sequence of actions after each step. The function optimizes execution by removing unnecessary turns and modifying actions for maximum efficiency. Each action is looked up in the private `executions` table. Returns to the starting position and direction afterwards. If the function fails before completing, the turtle will still attempt to return to its original position and direction.
##### Parameters
1. distance : number The number of steps to move
2. ... : string | table A sequence of actions to execute after each step. Actions can be specified as strings (using default parameters) or tables with additional arguments. See [available actions](#available-actions) for the full list.
##### Returns
1. boolean Whether the execution completed successfully
2. string | nil The reason for stopping or nil if successful
3. number The number of cycles (steps) actually completed

#### executeBack()
```
mollusk.executeBack(distance, {...})
```
Moves the turtle back `distance` steps, executing a sequence of actions after each step. The function optimizes execution by removing unnecessary turns and modifying actions for maximum efficiency. Each action is looked up in the private `executions` table. Returns to the starting position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. distance : number The number of steps to move
2. ... : string | table A sequence of actions to execute after each step. Actions can be specified as strings (using default parameters) or tables with additional arguments. See [available actions](#available-actions) for the full list.
##### Returns
1. boolean Whether the execution completed successfully
2. string | nil The reason for stopping or nil if successful
3. number The number of cycles (steps) actually completed

#### executeUp()
```
mollusk.executeUp(distance, {...})
```
Moves the turtle up `distance` steps, executing a sequence of actions after each step. The function optimizes execution by removing unnecessary turns and modifying actions for maximum efficiency. Each action is looked up in the private `executions` table. Returns to the starting position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. distance : number The number of steps to move
2. ... : string | table A sequence of actions to execute after each step. Actions can be specified as strings (using default parameters) or tables with additional arguments. See [available actions](#available-actions) for the full list.
##### Returns
1. boolean Whether the execution completed successfully
2. string | nil The reason for stopping or nil if successful
3. number The number of cycles (steps) actually completed

#### executeDown()
```
mollusk.executeDown(distance, {...})
```
Moves the turtle down `distance` steps, executing a sequence of actions after each step. The function optimizes execution by removing unnecessary turns and modifying actions for maximum efficiency. Each action is looked up in the private `executions` table. Returns to the starting position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. distance : number The number of steps to move
2. ... : string | table A sequence of actions to execute after each step. Actions can be specified as strings (using default parameters) or tables with additional arguments. See [available actions](#available-actions) for the full list.
##### Returns
1. boolean Whether the execution completed successfully
2. string | nil The reason for stopping or nil if successful
3. number The number of cycles (steps) actually completed

### Available actions

The execute function family accepts the following actions:

1. `"craft"` or `{"craft", count}` (count=64). See [execution.craft()](#execution.craft).
2. `"equipLeft"` or `{"equipLeft", slot | name | upgrade}` (uses currently selected slot by default). See [execution.equipLeft()](#execution.equipLeft).
3. `"equipRight"` or `{"equipRight", slot | name | upgrade}` (uses currently selected slot by default). See [execution.equipRight()](#execution.equipRight).
4. `"move"` or `{"move", direction, count}` (direction="front", count=1). See [execution.move()](#execution.move).
5. `"turn"` or `{"turn", direction, count}` (direction="front", count=1). See [execution.turn()](#execution.turn).
6. `"place"` or `{"place", direction, count, mode}` (direction="front", count=1, mode="safety"). See [execution.place()](#execution.place).
7. `"dig"` or `{"dig", direction, count, mode}` (direction="front", count=1, mode="safety"). See [execution.dig()](#execution.dig).
8. `"attack"` or `{"attack", direction, count, pause, mode}` (direction="front", count=1, pause=1, mode="safety"). See [execution.attack()](#execution.attack).
9. `"redstone"` or `{"redstone", direction, value, duration}` (direction="front", value=0, duration=nil). See [execution.redstone()](#execution.redstone).
10. `"refuel"` or `{"refuel", slot | name}` (uses currently selected slot by default). See [execution.refuel()](#execution.refuel).
11. `"transfer"` or `{"transfer", slot}` (argument is required). See [execution.transfer()](#execution.transfer).
12. `"select"` or `{"select", slot | name}` (argument is required). See [execution.select()](#execution.select).
13. `"suck"` or `{"suck", direction, count}` (direction="front", count=1). See [execution.suck()](#execution.suck).
14. `"drop"` or `{"drop", direction, count}` (direction="front", count=1). See [execution.drop()](#execution.drop).
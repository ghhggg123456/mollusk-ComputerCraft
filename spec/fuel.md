#### refuel()
```
mollusk.refuel([count [, slot]])
```
Refuels the turtle by `count` taken from the specified slot. If no slot is specified, uses the currently selected slot.
##### Parameters
1. count : number The amount of fuel to add (if omitted, refuels as much as possible)
2. slot : number The slot number to take fuel from (if omitted, uses current slot)
##### Returns
1. boolean Whether the refueling was successful
2. string | nil The reason for failure or nil if successful

#### getFuelCount()
```
mollusk.getFuelCount()
```
Returns the current fuel level and saves the last used fuel data to a global variable.
##### Returns
1. number The current fuel level

#### getFuelSpace()
```
mollusk.getFuelSpace()
```
Returns the remaining fuel capacity (maximum fuel minus current fuel level).
##### Returns
1. number The available fuel space

#### getFuelLimit()
```
mollusk.getFuelLimit()
```
Returns the maximum amount of fuel the turtle can hold.
##### Returns
1. number The fuel capacity limit

#### getFuelDetail()
```
mollusk.getFuelDetail()
```
Returns the table saved during the last `mollusk.refuel()` call.
##### Returns
1. table | nil The fuel data table from the last refuel operation or nil if `mollusk.refuel()` was not called

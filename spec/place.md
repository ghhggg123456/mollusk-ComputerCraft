#### placeLeft()
```
mollusk.placeLeft([distance [, mode]])
```
Places blocks to the left `distance` times, returning to the starting position and direction afterwards. If the function fails before completing, the turtle will still attempt to return to its original position and direction.
##### Parameters
1. distance=1 : number The number of blocks to place
2. mode="strict" : string The placement mode. "strict" means if a block already exists where the turtle should place, the function stops and attempts to return. "safety" means if a block already exists, the turtle ignores it, moves forward anyway (stopping when blocked), and continues placing in available spaces.
##### Returns
1. boolean Whether the placement completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually placed (equals `distance` if successful).

#### placeRight()
```
mollusk.placeRight([distance [, mode]])
```
Places blocks to the right `distance` times, returning to the starting position and direction afterwards. If the function fails before completing, the turtle will still attempt to return to its original position and direction.
##### Parameters
1. distance=1 : number The number of blocks to place
2. mode="strict" : string The placement mode. "strict" means if a block already exists where the turtle should place, the function stops and attempts to return. "safety" means if a block already exists, the turtle ignores it, moves forward anyway (stopping when blocked), and continues placing in available spaces.
##### Returns
1. boolean Whether the placement completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually placed (equals `distance` if successful).

#### placeBack()
```
mollusk.placeBack([distance [, mode]])
```
Places blocks behind the turtle `distance` times, returning to the starting position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. distance=1 : number The number of blocks to place
2. mode="strict" : string The placement mode. "strict" means if a block already exists where the turtle should place, the function stops and attempts to return. "safety" means if a block already exists, the turtle ignores it, moves forward anyway (stopping when blocked), and continues placing in available spaces.
##### Returns
1. boolean Whether the placement completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually placed (equals `distance` if successful).

#### placeUp()
```
mollusk.placeUp([distance [, mode]])
```
Places blocks above the turtle `distance` times, returning to the starting position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. distance=1 : number The number of blocks to place
2. mode="strict" : string The placement mode. "strict" means if a block already exists where the turtle should place, the function stops and attempts to return. "safety" means if a block already exists, the turtle ignores it, moves forward anyway (stopping when blocked), and continues placing in available spaces.
##### Returns
1. boolean Whether the placement completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually placed (equals `distance` if successful).

#### placeDown()
```
mollusk.placeDown([distance [, mode]])
```
Places blocks below the turtle `distance` times, returning to the starting position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. distance=1 : number The number of blocks to place
2. mode="strict" : string The placement mode. "strict" means if a block already exists where the turtle should place, the function stops and attempts to return. "safety" means if a block already exists, the turtle ignores it, moves forward anyway (stopping when blocked), and continues placing in available spaces.
##### Returns
1. boolean Whether the placement completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually placed (equals `distance` if successful).

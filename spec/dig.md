#### dig()
```
mollusk.dig([distance [, mode]])
```
Dig forward `distance` blocks, returning to the initial position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. distance=1 : number The number of blocks to dig
2. mode="safety" : string The mode of digging. Can be "safety" or "strict". Strict mode means that function will stopped if turtle did not dig, but moved (If turtle moves into the air in process of digging it stop function). Safety mode means that function will stop only if turtle did not move
##### Returns
1. boolean Whether the digging completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually dug (equals `distance` if successful).

#### digLeft()
```
mollusk.digLeft([distance [, mode]])
```
Dig left `distance` blocks, returning to the initial position and direction afterwards. If the function fails before completing, the turtle will still attempt to return to its original position and direction.
##### Parameters
1. distance=1 : number The number of blocks to dig
2. mode="safety" : string The mode of digging. Can be "safety" or "strict". Strict mode means that function will stopped if turtle did not dig, but moved (If turtle moves into the air in process of digging it stop function). Safety mode means that function will stop only if turtle did not move
##### Returns
1. boolean Whether the digging completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually dug (equals `distance` if successful).

#### digRight()
```
mollusk.digRight([distance [, mode]])
```
Dig right `distance` blocks, returning to the initial position and direction afterwards. If the function fails before completing, the turtle will still attempt to return to its original position and direction.
##### Parameters
1. distance=1 : number The number of blocks to dig
2. mode="safety" : string The mode of digging. Can be "safety" or "strict". Strict mode means that function will stopped if turtle did not dig, but moved (If turtle moves into the air in process of digging it stop function). Safety mode means that function will stop only if turtle did not move
##### Returns
1. boolean Whether the digging completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually dug (equals `distance` if successful).

#### digBack()
```
mollusk.digBack([distance [, mode]])
```
Dig back `distance` blocks, returning to the initial position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. distance=1 : number The number of blocks to dig
2. mode="safety" : string The mode of digging. Can be "safety" or "strict". Strict mode means that function will stopped if turtle did not dig, but moved (If turtle moves into the air in process of digging it stop function). Safety mode means that function will stop only if turtle did not move
##### Returns
1. boolean Whether the digging completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually dug (equals `distance` if successful).

#### digUp()
```
mollusk.digUp([distance [, mode]])
```
Dig blocks up `distance` blocks, returning to the initial position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. distance=1 : number The number of blocks to dig
2. mode="safety" : string The mode of digging. Can be "safety" or "strict". Strict mode means that function will stopped if turtle did not dig, but moved (If turtle moves into the air in process of digging it stop function). Safety mode means that function will stop only if turtle did not move
##### Returns
1. boolean Whether the digging completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually dug (equals `distance` if successful).

#### digDown()
```
mollusk.digDown([distance [, mode]])
```
Dig blocks down `distance` blocks, returning to the initial position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. distance=1 : number The number of blocks to dig
2. mode="safety" : string The mode of digging. Can be "safety" or "strict". Strict mode means that function will stopped if turtle did not dig, but moved (If turtle moves into the air in process of digging it stop function). Safety mode means that function will stop only if turtle did not move
##### Returns
1. boolean Whether the digging completed successfully.
2. string | nil The reason for stopping or nil if successful.
3. number The number of blocks actually dug (equals `distance` if successful).
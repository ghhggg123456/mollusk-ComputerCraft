
#### identify()
```
mollusk.identify()
```
Get id of the block in front of turtle (formatted `minecraft:stone`, `modid:mod_item`), if there is no block in direction (and all other exceptions) use `minecraft:air`.
##### Returns
1. string Id of block or `minecraft:air` 

#### identifyLeft()
```
mollusk.identifyLeft()
```
Get id of the block at the left of turtle (formatted `minecraft:stone`, `modid:mod_item`), if there is no block in direction (and all other exceptions) use `minecraft:air`. 
##### Returns
1. string Id of block or `minecraft:air`

#### identifyRight()
```
mollusk.identifyRight()
```
Get id of the block at the right of turtle (formatted `minecraft:stone`, `modid:mod_item`), if there is no block in direction (and all other exceptions) use `minecraft:air`. 
##### Returns
1. string Id of block or `minecraft:air`

#### identifyBack()
```
mollusk.identifyBack()
```
Get id of the block in back of turtle (formatted `minecraft:stone`, `modid:mod_item`), if there is no block in direction (and all other exceptions) use `minecraft:air`. 
##### Returns
1. string Id of block or `minecraft:air`

#### identifyUp()
```
mollusk.identifyUp( )
```
Get id of the block above of the turtle (formatted `minecraft:stone`, `modid:mod_item`), if there is no block in direction (and all other exceptions) use `minecraft:air`. 
##### Returns
1. string Id of block or `minecraft:air`

#### identifyDown()
```
mollusk.identifyDown()
```
Get id of the block below the turtle (formatted `minecraft:stone`, `modid:mod_item`), if there is no block in direction (and all other exceptions) use `minecraft:air`. 
##### Returns
1. string Id of block or `minecraft:air`

#### inspect()
```
mollusk.inspect()
```
Get the information about the block in front of the turtle
##### Returns
1. boolean Whether there is block that direction
2. table Block data or data of `minecraft:air`

#### inspectLeft()
```
mollusk.inspectLeft()
```
Get the information about the block at the left of the turtle
##### Returns
1. boolean Whether there is block that direction
2. table Block data or data of `minecraft:air`

#### inspectRight()
```
mollusk.inspectRight()
```
Get the information about the block at the right of the turtle
##### Returns
1. boolean Whether there is block that direction
2. table Block data or data of `minecraft:air`

#### inspectBack()
```
mollusk.inspectBack()
```
Get the information about the block in back of the turtle
##### Returns
1. boolean Whether there is block that direction
2. table Block data or data of `minecraft:air`

#### inspectUp()
```
mollusk.inspectUp()
```
Get the information about the block above of the turtle
##### Returns
1. boolean Whether there is block that direction
2. table Block data or data of `minecraft:air`

#### inspectDown()
```
mollusk.inspectDown()
```
Get the information about the block below the turtle
##### Returns
1. boolean Whether there is block that direction
2. table Block data or data of `minecraft:air`

#### detect()
```
mollusk.detect()
```
Check if there is a solid block in front of the turtle. In this case, solid refers to any non-air or liquid block.
##### Returns
1. boolean Whether block is solid

#### detectLeft()
```
mollusk.detectLeft()
```
Check if there is a solid block at the left of the turtle. In this case, solid refers to any non-air or liquid block.
##### Returns
1. boolean Whether block is solid

#### detectRight()
```
mollusk.detectRight()
```
Check if there is a solid block at the right of the turtle. In this case, solid refers to any non-air or liquid block.
##### Returns
1. boolean Whether block is solid

#### detectBack()
```
mollusk.detectBack()
```
Check if there is a solid block in back of the turtle. In this case, solid refers to any non-air or liquid block.
##### Returns
1. boolean Whether block is solid

#### detectUp()
```
mollusk.detectUp()
```
Check if there is a solid block above the turtle. In this case, solid refers to any non-air or liquid block.
##### Returns
1. boolean Whether block is solid

#### detectDown()
```
mollusk.detectDown()
```
Check if there is a solid block below the turtle. In this case, solid refers to any non-air or liquid block.
##### Returns
1. boolean Whether block is solid

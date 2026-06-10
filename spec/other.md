#### craft()
```
mollusk.craft([count])
```
Crafts items `count` times using the standard `turtle.craft()` function.
##### Parameters
1. count=64 : number The number of times to craft
##### Returns
1. boolean Whether the crafting completed successfully
2. string | nil The reason for stopping or nil if successful
3. number The number of times actually crafted (equals `count` if successful)

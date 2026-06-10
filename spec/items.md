#### getItemCount()
```
mollusk.getItemCount([argument])
```
Returns the number of items in the specified slot or matching the item ID. If no argument is provided, returns the total number of items in the selected slot.
##### Parameters
1. argument : number | string The slot number or item ID (e.g., "minecraft:stone")
##### Returns
1. number | nil The number of items found, nil if slot is empty

#### getItemSpace()
```
mollusk.getItemSpace([argument])
```
Returns the remaining space for items in the specified slot or matching the item ID. If no argument is provided, returns the remaining space in the selected slot.
##### Parameters
1. argument : number | string The slot number or item ID
##### Returns
1. number | nil The available space (stack size limit minus current count), nil if slot is empty

#### getItemLimit()
```
mollusk.getItemLimit([argument])
```
Returns the maximum stack size for the specified slot or item ID. If no argument is provided, returns the stack limit of the item in the selected slot.
##### Parameters
1. argument : number | string The slot number or item ID
##### Returns
1. number | nil The maximum stack size for that item, nil if slot is empty

#### getItemDetail()
```
mollusk.getItemDetail([argument])
```
Returns detailed information about the item in the specified slot or matching the item ID. If no argument is provided, returns details for the selected slot. Returns nil if the slot is empty or no matching items found.
##### Parameters
1. argument : number | string The slot number or item ID
##### Returns
1. table | nil Item data table if found, nil otherwise
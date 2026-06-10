#### select()
```
mollusk.select(argument)
```
Selects the slot with the specified slot number or containing the specified item ID.
##### Parameters
1. argument : number | string The slot number or item ID to select
##### Returns
1. boolean Whether the selection was successful
2. string | nil The reason for failure or nil if successful

#### transferTo()
```
mollusk.transferTo(target)
```
Transfers items from the currently selected slot to the target slot.
##### Parameters
1. target : number The slot number to transfer items to
##### Returns
1. boolean Whether the transfer was successful
2. string | nil The reason for failure or nil if successful

#### compareTo()
```
mollusk.compareTo(argument)
```
Compares the item in the currently selected slot with the specified slot number or item ID.
##### Parameters
1. argument : number | string The slot number to compare with, or item ID to compare against
##### Returns
1. boolean Whether the items match
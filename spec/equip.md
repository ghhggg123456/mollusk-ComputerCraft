#### equip()
```
mollusk.equip([argument])
```
Equips an item or upgrade into the selected tool slot. If no free tool slot is available, returns false with an error. Can accept a slot number, item ID, or upgrade name.
##### Parameters
1. argument : number | string The slot number, item ID (e.g., "minecraft:diamond_pickaxe"), or upgrade name ("pickaxe", "axe", "sword", "shovel", "hoe", "craftingTable", "speaker", "wirelessModem", "enderModem")
##### Returns
1. boolean Whether the equipment was successful
2. string | nil The reason for failure or nil if successful

#### equipLeft()
```
mollusk.equipLeft([argument])
```
Replaces the item in the left tool slot with the specified item or upgrade. Can accept a slot number, item ID, or upgrade name.
##### Parameters
1. argument : number | string The slot number, item ID, or upgrade name ("pickaxe", "axe", "sword", "shovel", "hoe", "craftingTable", "speaker", "wirelessModem", "enderModem")
##### Returns
1. boolean Whether the equipment was successful
2. string | nil The reason for failure or nil if successful

#### equipRight()
```
mollusk.equipRight([argument])
```
Replaces the item in the right tool slot with the specified item or upgrade. Can accept a slot number, item ID, or upgrade name.
##### Parameters
1. argument : number | string The slot number, item ID, or upgrade name ("pickaxe", "axe", "sword", "shovel", "hoe", "craftingTable", "speaker", "wirelessModem", "enderModem")
##### Returns
1. boolean Whether the equipment was successful
2. string | nil The reason for failure or nil if successful

#### getEquippedLeft()
```
mollusk.getEquippedLeft()
```
Gets information about the item in the left tool slot.
##### Returns
1. table | nil Item data table if equipped, nil if the slot is empty

#### getEquippedRight()
```
mollusk.getEquippedRight()
```
Gets information about the item in the right tool slot.
##### Returns
1. table | nil Item data table if equipped, nil if the slot is empty

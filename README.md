# qb-itemstorage. Items with Storage!
This resource says what it does on the box, Items with their own storage.

If you want a backpack that you can store items in, this can do it.

If you want a pizza box to put pizza into, this can do it.

If you want a cigarette box with cigarettes already in the pouch, this can do it.

If you want me to give you $100, you are in the wrong place.

# License

    QBCore Framework
    Copyright (C) 2022 Helenclarko

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-inventory](https://github.com/qbcore-framework/qb-inventory) - Also works on other mixes like aj-inventory

## Features
- Add items with storage
- Can set slots an weight
- Can set default items for the storage item

## Installation
### Manual
- Download the script, rename it to `qb-itemstorage` and put it in the `[qb]` directory.
- set config options to create your item
- add item to shared items.lua file
- Start the server

## Shared items.lua
Be sure to use the following as a template in your shared items.lua file under the qb-core folder.
You will need to create each item in your shared items.lua file before it can be used in the config.

```lua
['cigarettebox'] 				 = {['name'] = 'cigarettebox', 			  	  	['label'] = 'Cigarette Box', 			['weight'] = 13, 		['type'] = 'item', 		['image'] = '69-brand-pack.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A cigarette box for holding cigarettes'},
```

## tnj-inventory setup
If you are using tnj-inventory, you need to add a decay and created value in your qb-core/shared/items for all items, the decay is set to be the days the item lasts
```lua
["created"] = nil
["decay"] = 28.0 -- for 28 days
```

You will also need to add the following into the itemstorage config.lua file for each item you are adding by default. 
This line can go in under "useable = true" for each item.
```lua
info = {quality = 100}
```

## Credits
Many thanks to FjamZoo#0001 who helped to point me towards scripts which helped with creating this.

You can view more of my creations on our Roleplay server "Loop City RP", join our city by visiting our discord: https://discord.gg/RjmCnhDV

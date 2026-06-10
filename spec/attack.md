#### attack()
```
mollusk.attack([repeat [, mode [, pause]]])
```
Attacks forward `repeat` times, returning to the starting position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. repeat=1 : number The number of attacks to perform
2. mode="safety" : string The attack mode. "safety" means the turtle will always perform exactly `repeat` attacks (attacking if possible, or swinging at air if nothing is there). "strict" means the function stops and returns if an attack fails (nothing to attack).
3. pause=1 : number The time in seconds between attacks
##### Returns
1. boolean Whether the attack sequence completed successfully (always true in safety mode)
2. string | nil The reason for stopping or nil if successful
3. number The number of attacks actually performed (equals `repeat` if successful in safety mode)

#### attackLeft()
```
mollusk.attackLeft([repeat [, mode [, pause]]])
```
Attacks to the left `repeat` times, returning to the starting position and direction afterwards. If the function fails before completing, the turtle will still attempt to return to its original position and direction.
##### Parameters
1. repeat=1 : number The number of attacks to perform
2. mode="safety" : string The attack mode. "safety" means the turtle will always perform exactly `repeat` attacks (attacking if possible, or swinging at air if nothing is there). "strict" means the function stops and returns if an attack fails (nothing to attack).
3. pause=1 : number The time in seconds between attacks
##### Returns
1. boolean Whether the attack sequence completed successfully (always true in safety mode)
2. string | nil The reason for stopping or nil if successful
3. number The number of attacks actually performed (equals `repeat` if successful in safety mode)

#### attackRight()
```
mollusk.attackRight([repeat [, mode [, pause]]])
```
Attacks to the right `repeat` times, returning to the starting position and direction afterwards. If the function fails before completing, the turtle will still attempt to return to its original position and direction.
##### Parameters
1. repeat=1 : number The number of attacks to perform
2. mode="safety" : string The attack mode. "safety" means the turtle will always perform exactly `repeat` attacks (attacking if possible, or swinging at air if nothing is there). "strict" means the function stops and returns if an attack fails (nothing to attack).
3. pause=1 : number The time in seconds between attacks
##### Returns
1. boolean Whether the attack sequence completed successfully (always true in safety mode)
2. string | nil The reason for stopping or nil if successful
3. number The number of attacks actually performed (equals `repeat` if successful in safety mode)

#### attackBack()
```
mollusk.attackBack([repeat [, mode [, pause]]])
```
Attacks behind the turtle `repeat` times, returning to the starting position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. repeat=1 : number The number of attacks to perform
2. mode="safety" : string The attack mode. "safety" means the turtle will always perform exactly `repeat` attacks (attacking if possible, or swinging at air if nothing is there). "strict" means the function stops and returns if an attack fails (nothing to attack).
3. pause=1 : number The time in seconds between attacks
##### Returns
1. boolean Whether the attack sequence completed successfully (always true in safety mode)
2. string | nil The reason for stopping or nil if successful
3. number The number of attacks actually performed (equals `repeat` if successful in safety mode)

#### attackUp()
```
mollusk.attackUp([repeat [, mode [, pause]]])
```
Attacks above the turtle `repeat` times, returning to the starting position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. repeat=1 : number The number of attacks to perform
2. mode="safety" : string The attack mode. "safety" means the turtle will always perform exactly `repeat` attacks (attacking if possible, or swinging at air if nothing is there). "strict" means the function stops and returns if an attack fails (nothing to attack).
3. pause=1 : number The time in seconds between attacks
##### Returns
1. boolean Whether the attack sequence completed successfully (always true in safety mode)
2. string | nil The reason for stopping or nil if successful
3. number The number of attacks actually performed (equals `repeat` if successful in safety mode)

#### attackDown()
```
mollusk.attackDown([repeat [, mode [, pause]]])
```
Attacks below the turtle `repeat` times, returning to the starting position afterwards. If the function fails before completing, the turtle will still attempt to return to its original position.
##### Parameters
1. repeat=1 : number The number of attacks to perform
2. mode="safety" : string The attack mode. "safety" means the turtle will always perform exactly `repeat` attacks (attacking if possible, or swinging at air if nothing is there). "strict" means the function stops and returns if an attack fails (nothing to attack).
3. pause=1 : number The time in seconds between attacks
##### Returns
1. boolean Whether the attack sequence completed successfully (always true in safety mode)
2. string | nil The reason for stopping or nil if successful
3. number The number of attacks actually performed (equals `repeat` if successful in safety mode)

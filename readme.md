# Battleship Challenge

## Objectives

Build an interactive command-line game of Battleship! The full rules are on wikipedia, but here's an abridged version from Samuel Bednar:

- Each player has two 10x10 boards with columns labeled 1-10 and rows labeled A-J, one labeled "Your Ships" to represent their own ships and one to represent their opponent's board, labeled "Enemy Ships"
- Each player arranges their ships on their own board (see fleet table)
- Take turns firing a salvo at your opponent, calling out squares as "A3", "B6", etc. Salvo = number of your ships you have left (use counter) / 1 shot.
- Mark salvos fired on the "Enemy Ships" grid (/ marks a miss, i.e. water; X marks a hit). You must call out when your ship is sunk completely.

# Fleet table

<pre>
| #  | Ship             | Size |
| -- | ---------------- | ---- |
| 1x | Aircraft carrier | 5    |
| 1x | Battleship       | 4    |
| 1x | Cruiser          | 3    |
| 2x | Destroyer        | 2    |
| 2x | Submarine        | 1    |
</pre>

## Objectives

### Setting up the environment

- User plays against the computer
- When starting a new game, each player should have two empty boards: 'HOME' and 'ENEMY'.
- User should be able to determine the position of ships on their 'HOME' board OR the computer should seed the board with the ships pre-positioned.
- Start with a fleet of just 5 ships, one of each type

### Determining gameplay

- The game starts with user firing a salvo (a series of shots) at their opponent's (the computer's) ships.
- The number of shots in a salvo is equal to the number of unsunk ships in a player's fleet.
- After a salvo is fired, the user is notified of hits and misses on their 'ENEMY' board.

### Winning the game

- The user should be notified when they have sunk one of their opponent's ships.
- When the user has sunk all of their opponent's ships, they win the game.

### Refactoring

Refactor your code. Some questions to ask yourself:

- Is it DRY?
- Are the methods and variables appropriately named?
- Does it utilize appropriate data structures?
- Is there proper commenting?
- Is it concise and comprehensible?

### Optional features

- Fleet has 7 ships, 2x submarines and destroyers
- User can play against another user
- Computer can play against itself
- Computer is somewhat intelligent (i.e. it knows to cluster shots near a hit until a ship is sunk)

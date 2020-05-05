# E2TISC - E2 TARDIS Interior Size Changer
 Simple Addon for Changing TARDIS Interior Size Using `Expression 2`

# E2 Functions:

```javascript
entity entity:tardisGetInterior()
```
 If used on `TARDIS Interior/Exterior`, returns `TARDIS Interior Entity`, else `NULL`.

```javascript
number entity:tardisGetInteriorSize()
```
 If used on `TARDIS Interior/Exterior`, returns TARDIS Interior `size`, else `-1`.

```javascript
number entity:tardisSetInteriorSize( number size )
```
 If used on `TARDIS Interior/Exterior`, sets TARDIS Interior `size` and returns `1`, else `0`.

# Lua Functions:

```lua
TARDIS_Exterior:SetInteriorSize( number size )
TARDIS_Interior:SetInteriorSize( number size )
```
 Sets TARDIS interior size to `size` if `size > 0`, else sets to default value (`700`). Can be used on both, `TARDIS Exterior` and `TARDIS Interior`.

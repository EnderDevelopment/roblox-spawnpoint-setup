# Roblox SpawnLocation Script

Spawnpoint Setup is a Roblox script that creates and configures a reliable default spawn pad in a Roblox place. This Roblox script uses a server-side SpawnLocation, keeps it anchored and enabled, and updates an existing spawn instead of creating duplicates.

## Install

1. Open your place in Roblox Studio.
2. In Explorer, create or select `ServerScriptService`.
3. Add a server `Script` inside `ServerScriptService`.
4. Copy the contents of `ServerScriptService/SpawnLocation.server.lua` into the script.
5. Save the place and start a play test.

The script creates `Workspace.DefaultSpawn` automatically when the place runs.

## Use

1. Start a server play test in Roblox Studio.
2. The script checks `Workspace` for an object named `DefaultSpawn`.
3. If the object is missing, the script creates a `SpawnLocation`.
4. If an object with that name exists but is not a `SpawnLocation`, the script removes it and creates the correct object.
5. If the spawn already exists, the script updates its settings without creating a duplicate.

The default spawn is configured as follows:

- Position: `(0, 3, 0)`
- Size: `6, 1, 6`
- Anchored: enabled
- Can collide: enabled
- Neutral: enabled
- Enabled: enabled
- Team change on touch: disabled
- Spawn duration: `0`
- Material: Neon
- Color: Bright green
- Transparency: `0`

To customize the spawn, edit these constants near the top of `SpawnLocation.server.lua`:

- `SPAWN_POSITION` changes the center position.
- `SPAWN_SIZE` changes the dimensions.
- `SPAWN_NAME` changes the object name.

---

More Roblox script projects by EnderDevelopment: https://github.com/EnderDevelopment

Project page: https://dash.enderdevelopment.com/community/33457486-97f8-4668-82cb-b0fd3d80dc1c?utm_source=github&utm_medium=readme&utm_campaign=auto_publish&utm_content=33457486-97f8-4668-82cb-b0fd3d80dc1c

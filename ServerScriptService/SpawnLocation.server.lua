local Workspace = game:GetService("Workspace")

local SPAWN_NAME = "DefaultSpawn"
local SPAWN_POSITION = Vector3.new(0, 3, 0)
local SPAWN_SIZE = Vector3.new(6, 1, 6)

local spawnLocation = Workspace:FindFirstChild(SPAWN_NAME)

if spawnLocation and not spawnLocation:IsA("SpawnLocation") then
	spawnLocation:Destroy()
	spawnLocation = nil
end

if not spawnLocation then
	spawnLocation = Instance.new("SpawnLocation")
	spawnLocation.Name = SPAWN_NAME
	spawnLocation.Parent = Workspace
end

spawnLocation.Anchored = true
spawnLocation.CanCollide = true
spawnLocation.Neutral = true
spawnLocation.Enabled = true
spawnLocation.AllowTeamChangeOnTouch = false
spawnLocation.Duration = 0
spawnLocation.Size = SPAWN_SIZE
spawnLocation.Position = SPAWN_POSITION
spawnLocation.Material = Enum.Material.Neon
spawnLocation.BrickColor = BrickColor.new("Bright green")
spawnLocation.Transparency = 0

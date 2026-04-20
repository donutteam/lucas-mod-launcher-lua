---@meta

error("Meta files should not be executed.")

---Gets the player's active level and story mission.
---
---@return integer | nil active_level The player's active level or nil if unavailable.
---@return integer | nil active_story_mission The player's active story mission or nil if unavailable.
function GetActiveLevelMission() end

---Gets the amount of coins the player currently has.
---
---@param level integer | nil The level to get the coin count for. Optional, defaults to 1.
---@return integer | nil coins The amount of coins the player currently has in the specified level or nil if unavailable.
function GetCoins(level) end

---Gets what car the player is currently using.
---
---@return string | nil car_name The name of the car the player is currently using or nil if the player does not have a car or is not in game.
function GetCurrentCar() end

---Gets what level of the game the player is currently in.
---
---@return integer | nil level_number The current level or nil if the player is not in game.
function GetCurrentLevel() end

---Gets what mission the player is currently in.
---
---@return string | nil mission_name The internal name of the mission the player is currently in or nil if the player is not in game.
---@return integer | nil mission_index The index of the mission the player is currently in or nil if the player is not in game.
function GetCurrentMission() end

---Gets what skin the player is currently using.
---
---@return string | nil skin_name The name of the skin the player is currently using or nil if the player is not in game.
function GetCurrentSkin() end

---Gets the highest level and story mission the player has reached.
---
---@return integer | nil highest_level The highest level the player has reached or nil if unavailable.
---@return integer | nil highest_story_mission The highest story mission the player has reached or nil if unavailable.
function GetHighestLevelMission() end

---Gets how many levels the game has.
---
---@return integer level_count How many levels the game has.
function GetLevelCount() end

---Gets the number of for sale cars that the player has purchased in the given level.
---
---@param Level integer The level to check.
---@return integer | nil num_cars_purchased The number of cars the player has purchased or nil if unavailable.
function GetLevelNumCarsPurchased(Level) end


---Gets the number of gags that the player has completed in the given level.
---
---@param Level integer The level to check.
---@return integer | nil num_gags_completed The number of gags the player has completed or nil if unavailable.
function GetLevelNumGagsCompleted(Level) end

---Gets the number of for skins that the player has purchased in the given level.
---
---@param Level integer The level to check.
---@return integer | nil num_skins_purchased The number of skins the player has purchased or nil if unavailable.
function GetLevelNumSkinsPurchased(Level) end

---Gets the number of wasps that the player has destroyed in the given level.
---
---@param Level integer The level to check.
---@return integer | nil num_wasps_destroyed The number of wasps the player has destroyed or nil if unavailable.
function GetLevelNumWaspsDestroyed(Level) end

---Checks if the given cheat flags are enabled.
---
---@param cheat_flags integer The cheat(s) to check. Constants for all valid cheats are in the Cheat table.
---@return boolean cheat_enabled If the cheat(s) are enabled.
function IsCheatEnabled(cheat_flags) end

---Checks if the given bonus mission is completed.
---
---@param level integer The level to check.
---@return boolean completed If the player has completed the level's bonus mission or nil if unavailable.
function IsLevelBonusMissionCompleted(level) end

---Checks if the given card has been collected in a level.
---
---@param level integer The level to check.
---@param card integer The card to check.
---@return boolean collected If the player has collected the card or nil if unavailable.
function IsLevelCardCollected(level, card) end

---Checks if the FMV for the given level has been unlocked.
---
---@param level integer The level to check.
---@return boolean | nil unlocked Whether the given level's FMV has been unlocked or nil if unavailable.
function IsLevelFMVUnlocked(level) end

---Checks if the given gag in a level has been completed.
---
---@param level integer The level to check.
---@param gag integer The gag to check.
---@return boolean | nil completed If the player has completed the gag or nil if unavailable.
function IsLevelGagCompleted(level, gag) end

---Checks if the given story mission is completed.
---
---@param level integer THe level to check.
---@param mission integer The mission to check.
---@return boolean | nil completed If the player has completed the mission or nil if unavailable.
function IsLevelMissionCompleted(level, mission) end

---Checks if the given street race is completed.
---
---@param level integer The level to check.
---@param street_race integer The mission to check.
---@return boolean completed If the player has completed the street race or nil if unavailable.
function IsLevelStreetRaceCompleted(level, street_race) end

---Checks if the given wager race is completed.
---
---@param level integer The level to check.
---@return boolean | nil completed If the player has completed the level's wager race or nil if unavailable.
function IsLevelWagerRaceCompleted(level) end

---Checks if the given persistent object in a sector has been destroyed.
---
---Persistent objects include various props, such as cola crates and cola machines, as well as coins and wasp cameras.
---
---@param sector integer The sector to check. All valid sectors are provided in the PersistentObjectSector table.
---@param persistent_object integer The persistent object to check. Between 1 and 128.
---@return boolean | nil destroyed If the player has completed the gag or nil if unavailable.
function IsPersistentObjectDestroyed(sector, persistent_object) end

---Checks if a reward of the given type and name is unlocked.
---
---@param type integer The type of reward to check. Constants for all valid types are provided in the RewardType table.
---@param name string The name of the reward.
---@return boolean unlocked Whether the reward is unlocked.
function IsRewardUnlocked(type, name) end

---Gets the current value for a string from the game's text bible.
---
---@param string_name string The name of a string.
---@return string | nil value The current value of the string or nil if it cannot be found.
function LookupString(string_name) end
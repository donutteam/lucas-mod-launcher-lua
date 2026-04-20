---@meta

error("Meta files should not be executed.")

---Returns the current version of the Mod Launcher as a string.
---
---@return string launcher_version The launcher version.
function GetLauncherVersion() end

---Returns a table that is shared by all mods.
---
---@return table shared_table A table shared by all mods.
function GetShared() end

---Returns the amount of seconds the game has been running for.
---
---@return number time The amount of seconds the game has been running for.
function GetTime() end

---Returns whether the -testing command line argument for the Mod Launcher is in use.
---
---Useful for enabling debug features.
---
---@return boolean testing_enabled Whether testing mode is enabled.
function IsTesting() end

---Pauses the console and prompts the user to "Press any key to continue...".
---
---Useful for debugging purposes.
function Pause() end

---Checks if text matches the given wildcard string.
---
---@param text string The text to compare against the wildcard.
---@param wildcard string The wildcard string to compare against. Use * to match zero or more of any character. Use ? to match one of any character.
---@param case_insensitive boolean Whether or not the comparison is case insensitive.
---@param slash_insensitive boolean Whether or not the comparison is slash insensitive.
---@return boolean matched Whether the text matched the wildcard.
function WildcardMatch(text, wildcard, case_insensitive, slash_insensitive) end
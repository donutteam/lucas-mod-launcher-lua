---@meta

error("Meta files should not be executed.")

---Calls the given callback function for each mod that is enabled.
---
---You can return `false` from the callback to stop the iteration early.
---
---@param callback fun(ModInternalName: string): boolean
---@return boolean returned_true Whether the callback returned true every time.
function GetEnabledMods(callback) end

---Returns the InternalName of the current main mod.
---
---@return string | nil mod_name The name of the current main mod or nil if there is no main mod enabled.
function GetMainMod() end

---Returns the InternalName of the current mod.
---
---@return string mod_name The InternalName of the current mod.
function GetModName() end

---Returns the path to a mod within the Virtual File System.
---
---This function always returns a path regardless of whether or not the specified mod name is valid or enabled.
---
---@param mod_name string | nil The InternalName of a mod whose path you want to get.
---@return string mod_path The path to the mod.
function GetModPath(mod_name) end

---Returns the title of the specified mod or the current mod if none is specified.
---
---This returns nil if called with the name of a mod that is not enabled.
---
---@param mod_name string | nil he name of the mod whose title you'd like to get. Optional, defaults to the mod that called the function.
---@return string | nil title The title of the mod or nil if it is not loaded.
function GetModTitle(mod_name) end

---Returns the version of the specified mod.
---
---@param mod_name string | nil The name of the mod whose version you'd like to get. Optional, defaults to the mod that called the function.
---@return string | nil version The version of the mod or nil if it does not have a version or is not loaded.
function GetModVersion(mod_name) end

---Returns the value of a setting in a mod.
---
---For MultipleChoice settings, the value returned is 0 based.
---
---@param setting_name string The name of the setting to get the value of.
---@param mod_name string | nil The mod you want to get the setting from from. Optional, defaults to the mod that called the function.
---@return boolean | integer | number | string | nil The value of the setting. Returns nil if the setting does not exist or no such mod is loaded.
function GetSetting(setting_name, mod_name) end

---Returns the values of all of the settings of the a mod as a table.
---
---For MultipleChoice settings, the value returned is 1 based.
---
---@param mod_name string | nil The mod you want to get setting values from. Optional, defaults to the mod that called the function.
---@return table<string, boolean | integer | number | string> | nil settings A key/value table of all the setting values for the given mod or nil if the mod is not loaded.
function GetSettings(mod_name) end

---Checks whether a hack is loaded.
---
---@param hack_name string The InternalName of the hack.
---@return boolean loaded Whether the hack is loaded.
function IsHackLoaded(hack_name) end

---Checks whether or not a mod, mod hack or framework is enabled.
---
---@param mod_name string The name of the mod to check for. This should be the mod's InternalName (if it has one, which it should).
---@return boolean enabled Whether the mod, mod hack or framework is enabled.
function IsModEnabled(mod_name) end
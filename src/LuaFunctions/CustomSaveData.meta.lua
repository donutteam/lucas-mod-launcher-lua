---@meta

error("Meta files should not be executed.")

---Gets a custom save data cvalue for a mod.
---
---@param value_name string The name of the value.
---@param mod_name string | nil The name of the mod to get the value from. Optional, defaults to the current mod.
---@return boolean | integer | number | string | nil value The value or nil if it does not exist.
function GetCustomSaveDataValue(value_name, mod_name) end

---Gets all custom save data values for a mod.
---
---@param mod_name string | nil The name of the mod to get the value from. Optional, defaults to the current mod.
---@return table<string, boolean | integer | number | string> | nil values A key/value table of all the values for the given mod or nil if the mod has no data in the save file.
function GetCustomSaveDataValues(mod_name) end

---Gets a table of mods that have custom save data in the current save file.
---
---@return string[] mod_names A table of mods that have custom save data in the current save file.
function GetModsWithCustomSaveData() end

---Sets a custom save data value for a mod.
---
---@param value_name string The name of the value.
---@param value boolean | integer | number | string | nil The value. Setting a value to nil will delete it from the save file. Other types, such as tables, will throw an error.
function SetCustomSaveDataValue(value_name, value) end
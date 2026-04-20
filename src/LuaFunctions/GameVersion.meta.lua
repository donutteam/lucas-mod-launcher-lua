---@meta

error("Meta files should not be executed.")

---Returns the current language of the game.
---
---@return "E" | "F" | "G" | "S" language A letter indicating which language is in use.
function GetGameLanguage() end

---Checks if the user is playing the demo version of the game.
---
---@return boolean is_demo Whether the user is playing the demo version of the game.
function IsDemo() end
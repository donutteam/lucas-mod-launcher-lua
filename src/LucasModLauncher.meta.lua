---@meta

---Shows a message box for debugging purposes with an "OK" button.
---
---@param message string
function Alert(message) end

---Compares two paths and returns whether they are equal.
---
---@param path1 string
---@param path2 string
---@param isCaseInsensitive boolean | nil
---@param isSlashInsensitive boolean | nil
---@return boolean
function ComparePaths(path1, path2, isCaseInsensitive, isSlashInsensitive) end

---Shows a message box for debugging purposes with an "OK" button and a "Cancel" button.
---
---@param message string
---@return boolean
function Confirm(message) end

---Iterates a directory, calling the provided callback for each entry.
---
---You can return `false` from the callback to stop the iteration early.
---
---Note: The order of the entries is not guaranteed.
---
---@param path string
---@param callback fun(fileOrDirectory : string, isDirectory : boolean) : boolean
---@param useReverseOrder boolean | nil
function DirectoryGetEntries(path, callback, useReverseOrder) end

-- TODO: DirectoryRecursiveCreate

---Returns whether the specified path exists.
---
---@param path string
---@param isFile boolean
---@param isDirectory boolean
---@return boolean
function Exists(path, isFile, isDirectory) end

---Returns a version of the given path with modified slashes.
---
---@param path string
---@param toWindows boolean | nil
---@param fromWindows boolean | nil
---@return string
function FixSlashes(path, toWindows, fromWindows) end

---Calls the given callback function for each mod that is enabled.
---
---You can return `false` from the callback to stop the iteration early.
---
---@param callback fun(modInternalName : string) : boolean
function GetEnabledMods(callback) end

---Returns the file extension of the specified path.
---
---@param path string
---@return string
function GetFileExtension(path) end

---Returns the file name of the specified path including the extension.
---
---@param path string
---@return string
function GetFileName(path) end

---This function returns the current language of the game.
---
---@return "E" | "F" | "G" |"S"
function GetGameLanguage() end

---Returns the current version of the Mod Launcher as a string.
---
---@return string
function GetLauncherVersion() end

---Returns the InternalName of the current main mod or nil if there is no main mod.
---
---@return string | nil
function GetMainMod() end

---Returns the InternalName of the current mod.
---
---@return string
function GetModName() end

---Returns the path to a mod within the Virtual File System.
---
---@param modInternalName string | nil
---@return string
function GetModPath(modInternalName) end

---Returns the title of the specified mod or the current mod if none is specified.
---
---This returns nil if called with the name of a mod that is not enabled.
---
---@param modInternalName string | nil
---@return string | nil
function GetModTitle(modInternalName) end

---Returns the version of the specified mod or the current mod if none is specified.
---
---@param modInternalName string | nil
---@return string | nil
function GetModVersion(modInternalName) end

---Returns the path of the file being requested.
---
---This should only be called in a Path Handler script.
---
---@return string
function GetPath() end

---Returns the parent path of the specified file path.
---
---This will return the file name if it is only given a file name.
---
---@param path string
---@param windows boolean | nil
function GetPathParent(path, windows) end

---Returns the value of a setting in the specified mod or the current mod if none is specified.
---
---For MultipleChoice settings, the value returned is 0 based.
---
---@param settingName string
---@param modInternalName string | nil
---@return boolean | integer | number | string | nil
function GetSetting(settingName, modInternalName) end

---Returns a table of all setting values in the specified mod or the current mod if none is specified.
---
---For MultipleChoice settings, the value returned is 1 based.
---
---@param modInternalName string | nil
---@return table<string, boolean | integer | number | string> | nil
function GetSettings(modInternalName) end

---Returns a table that is shared by all mods.
---
---@return table
function GetShared() end

---Returns the amount of seconds the game has been running for.
---
---@return number
function GetTime() end

---Returns true if the user is playing the Demo version of the game.
---
---@return boolean
function IsDemo() end

---Returns whether a hack is loaded.
---
---@param hackInternalName string
---@return boolean
function IsHackLoaded(hackInternalName) end

---Detects whether the -legacyoutput command line argument for the Mod Launcher is in use.
---
---@return boolean
function IsLegacyOutput() end

---Returns whether a mod, mod hack or framework is enabled.
---
---@param modInternalName string
---@return boolean
function IsModEnabled(modInternalName) end

---Returns whether the -testing command line argument for the Mod Launcher is in use.
---
---Useful for enabling debug features.
---
---@return boolean
function IsTesting() end

---Returns whether the path being requested is being requested to write to.
---
---This should only be called in a Path Handler script.
---
---@return boolean
function IsWriting() end

---Outputs text or binary data to a virtual file in memory which is then handed off to the game in place of the file it requested.
---
---This should only be called in a Path Handler script.
---
---@param StringToOutput string
function Output(StringToOutput) end

---Pauses the console and prompts the user to "Press any key to continue...".
---
---Useful for debugging purposes.
function Pause() end

---Reads the file at the given path within the Virtual File System.
---
---@param filePath string
---@return string
function ReadFile(filePath) end

---Reads part of a file at the given path.
---
---@param filePath string
---@param offset integer
---@param length integer
---@return string
function ReadFileOffset(filePath, offset, length) end

---Redirect the file being requested to a different path within the Virtual File System.
---
---This should only be called in a Path Handler script.
---
---@param filePath string
function Redirect(filePath) end

---Returns the given file path or file name without the file extension.
---
---@param filePath string
---@return string
function RemoveFileExtension(filePath) end

-- TODO: UseCallbacks

-- TODO: WildcardMatch
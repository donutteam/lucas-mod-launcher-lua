---@meta

error("Meta files should not be executed.")

---Shows a message box for debugging purposes with an "OK" button.
---
---@param Message string
function Alert(Message) end

---Compares two paths and returns whether they are equal.
---
---@param Path1 string
---@param Path2 string
---@param IsCaseInsensitive boolean | nil
---@param IsSlashInsensitive boolean | nil
---@return boolean
function ComparePaths(Path1, Path2, IsCaseInsensitive, IsSlashInsensitive) end

---Shows a message box for debugging purposes with an "OK" button and a "Cancel" button.
---
---@param Message string
---@return boolean
function Confirm(Message) end

---Iterates a directory, calling the provided callback for each entry.
---
---You can return `false` from the callback to stop the iteration early.
---
---Note: The order of the entries is not guaranteed.
---
---@param Path string
---@param Callback fun(FileOrDirectory: string, IsDirectory: boolean): boolean
---@param UseReverseOrder boolean | nil
function DirectoryGetEntries(Path, Callback, UseReverseOrder) end

-- TODO: DirectoryRecursiveCreate

---Returns whether the specified path exists.
---
---@param Path string
---@param IsFile boolean
---@param IsDirectory boolean
---@return boolean
function Exists(Path, IsFile, IsDirectory) end

---Returns a version of the given path with modified slashes.
---
---@param Path string
---@param ToWindows boolean | nil
---@param FromWindows boolean | nil
---@return string
function FixSlashes(Path, ToWindows, FromWindows) end

---Calls the given callback function for each mod that is enabled.
---
---You can return `false` from the callback to stop the iteration early.
---
---@param Callback fun(ModInternalName: string): boolean
function GetEnabledMods(Callback) end

---Returns the file extension of the specified path.
---
---@param Path string
---@return string
function GetFileExtension(Path) end

---Returns the file name of the specified path including the extension.
---
---@param Path string
---@return string
function GetFileName(Path) end

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
---@param ModInternalName string | nil
---@return string
function GetModPath(ModInternalName) end

---Returns the title of the specified mod or the current mod if none is specified.
---
---This returns nil if called with the name of a mod that is not enabled.
---
---@param ModInternalName string | nil
---@return string | nil
function GetModTitle(ModInternalName) end

---Returns the version of the specified mod or the current mod if none is specified.
---
---@param ModInternalName string | nil
---@return string | nil
function GetModVersion(ModInternalName) end

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
---@param Path string
---@param Windows boolean | nil
function GetPathParent(Path, Windows) end

---Returns the value of a setting in the specified mod or the current mod if none is specified.
---
---For MultipleChoice settings, the value returned is 0 based.
---
---@param SettingName string
---@param ModInternalName string | nil
---@return boolean | integer | number | string | nil
function GetSetting(SettingName, ModInternalName) end

---Returns a table of all setting values in the current mod.
---
---For MultipleChoice settings, the value returned is 1 based.
---
---@return table<string, boolean | integer | number | string>
function GetSettings() end

---Returns a table of all setting values in the specified mod or nil if the mod is not loaded.
---
---For MultipleChoice settings, the value returned is 1 based.
---
---@param ModInternalName string
---@return table<string, boolean | integer | number | string> | nil
function GetSettings(ModInternalName) end

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
---@param HackInternalName string
---@return boolean
function IsHackLoaded(HackInternalName) end

---Detects whether the -legacyoutput command line argument for the Mod Launcher is in use.
---
---@return boolean
function IsLegacyOutput() end

---Returns whether a mod, mod hack or framework is enabled.
---
---@param ModInternalName string
---@return boolean
function IsModEnabled(ModInternalName) end

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
---@param FilePath string
---@return string
function ReadFile(FilePath) end

---Reads part of a file at the given path.
---
---@param FilePath string
---@param Offset integer
---@param Length integer
---@return string
function ReadFileOffset(FilePath, Offset, Length) end

---Redirect the file being requested to a different path within the Virtual File System.
---
---This should only be called in a Path Handler script.
---
---@param FilePath string
function Redirect(FilePath) end

---Returns the given file path or file name without the file extension.
---
---@param FilePath string
---@return string
function RemoveFileExtension(FilePath) end

-- TODO: UseCallbacks

-- TODO: WildcardMatch
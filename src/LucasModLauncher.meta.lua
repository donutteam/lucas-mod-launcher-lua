---@meta

error("Meta files should not be executed.")

--
-- Globals
--

Cheat =
{
	UnlockAllRewardVehicles = 32,
	NoTopSpeed = 128,
	HighAcceleration = 256,
	CarJumpOnHorn = 512,
	OneTapTrafficDeath = 2048,
	KickSwapsCharacterModel = 16384,
	PlayCreditsDialogue = 262144,
	ShowSpeedometer = 524288,
	RedBrick = 1048576,
	InvincibleCar = 2097152,
	ShowTree = 4194304,
	Trippy = 8388608,
}

DialogButtons =
{
	OK = 0,
	OKCancel = 1,
	OKClose = 2,
	YesNo = 3,
	YesClose = 4,
	YesNoCancel = 5,
	YesNoClose = 6,
	AbortRetryIgnore = 7,
	CloseRetryIgnore = 8,
	RetryCancel = 9,
	RetryClose = 10,
	Close = 11,
}

DialogIcon =
{
	Error = 0,
	Warning = 1,
	Information = 2,
	None = 3,
}

DialogResult =
{
	OK = 0,
	Cancel = 1,
	Close = 2,
	Yes = 3,
	No = 4,
	Abort = 5,
	Retry = 6,
	Ignore = 7,
}

PersistentObjectSector =
{
	L1R1 = 0,
	L1R2 = 1,
	L1R3 = 2,
	L1R4A = 3,
	L1R4B = 4,
	L1R6 = 5,
	L1R7 = 6,
	L1Z1 = 7,
	L1Z2 = 8,
	L1Z3 = 9,
	L1Z4 = 10,
	L1Z6 = 11,
	L1Z7 = 12,

	L2R1 = 13,
	L2R2 = 14,
	L2R3 = 15,
	L2R4 = 16,
	L2Z1 = 17,
	L2Z2 = 18,
	L2Z3 = 19,
	L2Z4 = 20,

	L3R1 = 21,
	L3R2 = 22,
	L3R3 = 23,
	L3R4 = 24,
	L3R5 = 25,
	L3Z1 = 26,
	L3Z2 = 27,
	L3Z3 = 28,
	L3Z4 = 29,
	L3Z5 = 30,

	L4R1 = 31,
	L4R2 = 32,
	L4R3 = 33,
	L4R4A = 34,
	L4R4B = 35,
	L4R6 = 36,
	L4R7 = 37,
	L4Z1 = 38,
	L4Z2 = 39,
	L4Z3 = 40,
	L4Z4 = 41,
	L4Z6 = 42,
	L4Z7 = 43,

	L5R1 = 44,
	L5R2 = 45,
	L5R3 = 46,
	L5R4 = 47,
	L5Z1 = 48,
	L5Z2 = 49,
	L5Z3 = 50,
	L5Z4 = 51,

	L6R1 = 52,
	L6R2 = 53,
	L6R3 = 54,
	L6R4 = 55,
	L6R5 = 56,
	L6Z1 = 57,
	L6Z2 = 58,
	L6Z3 = 59,
	L6Z4 = 60,
	L6Z5 = 61,

	L7R1 = 62,
	L7R2 = 63,
	L7R3 = 64,
	L7R4A = 65,
	L7R4B = 66,
	L7R6 = 67,
	L7R7 = 68,
	L7Z1 = 69,
	L7Z2 = 70,
	L7Z3 = 71,
	L7Z4 = 72,
	L7Z6 = 73,
	L7Z7 = 74,

	Level1 = 75,
	Level2 = 76,
	Level3 = 77,
	Level4 = 78,
	Level5 = 79,
	Level6 = 80,
	Level7 = 81,
}

RewardType =
{
	Skin = 1,
	Car = 3,
}

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
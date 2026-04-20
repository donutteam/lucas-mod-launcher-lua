---@meta

error("Meta files should not be executed.")

---Compares two paths with options to ignore different casing and different slashes.
---
---@param path1 string The first path.
---@param path2 string The second path.
---@param is_case_insensitive boolean | nil Whether or not the comparison is case insensitive. Optional, defaults to true.
---@param is_slash_insensitive boolean | nil Whether or not the comparison is slash insensitive. Optional, defaults to true.
---@return boolean matched Whether the paths match.
function ComparePaths(path1, path2, is_case_insensitive, is_slash_insensitive) end

---Returns a version of the given path with modified slashes.
---
---@param path string The path to modify.
---@param to_windows boolean | nil Whether to convert the path to have back slashes (\).
---@param from_windows boolean | nil Whether to convert the path to have forward slashes (/).
---@return string fixed_path The fixed path.
function FixSlashes(path, to_windows, from_windows) end

---Returns the file extension of the specified path.
---
---@param path string The path or filename of the file you want to get the extension of.
---@return string extension The file extension.
function GetFileExtension(path) end

---Returns the file name of the specified path including the extension.
---
---@param path string The path that you want to get the file name out of.
---@return string file_name The file name.
function GetFileName(path) end

---Returns the parent path of the specified file path.
---
---This will return the file name if it is only given a file name.
---
---@param path string The file path that you want to get the parent path out of.
---@param windows boolean | nil Whether to parse the path using backslashes. Optional, defaults to true.
---@return string parent_path The parent path.
function GetPathParent(path, windows) end

---Returns the given file path or file name without the file extension.
---
---@param path string The path or filename of the file you want to remove the extension from.
---@return string path The given file path or file name without the file extension.
function RemoveFileExtension(path) end
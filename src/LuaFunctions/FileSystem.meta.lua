---@meta

error("Meta files should not be executed.")

---Calls a callback function for every file and sub-directory in the given path.
---
---The order of these files is not predictable and should not be relied upon.
---
---You can return `false` from the callback to stop the iteration early.
---
---@param path string The directory to iterate.
---@param callback fun(FileOrDirectory: string, IsDirectory: boolean): boolean A callback that will be called for each item in the directory.
---@param end_to_start boolean | nil Makes the function iterate the directory in reverse order. 
---@return boolean returned_true Whether the callback returned true every time.
function DirectoryGetEntries(path, callback, end_to_start) end

---Recursively creates directories with the given path.
---
---@param base_path string The path to create directories inside within the Virtual File System.
---@param path string The directories to create.
---@return boolean created Whether the directories were successfully created.
function DirectoryRecursiveCreate(base_path, path) end

---Returns whether or not the specified path exists.
---
---@param path string The path to check.
---@param is_file boolean Return true if the path is a file. 
---@param is_directory boolean Return true if the path is a directory.
---@return boolean exists Whether the file or directory exists.
function Exists(path, is_file, is_directory) end

---Read the file at the given path.
---
---@param file_path string The path of the file to read.
---@return string contents The contents of the file.
function ReadFile(file_path) end

---Read part of a file at the given path.
---
---@param file_path string The path of the file to read.
---@param offset integer The offset in the file in bytes. This value is 1 based.
---@param length integer The amount of bytes to read.
---@return string contents The contents of the specified part of the file.
function ReadFileOffset(file_path, offset, length) end
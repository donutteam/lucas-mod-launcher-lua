---@meta

error("Meta files should not be executed.")

---Returns the path of the file being handled.
---
---This function should only be called in a Path Handler script.
---
---@return string path The path of the file being handled.
function GetPath() end

---Checks whether or not the -legacyoutput command line argument is in use.
---
---@return boolean legacy_output Whether the -legacyoutput command line argument is in use.
function IsLegacyOutput() end

---Checks if the path being handled is being written to.
---
---This function should only be called in a Path Handler script.
---
---@return boolean is_writing Whether the path being handled is being written to.
function IsWriting() end

---Outputs text or binary data to a virtual file in memory which is then handed off to the game in place of the file it requested.
---
---Calling this function multiple times within the same path handler will cause the data to be concatenated.
---
---This function should only be called in a Path Handler script.
---
---@param data string The data to output to the virtual file.
function Output(data) end

---Redirect the file being requested to a different path.
---
---This function should only be called in a Path Handler script.
---
---@param path string The path to redirect this file to.
function Redirect(path) end

---Builds a file as the game requests it using callback functions.
---
---@param length integer The file size of the file in bytes.
---@param read_callback fun(position: integer, length: integer) Callback called each time the game tries to read from the file.
---@param close_callback fun() Callback called when the game closes its handle on the file.
function UseCallbacks(length, read_callback, close_callback) end
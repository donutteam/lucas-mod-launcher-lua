---@meta

error("Meta files should not be executed.")

---Shows a message box for debugging purposes with an "OK" button.
---
---@param message string
function Alert(message) end

---Shows a message box for debugging purposes with an "OK" button and a "Cancel" button.
---
---@param message string
---@return boolean ok_pressed Whether the user clicked OK.
function Confirm(message) end

---Shows a Windows dialog box with a customisable icon and buttons.
---
---@param icon integer The icon to use. Constants for all valid icons are in the DialogIcon table.
---@param buttons integer The buttons to show. Constants for all valid buttons are in the DialogButtons table.
---@param message string The message to show.
---@param title string | nil The dialog title. Optional.
---@return integer result The result. Constants for all valid results are in the DialogResult table.
function Dialog(icon, buttons, message, title) end
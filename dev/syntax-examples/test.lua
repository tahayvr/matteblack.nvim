--
-- Theme Test File for Lua
-- This file contains various Lua syntax elements.
--

-- --- Comments ---
-- This is a standard comment.
-- TODO: Refactor the setup function to be more modular.
-- FIXME: The keymap for 'x' is not working correctly.

-- --- Variables and Types ---
local a_string = "Hello, Lua!"
local a_number = 42
local a_boolean = true
local a_nil = nil -- @constant.builtin: `nil`

-- --- Tables (Lua's only data structure) ---
local a_list = { 1, 2, "three", 4 }
local a_dictionary = {
  key = "value",
  another_key = 123,
  ["with-dashes"] = true,
}

-- --- Functions ---
local function greet(name)
  -- String concatenation operator
  print("Hello, " .. name)
end

-- Function call
greet("Neovim User")

-- --- Control Flow ---
-- @conditional: if/then/else
if a_number > 50 then
  print("Number is large")
elseif a_number == 42 then
  print("The answer to everything.")
else
  print("Number is small")
end

-- @repeat: for loops
for i = 1, 3 do
  print("Numeric loop:", i)
end

for key, value in pairs(a_dictionary) do
  print("Table item:", key, value)
end

-- --- Metatables and Metamethods ---
local my_meta_table = {}
my_meta_table.__index = function(tbl, key)
  return "Sorry, key '" .. key .. "' not found."
end

local my_table = setmetatable({}, my_meta_table)
print(my_table.non_existent_key)

-- --- Modules and `require` ---
-- A simple module definition
local M = {}

function M.setup(opts)
  -- @variable.builtin: `self`
  self.options = opts or {}
  print("Module setup complete.")
end

-- To use this module in another file:
-- local my_module = require("my_module_name")
-- my_module.setup()

-- --- Deliberate Syntax Error ---
-- Remove the '--' to test LSP diagnostics
-- local x = "hello" "world"

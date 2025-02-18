local function foo(t, path)
  local value = t
  for i, key in ipairs(path) do
    value = value[key]
    if value == nil then
      return nil
    end
  end
  return value
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
local path = {"b", "d", "e"}
local result = foo(t, path)
print(result) 
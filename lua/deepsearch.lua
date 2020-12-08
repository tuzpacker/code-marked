--[[
	深拷贝对象
	注意 被拷贝对象的key value都要递归 __copy
	copy metatable 
]]
function DeepCopy(object)
	local lookup_table = {}
	
	local function _copy(object)
		if type(object) ~= "table" then
			return object
		elseif lookup_table[object] then
			return lookup_table[object]
		end

		local new_table = {}
		lookup_table[object] = new_table
		for index, value in pairs(object) do
			new_table[_copy(index)] = _copy(value)
		end

		return setmetatable(new_table, getmetatable(object))
	end

	return _copy(object)
end

local a = {
	year = 1995
}

local b = {
	month = 10
}

local c = {
	day = 2
}

c = setmetatable(c,{
	__index = b
})

print(c.year,c.month,c)

b = setmetatable(b,{
	__index = a
})

print(c.year,c.month,c.day)

-- test d
local d = c
print(d.year,d.month,d.day)

-- change c
c.day = "2 haha"
print(d.year,d.month,d.day)

-- deepcopy
local f = DeepCopy(c)
print(f.year,f.month,f.day)

-- change c
c.day = "2 yaya"
print(f.year,f.month,f.day)

-- 改变不生效 deepcopy成功~
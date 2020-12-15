-- local info={1,2,nil,4,5,6}
-- info[3] = nil
-- for i,v in ipairs(info) do
-- print(v)
-- end
-- table.remove(info,2)
-- for i,v in ipairs(info) do
-- print(v)
-- end
-- print(math.random(2,55))
-- print(math.random(1,55))
-- print(math.random(2,55))
-- print(math.random(1,55))
-- print(math.random(2,55))
-- print(math.random(1,55))

-- print((0.1+0.2) == 0.3)
-- print(false == false)
-- print(1000%100)

-- function count()
-- 	local i = 0
-- 	return function()
-- 		i = i + 1
-- 		print(i)
-- 	end
-- end

-- local c1 = count()
-- print(c1)
-- print(c1)
-- print(count())
-- count()
-- count()
-- count()()

-- tb = 2
-- print(tb)

-- local str = "aaa\tccc"
-- print(str)

-- local a = {
-- 	[1] = nil,[3] = 2,[2] = 1
-- }

-- for i,v in pairs(a) do
-- 	print(v)
-- end

-- local idx = 1
-- local testFunc = nil
-- testFunc = function()
-- 	idx = idx + 1
-- 	if idx > 3 then
-- 		return
-- 	end
-- 	print(idx)
-- 	testFunc()
-- end

-- testFunc()

-- print(math.ceil(0.0000000000000000000000000000000000000000000000000000001))
-- for i = 1,20 do
-- 	print(math.ceil(math.random()*(3-0) + 0))
-- end

-- local Set = {}
-- function Set.new(l)
-- 	local s = {}
-- 	local mt = {}

-- 	function mt.__call(...)
-- 		print("call")
-- 	end
-- 	setmetatable(s,mt)
-- 	for _,v in ipairs(l) do
-- 		s[v] = true
-- 	end
-- 	return s
-- end

-- function Set.insert(t,v)
-- 	t[v] = true
-- end

-- local set = Set.new {1,5}
-- -- set["insert"](set,5)
-- set(9)

-- for i,v in pairs(set) do
-- 	print(i)
-- end

local test = {}
local mt = {}
mt.__index = function(me,key)
	print(key)
end

mt.__newindex = function(me,key,value)
	print(key .. "\t" .. value)
end

setmetatable(test,mt)
test.aaa = 2
-- test2.bbb()

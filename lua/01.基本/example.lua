-- HalloWorld
print("[HalloWorld]")
print("Hello World")

-- Table
print("[Table]")
tbl1 = {}
tbl1["id"] = "tbl1Id"
tbl1["name"] = "tbl1Name"
tbl1["age"] = 34
print(tbl1["id"] .. "," .. tbl1["name"] .. "," .. tbl1["age"])	--ブラケット表記でアクセスOK
print(tbl1.id .. "," .. tbl1.name .. "," .. tbl1.age) 			--プロパティ表記でアクセスOK
tbl2 = {}
tbl2[1] = "tbl2-1"
tbl2[2] = 2
tbl2[3] = true
--print(tbl2[1] .. "," .. tbl2[2] .. "," .. tbl2[3]) --boolean型出力でエラー
print(tbl2[1] .. "," .. tbl2[2])

-- iterator(index => use ipairs)
print("[iterator(index => use ipairs)]")
tbl3 = {}
tbl3[0] = "tbl3-0"
tbl3[1] = "tbl3-1"
tbl3[2] = "tbl3-2"
tbl3[3] = "tbl3-3"
for i, val in ipairs(tbl3) do
	print(val)	-- tbl3-0 が出力されない => テーブルのインデックスは1スタート
end

-- iterator(key => use pairs)
print("[iterator(key => use pairs)]")
tbl4 = {}
tbl4.key1 = "tbl4-1"							-- tbl4.key1の出力結果は[key1    tbl4-1]
tbl4.key2 = "tbl4-2"
tbl4.key3 = "tbl4-3"
tbl4.func1 = function(x, y) return x * y end	-- tbl4.func1の出力結果は[func1   function: 00000000002eb480]
for key, val in pairs(tbl4) do
	print(key,val)
end

-- for
print("[for]")
for i = 0, 10, 2 do
	print(i)
end
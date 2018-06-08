



for _ ,x in ipairs ({10,20,30} )do  print(x) end

t = {'hello','dolly'}
print '---'
for _ ,name in ipairs (t )do  print(name) end
print '---'
for _ ,x in ipairs (t )do if x:match 'o$' then   print(x) end end

-- a wee bit tautological, but valid!
print '---'
for _ ,x in ipairs ((function ()local res ={}for _ ,x in ipairs ({10,20,30} )do  res [#res +1]=x^2  end return res end )() )do  print(x) end

t = (function ()local res ={}for _ ,s in ipairs ({'one','two','three'} )do if s ~= 'two' then   res [#res +1]=s:upper()  end end return res end )()

 print '---'; for _ ,val in ipairs (t )do  print(val) end

for i =1,5 do  print(i) end

t = (function ()local res ={}for i =1,10 do  res [#res +1]=2*i end return res end )()

 print '---'; for _ ,val in ipairs (t )do  print(val) end

-- identity matrix using nested list comprehensions.
t = (function ()local res ={}for i =1,3 do  res [#res +1]=(function ()local res ={}for j =1,3 do  res [#res +1]=i==j and 1 or 0  end return res end )()  end return res end )()

-- note the other form of LCs: using 'for' means that you explicitly want
-- the generic Lua for-statement.
ls = (function ()local res ={}for line in io.lines 'test-forall.lua' do res [#res +1]=line  end return res end )()
print('length of this file',#ls)

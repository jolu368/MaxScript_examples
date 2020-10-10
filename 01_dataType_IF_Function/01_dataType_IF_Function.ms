/*--------------------------------------------*/
/*           MaxScript Example 01             */
/*     Writed by JoJo at 2020/10/09      */
/*--------------------------------------------*/

----基本資料型態
a = 1						-- int 整數
a = 1.1					-- float 浮點數
a = "1"					-- string 字串
a = true					-- bool 布林
a = #(10,20,30)		-- array 陣列; 預設存入資料
a[1]						-- array 取出資料
a = #()					-- array 陣列; 建立空陣列
append a 1				-- array 陣列; 存入資料 
append a "s"			-- array 陣列; 存入資料
append a 2.5			-- array 陣列; 存入資料
free a					-- array 陣列; 清空陣列

----運算子
a = 1 + 1				--加法
a = 2 -1					--減法
a = 2 * 2				--乘法
a = 5 / 2				--除法
a = mod 5 2 			--取餘數
a+=1					--如同 a++ 對 a 做遞增
a-=1						--如同 a-- 對 a 做遞減

----if 敘述 搭配 邏輯運算子
a = true
if (a == true) do
(
	print ("a==true: " + a as string)
)
if (a != false) do
(
	print ("a!=false: " + a as string)
)
--**
if (a == true) then
(
	print ("a==true: " + a as string)
)
else
(
	print ("a==false: " + a as string)
)
--**
a = 10
if (a == 10) then
(
	print ("a=10: " + a as string)
)
else if (a == 20) do
(
	print ("a=20: " + a as string)
)
--**
a = 30
if (a == 10) then
(
	print ("a=10: " + a as string)
)
else if (a == 20) then
(
	print ("a=20: " + a as string)
)
else
(
	print ("a=??: " + a as string)
)
--**
a = 10 
b = 20
if (a == 10 and b == 20) do	--and 如同 &&
(
	print ("a= " + a as string + ", b= " + b as string)
)
if (a == 10 or b == 30) do		--or 如同 ||
(
	print ("a= " + a as string + ", b= " + b as string)
)

----迴圈
a = #(10,20,30)	
for i = 1 to a.count do
(
	print("a= " + a[i] as string)
)
--**
for item in a do
(
	print("item in a= " + item as string)
)
--**
for i = 1 to a.count do
(
	print("a= " + a[i] as string)
	if (i == 2) do
	(
		exit								--離開整個迴圈
	)
)
--**
for i = 1 to a.count do
(
	print("i= " + i as string)
	if (i == 2) do
	(
		continue						--跳出這次迴圈, continue 後面的不會被執行
	)
	print("----a= " + a[i] as string)
)

----Switch Case
a = 1
case a of 
(
	1:
	(
		print ("a is 1")
	)
	2:
	(
		print("a is 2")
	)
)
--**
case of 
(
	(a<=1):
	(
		print ("a <= 1")
	)
	(a>2):
	(
		print ("a > 2")
	)
)

----涵式
fn test =
(
	print("this is a function test")
)
test()
--**
a = 10
fn test a = 
(
	print("this is a function test... a= " + a as string)
)
test a

------------------------------ examples ------------------------------
--01 取得場景中是 poly 的 object，將其名稱列印出來
arr_poly = for p in geometry where (classof p == Editable_Poly) collect p
for i = 1 to arr_poly.count do
(
	print("poly object is: " + arr_poly[i].name)
)

--02 取得場景中所有 geometry object，判斷其名稱是否與指定的陣列內名稱一致，一致的才將其名稱列印出來
arr_polyName = #("Box", "Cylinder", "Torus", "Teapot", "Sphere")
arr_poly = for p in geometry collect p
for i = 1 to arr_poly.count do
(
	for j = 1 to arr_polyName.count do
	(
		if (arr_poly[i].name == arr_polyName[j] as string) do
		(
			print("object name correct is: " + arr_poly[i].name as string)
		)
	)
)
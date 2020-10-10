/*--------------------------------------------*/
/*           MaxScript Example 01             */
/*     Writed by JoJo at 2020/10/09      */
/*--------------------------------------------*/

----�򥻸�ƫ��A
a = 1						-- int ���
a = 1.1					-- float �B�I��
a = "1"					-- string �r��
a = true					-- bool ���L
a = #(10,20,30)		-- array �}�C; �w�]�s�J���
a[1]						-- array ���X���
a = #()					-- array �}�C; �إߪŰ}�C
append a 1				-- array �}�C; �s�J��� 
append a "s"			-- array �}�C; �s�J���
append a 2.5			-- array �}�C; �s�J���
free a					-- array �}�C; �M�Ű}�C

----�B��l
a = 1 + 1				--�[�k
a = 2 -1					--��k
a = 2 * 2				--���k
a = 5 / 2				--���k
a = mod 5 2 			--���l��
a+=1					--�p�P a++ �� a �����W
a-=1						--�p�P a-- �� a ������

----if �ԭz �f�t �޿�B��l
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
if (a == 10 and b == 20) do	--and �p�P &&
(
	print ("a= " + a as string + ", b= " + b as string)
)
if (a == 10 or b == 30) do		--or �p�P ||
(
	print ("a= " + a as string + ", b= " + b as string)
)

----�j��
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
		exit								--���}��Ӱj��
	)
)
--**
for i = 1 to a.count do
(
	print("i= " + i as string)
	if (i == 2) do
	(
		continue						--���X�o���j��, continue �᭱�����|�Q����
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

----�[��
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
--01 ���o�������O poly �� object�A�N��W�٦C�L�X��
arr_poly = for p in geometry where (classof p == Editable_Poly) collect p
for i = 1 to arr_poly.count do
(
	print("poly object is: " + arr_poly[i].name)
)

--02 ���o�������Ҧ� geometry object�A�P�_��W�٬O�_�P���w���}�C���W�٤@�P�A�@�P���~�N��W�٦C�L�X��
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
Create database ClassTask

Create Table Brands (
Id int identity primary key,
Name nvarchar(100)
)

Create Table NoteBooks(
Id int identity primary key,
Name nvarchar(100),
Price money,
BrandsId int references Brands(id)
)

Create Table Phones(
Id int identity primary key,
Name nvarchar(100),
Price money,
BrandsId int references Brands(Id)
)

INSERT INTO Brands
VALUES
('Apple'),
('Hp'),
('Samsung'),
('Xiaomi'),
('Huawei'),
('Asus'),
('Dell')

INSERT INTO Notebooks
VALUES
('250 G5', 943, 2),
('250 G6', 1158, 2),
('250 G7', 1251, 2),
('Air', 2363, 1),
('Pro 13', 2975, 1),
('Pro 15', 3439, 1),
('ROG', 2928, 6),
('ROG PRO', 3968, 6),
('VIVOBOOK 15', 1536, 6),
('VIVOBOOK 14', 1325, 6),
('Mate X', 1600, 5),
('Mate X PRO', 1900, 5),
('Mate XL PRO', 1864, 5),
('Mate XXL PRO', 1253, 5),
('Mi Notebook Air', 1753, 4),
('Mi Notebook Pro', 2153, 4),
('Lustrous Grey', 4681, 4),
('Galaxy Book', 1874, 3),
('Galaxy Book PRO', 3274, 3),
('Galaxy Book AIR', 2574, 3),
('Galaxy Book AIR PRO', 3367, 3)

INSERT INTO Phones
VALUES
('13', 2463, 1),
('13 Pro', 3075, 1),
('13 Pro Max', 3339, 1),
('Mate Pad', 1600, 5),
('Mate Xs', 1900, 5),
('Nova 9 SE', 1864, 5),
('P50E', 1853, 5),	
('Poco 5', 1753, 4),
('Poco 4', 2153, 4),
('Poco 6', 4681, 4),
('A11', 275, 3),
('A21', 285, 3),
('A31', 374, 3),
('A41', 467, 3),
('A51', 567, 3),
('A61', 667, 3),
('A71', 767, 3),
('A81', 867, 3),
('A91', 967, 3)

Select n.Name, b.Name as 'BrandName', n.Price from Notebooks n
left join
Brands b on n.BrandsId = b.Id

Select p.Name, b.Name as 'BrandName', p.Price from Phones p
left join
Brands b on p.BrandsId = b.Id


Select * from Brands b left join NoteBooks n on b.Id = n.BrandsId where  b.Name like '%s%' 


Select n.Name, b.Name as 'BrandName', n.Price from Notebooks n
left join
Brands b on n.BrandsId = b.Id where n.price >2000 and n.price < 5000

Select p.Name, b.Name as 'BrandName', p.Price from Phones p
left join
Brands b on p.BrandsId = b.Id where p.Price >1000


Select b.Name,Count(*) from Brands b
left join
NoteBooks n on n.BrandsId = b.Id
group by b.Name


Select b.Name,Count(*) from Brands b
left join
Phones n on n.BrandsId = b.Id
group by b.Name

Select b.Name 'Brand Name', n.Name,n.BrandsId, p.Name'Names' from Brands b
left join
Phones p on p.BrandsId = b.id
inner join
NoteBooks n on n.BrandsId = b.Id




Select NoteBooks.Name, NoteBooks.BrandsId from NoteBooks
union
Select Phones.Name, Phones.BrandsId from Phones







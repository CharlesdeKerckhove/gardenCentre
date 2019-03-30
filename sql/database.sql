-- Drop database if exists
DROP DATABASE IF EXISTS garden_center;

-- Create database
CREATE DATABASE IF NOT EXISTS garden_center;

-- Use database
USE garden_center;

-- Create tables
CREATE TABLE IF NOT EXISTS Customers
(
    CustomerID INT NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    PhoneNumber CHAR(11),
    Email VARCHAR(100) NOT NULL,
    Address VARCHAR(100),
    Postcode CHAR(8),
    CONSTRAINT PK_Customer PRIMARY KEY(CustomerID)
);

CREATE TABLE IF NOT EXISTS Orders
(
    OrderID INT NOT NULL,
    OrderDate DATE NOT NULL,
    Address VARCHAR(100) NOT NULL,
    CustomerID INT NOT NULL,
    CONSTRAINT PK_Orders PRIMARY KEY(OrderID),
    CONSTRAINT FK_Customer FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE IF NOT EXISTS Category
(
    CategoryID INT NOT NULL,
    CategoryName VARCHAR(50) NOT NULL,
    CONSTRAINT PK_Category PRIMARY KEY(CategoryID)
);

CREATE TABLE IF NOT EXISTS SubCategory
(
    SubCategoryID INT NOT NULL,
    SubCategoryName VARCHAR(50) NOT NULL,
    CategoryID INT NOT NULL,
    CONSTRAINT FK_CategoryID FOREIGN KEY(CategoryID) REFERENCES Category(CategoryID),
    CONSTRAINT PK_SubCategory PRIMARY KEY(SubCategoryID)
);

CREATE TABLE IF NOT EXISTS Products
(
    ProductID INT NOT NULL,
    ProductName VARCHAR(50) NOT NULL,
    ProductDescription VARCHAR(100),
    ProductQuantity INT NOT NULL,
    ProductPrice DECIMAL NOT NULL,
    ProductImage VARCHAR(1024),
    SubCategoryID INT NOT NULL,
    CONSTRAINT PK_ProductID PRIMARY KEY(ProductID),
    CONSTRAINT FK_SubCategoryID FOREIGN KEY(SubCategoryID) REFERENCES SubCategory(SubCategoryID)
);

CREATE TABLE IF NOT EXISTS Orderline
(
    OrderLineID INT NOT NULL,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT(3) NOT NULL,
    CONSTRAINT PK_OrderLineID PRIMARY KEY(OrderLineID),
    CONSTRAINT FK_OrderID FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT FK_ProductID FOREIGN KEY(ProductID) REFERENCES Products(ProductID)
);

-- Category data

INSERT INTO Category VALUES ('1','Plants');
INSERT INTO Category VALUES ('2','Pets & Wildlife');
INSERT INTO Category VALUES ('3','Homeware');
INSERT INTO Category VALUES ('4','Furniture');
INSERT INTO Category VALUES ('5','Gardening');
INSERT INTO Category VALUES ('6','Cards & Gifts');
INSERT INTO Category VALUES ('7','BBQs & Outdoor Heating');

-- SubCategory data

INSERT INTO SubCategory VALUES ('1','Seeds','1');
INSERT INTO SubCategory VALUES ('2','Roses','1');
INSERT INTO SubCategory VALUES ('3','Orchids','1');
INSERT INTO SubCategory VALUES ('4','Flowers','1');
INSERT INTO SubCategory VALUES ('5','Shrubs','1');
INSERT INTO SubCategory VALUES ('6','Fruit Trees','1');
INSERT INTO SubCategory VALUES ('7','Trees','1');
INSERT INTO SubCategory VALUES ('8','Cacti','1');
INSERT INTO SubCategory VALUES ('9','House Plants','1');

INSERT INTO SubCategory VALUES ('10','Dogs','2');
INSERT INTO SubCategory VALUES ('11','Cats','2');
INSERT INTO SubCategory VALUES ('12','Birds','2');
INSERT INTO SubCategory VALUES ('13','Fish','2');
INSERT INTO SubCategory VALUES ('14','Small Animals','2');
INSERT INTO SubCategory VALUES ('15','Reptiles','2');
INSERT INTO SubCategory VALUES ('16','Wildife','2');

INSERT INTO SubCategory VALUES ('17','Kitchen','3');
INSERT INTO SubCategory VALUES ('18','Tablewear','3');
INSERT INTO SubCategory VALUES ('19','Home Electricals','3');
INSERT INTO SubCategory VALUES ('20','Mirrors','3');
INSERT INTO SubCategory VALUES ('21','Blankets','3');
INSERT INTO SubCategory VALUES ('22','Bathroom Accessories','3');
INSERT INTO SubCategory VALUES ('23','Indoor Lighting','3');
INSERT INTO SubCategory VALUES ('24','Indoor Clocks','3');
INSERT INTO SubCategory VALUES ('25','Cleaning Products','3');
INSERT INTO SubCategory VALUES ('26','Miscellaneous Items','3');

INSERT INTO SubCategory VALUES ('27','Tables','4');
INSERT INTO SubCategory VALUES ('28','Storage','4');
INSERT INTO SubCategory VALUES ('29','Sofas','4');
INSERT INTO SubCategory VALUES ('30','Footstools','4');
INSERT INTO SubCategory VALUES ('31','Chairs & Benches','4');
INSERT INTO SubCategory VALUES ('32','Garden Furniture Sets','4');
INSERT INTO SubCategory VALUES ('33','Garden Furniture Cushions','4');
INSERT INTO SubCategory VALUES ('34','Garden Furniture Covers','4');
INSERT INTO SubCategory VALUES ('35','Garden Lighting','4');
INSERT INTO SubCategory VALUES ('36','Hammocks & Swing Seats','4');
INSERT INTO SubCategory VALUES ('37','Parasols','4');

INSERT INTO SubCategory VALUES ('38','Bark & Mulches','5');
INSERT INTO SubCategory VALUES ('39','Chemicals & Fertilisers','5');
INSERT INTO SubCategory VALUES ('40','Compost','5');
INSERT INTO SubCategory VALUES ('41','Bins','5');
INSERT INTO SubCategory VALUES ('42','Fencing','5');
INSERT INTO SubCategory VALUES ('43','Padlocks','5');
INSERT INTO SubCategory VALUES ('44','Garden Tools','5');
INSERT INTO SubCategory VALUES ('45','Plant Pots & Containers','5');
INSERT INTO SubCategory VALUES ('46','Grass Seed','5');
INSERT INTO SubCategory VALUES ('47','Watering','5');
INSERT INTO SubCategory VALUES ('48','Plant Protection','5');
INSERT INTO SubCategory VALUES ('49','Garden Clothing','5');
INSERT INTO SubCategory VALUES ('50','Garden Storage','5');
INSERT INTO SubCategory VALUES ('51','Lawnmowers','5');
INSERT INTO SubCategory VALUES ('52','Wheelbarrows','5');
INSERT INTO SubCategory VALUES ('53','Water Features','5');
INSERT INTO SubCategory VALUES ('54','Stones','5');
INSERT INTO SubCategory VALUES ('55','Picnicking','5');
INSERT INTO SubCategory VALUES ('56','Sprinklers','5');
INSERT INTO SubCategory VALUES ('57','Hanging Baskets','5');
INSERT INTO SubCategory VALUES ('58','Miscellaneous Items','5');

INSERT INTO SubCategory VALUES ('59','Cards','6');
INSERT INTO SubCategory VALUES ('60','Candles','6');
INSERT INTO SubCategory VALUES ('61','Toys & Games','6');
INSERT INTO SubCategory VALUES ('62','Books','6');
INSERT INTO SubCategory VALUES ('63','Clothes','6');
INSERT INTO SubCategory VALUES ('64','Binoculars','6');
INSERT INTO SubCategory VALUES ('65','Gift Vouchers','6');
INSERT INTO SubCategory VALUES ('66','Doorstops','6');
INSERT INTO SubCategory VALUES ('67','Knee Pads','6');
INSERT INTO SubCategory VALUES ('68','Jewellery','6');
INSERT INTO SubCategory VALUES ('69','Personalised Gifts','6');

INSERT INTO SubCategory VALUES ('70','Charcoal BBQs','7');
INSERT INTO SubCategory VALUES ('71','Gas BBQs','7');
INSERT INTO SubCategory VALUES ('72','Electric BBQs','7');
INSERT INTO SubCategory VALUES ('73','BBQ Accessories','7');
INSERT INTO SubCategory VALUES ('74','BBQ Fuels','7');
INSERT INTO SubCategory VALUES ('75','BBQ Spare Parts','7');
INSERT INTO SubCategory VALUES ('76','Heaters','7');
INSERT INTO SubCategory VALUES ('77','Chimeneas','7');
INSERT INTO SubCategory VALUES ('78','Fire Pits','7');

-- Product data

INSERT INTO Products VALUES ('1','Sunflower Seeds','')
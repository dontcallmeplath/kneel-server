CREATE TABLE `Styles`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `style` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);

CREATE TABLE `Sizes`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `carats` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);

CREATE TABLE `Metals`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `metal` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);

CREATE TABLE `Orders`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `styles_id` INTEGER NOT NULL,
    `sizes_id` INTEGER NOT NULL,
    `metal_id` INTEGER NOT NULL,
    FOREIGN KEY(`styles_id`) REFERENCES `Styles`(`id`),
    FOREIGN KEY(`sizes_id`) REFERENCES `Sizes`(`id`),
    FOREIGN KEY(`metal_id`) REFERENCES `Metals`(`id`)
);

INSERT INTO `Styles` (style, price) VALUES ("Classic", 500);
INSERT INTO `Styles` (style, price) VALUES ("Modern", 500);
INSERT INTO `Styles` (style, price) VALUES ("Vintage", 500);

INSERT INTO `Sizes` (carats, price) VALUES (0.5, 405);
INSERT INTO `Sizes` (carats, price) VALUES (0.75, 782);
INSERT INTO `Sizes` (carats, price) VALUES (1.0, 1470);
INSERT INTO `Sizes` (carats, price) VALUES (1.5, 1997);
INSERT INTO `Sizes` (carats, price) VALUES (2.0, 3638);

INSERT INTO `Metals` (metal, price) VALUES ("Sterling Silver", 12.42);
INSERT INTO `Metals` (metal, price) VALUES ("14K Gold", 736.4);
INSERT INTO `Metals` (metal, price) VALUES ("24K Gold", 1258.9);
INSERT INTO `Metals` (metal, price) VALUES ("Platinum", 795.45);
INSERT INTO `Metals` (metal, price) VALUES ("Palladium", 1241);

INSERT INTO `Orders` (styles_id, sizes_id, metal_id) VALUES (1, 1, 1);
INSERT INTO `Orders` (styles_id, sizes_id, metal_id) VALUES (2, 2, 2);
INSERT INTO `Orders` (styles_id, sizes_id, metal_id) VALUES (3, 3, 3);
INSERT INTO `Orders` (styles_id, sizes_id, metal_id) VALUES (2, 4, 4);
INSERT INTO `Orders` (styles_id, sizes_id, metal_id) VALUES (3, 5, 5);
INSERT INTO `Orders` (styles_id, sizes_id, metal_id) VALUES (1, 3, 5);
INSERT INTO `Orders` (styles_id, sizes_id, metal_id) VALUES (2, 4, 3);
INSERT INTO `Orders` (styles_id, sizes_id, metal_id) VALUES (3, 1, 4);
INSERT INTO `Orders` (styles_id, sizes_id, metal_id) VALUES (1, 5, 2);
INSERT INTO `Orders` (styles_id, sizes_id, metal_id) VALUES (3, 2, 1);

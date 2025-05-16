CREATE OR REPLACE view items1view as
SELECT cars.*  , categories.* , products.* FROM cars 
INNER JOIN categories ON categories.categories_id = cars.cars_catego 
INNER JOIN products ON cars.cars_id = products.products_itemsId
/*INSERT INTO models (model_id, model, year, manufacturer_id, fuel_id, best_mpge) VALUES
(506, 'impala', 2010, 7, 3, 29.0),
(1105, 'yukon xl ffv', 2004, 16, 3, 18.0),
(865, 'sf90 spyder', 2022, 11, 7, 19.0),
(903, 'silverado 4wd', 2020, 7, 3, 18.0),
(87, 'amg gle 53 4matic+ (coupe)', 2022, 32, 4, 21.0),
(115, 'avalon hybrid', 2022, 50, 4, 43.0),
(883, 'sierra c / k 1500', 2013, 16, 3, 18.0),
(1058, 'x6 xdrive40i', 2022, 3, 4, 25.0),
(421, 'fortwo', 2013, 46, 2, 112.0),
(454, 'grand cherokee 2wd / awd', 2013, 22, 3, 23.0),
(292, 'econoline clubwagon', 1998, 14, 1, 17.0),
(51, 'a5 quattro', 2021, 1, 4, 31.0),
(1075, 'xj ffv', 2014, 21, 3, 27.0),
(689, 'optima plug-in hybrid', 2018, 25, 7, 103.0),
(18, '300 awd', 2019, 8, 3, 27.0),
(870, 'sierra', 2007, 16, 4, 21.0),
(229, 'cruze', 2019, 7, 0, 48.0),
(281, 'e250', 2011, 14, 3, 16.0);*/

/*INSERT INTO fuels (fuel_id, fuel) VALUES
(4, 'hybrid electric'),
(3, 'ethanol (e85)'),
(7, 'plug-in hybrid electric'),
(2, 'electric'),
(1, 'cng - compressed natural gas'),
(0, 'biodiesel (b20)'),
(5, 'hydrogen fuel cell'),
(8, 'propane'),
(6, 'methanol');*/

CREATE TABLE manufacturers (
    manufacturer_id INTEGER PRIMARY KEY,
    manufacturer TEXT
);
-- segregate by population

CREATE TABLE cities_test (city_name varchar(255) CHARACTER SET utf8mb4,
country varchar(255) CHARACTER SET utf8mb4, 
city_population int, 
city_area int );

INSERT INTO cities_test VALUES ('Tokyo	 		','Japan		',	13515271,	2191	);	
INSERT INTO cities_test VALUES ('Delhi	 		','India		',	16753235,	1484	);	
INSERT INTO cities_test VALUES ('Shanghai	 	','China		',	24870895,	6341	);	
INSERT INTO cities_test VALUES ('Sao Paulo	 	','Brazil		',	12252023,	1521	);	
INSERT INTO cities_test VALUES ('Mexico City	','Mexico		',	9209944,	1485	);	
INSERT INTO cities_test VALUES ('Cairo	 		','Egypt		',	9500000,	3085	);	
INSERT INTO cities_test VALUES ('Mumbai	 		','India		',	12478447,	603		);	
INSERT INTO cities_test VALUES ('Beijing	 	','China		',	21893095,	16411	);	
INSERT INTO cities_test VALUES ('Osaka	 		','Japan		',	2725006,	225		);	
INSERT INTO cities_test VALUES ('New York	 	','United States',	8398748,	786		);	
INSERT INTO cities_test VALUES ('Buenos Aires	','Argentina	',	3054300,	203		);	
INSERT INTO cities_test VALUES ('Chongqing	 	','China		',	32054159,	82403	);	
INSERT INTO cities_test VALUES ('Istanbul	 	','Turkey		',	15519267,	5196	);	
INSERT INTO cities_test VALUES ('Kolkata	 	','India		',	4496694,	205		);	
INSERT INTO cities_test VALUES ('Manila	 		','Philippines	',	1780148,	43		);	
SELECT * FROM cities_test;
select city_name,
case
	when city_population>=15000000 OR city_area>50000 then 'big'
    else 'small'
end as pop_rep
from cities_test;
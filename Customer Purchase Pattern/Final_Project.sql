show databases;
use customer;


SELECT Education , Year_Birth  FROM customer.marketing_campaign;

SELECT  Education,min(MntWines), max(MntMeatProducts),max(MntFruits)
  FROM customer.marketing_campaign 
 WHERE  MntWines > 0
  GROUP by (Education);


SELECT  Marital_Status,count(NumWebPurchases),max(NumStorePurchases)
  FROM customer.marketing_campaign 
  GROUP by (Marital_Status)
  ORDER by 2 desc;





 
 SELECT Education, Year_Birth
  FROM customer.marketing_campaign 
  GROUP by (Year_Birth);

 





# Unique Education values 
SELECT DISTINCT Education FROM customer.marketing_campaign;

#Maximum spent on Wines 
SELECT MAX(MntWines)FROM customer.marketing_campaign;
SELECT min(MntWines) FROM customer.marketing_campaign;

#Maximum spent on Fruits
SELECT MAX(MntFruits)FROM customer.marketing_campaign;
SELECT min(MntFruits) FROM customer.marketing_campaign;



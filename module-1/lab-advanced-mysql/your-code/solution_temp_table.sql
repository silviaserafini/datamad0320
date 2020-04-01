#CHALLANGE 2
USE publications;

DROP TABLE if exists ROYALTIES_TOT ;
DROP TABLE if exists ROYALTIES  ; 


CREATE TEMPORARY TABLE ROYALTIES(
     SELECT t.title_id AS TITLE_ID ,au.au_id AS AUTHOR_ID, t.price*s.qty*t.royalty/100 *tta.royaltyper/100 sales_royalty
        FROM authors as au
        JOIN titleauthor AS tta
		 ON tta.au_id = au.au_id
        JOIN titles AS t
		  ON tta.title_id = t.title_id
	    LEFT JOIN sales as s
		on t.title_id=s.title_id);
        

    
CREATE TEMPORARY TABLE ROYALTIES_TOT (
SELECT TITLE_ID , AUTHOR_ID, SUM(sales_royalty) sales_royaltysum
FROM ROYALTIES
GROUP BY TITLE_ID , AUTHOR_ID);
#SELECT * FROM ROYALTIES_TOT;

#SELECT * FROM ROYALTIES;

SELECT AUTHOR_ID, SUM(sales_royaltysum )+ SUM(tta.royaltyper*t.advance) PROFIT 
FROM ROYALTIES_TOT AS rt
JOIN titleauthor AS tta
ON rt.AUTHOR_ID=tta.au_id
JOIN titles AS t
ON tta.title_id=t.title_id
GROUP BY AUTHOR_ID
ORDER BY PROFIT DESC
LIMIT 3;

#CHALLANGE 3
 CREATE TABLE IF NOT EXISTS most_profiting_authors AS(SELECT AUTHOR_ID, SUM(sales_royalty) + SUM(tta.royaltyper*t.advance) PROFIT
	FROM (SELECT t.title_id AS TITLE_ID ,au.au_id AS AUTHOR_ID,
    SUM(t.price*s.qty*t.royalty/100 *tta.royaltyper/100) sales_royalty
	FROM authors as au
	  JOIN titleauthor AS tta
		ON tta.au_id = au.au_id
	  JOIN titles AS t
		ON tta.title_id = t.title_id
	  LEFT JOIN sales as s
		on t.title_id=s.title_id
	GROUP BY au.au_id,t.title_id) AS ROY
    JOIN titleauthor AS tta
		ON tta.au_id = ROY.AUTHOR_ID
	  JOIN titles AS t
		ON tta.title_id = t.title_id
    
	 GROUP BY AUTHOR_ID
     ORDER BY PROFIT DESC
     LIMIT 3);


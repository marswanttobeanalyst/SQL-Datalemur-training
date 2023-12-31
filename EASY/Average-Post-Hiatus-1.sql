SELECT 
	user_id, 
    MAX(post_date::DATE) - MIN(post_date::DATE) AS days_between
FROM posts
WHERE post_date BETWEEN '01-01-2021' AND '12-31-2021'
GROUP BY user_id
HAVING COUNT(post_id)>1;

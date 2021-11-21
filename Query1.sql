select CATEGORY, round(AVG(rating),4) AS USER_RATING, round(avg(size),4) as SIZE, floor(avg(Maximum_Installs)) as DOWNLOADS,
CASE 
WHEN Free=true then 'Free Apps' 
else 'Paid Apps'
end as APP_TYPE from ctassignment2-331918.CA675.app_info group by Free, category order by CATEGORY, SIZE DESC, USER_RATING ASC;

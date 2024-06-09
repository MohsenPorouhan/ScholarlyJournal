select 
eva.* 
,ARTICLE.*
,people.*
,(select concat(FIRSTNAME,' '||lastname)fullname from PEOPLE where PEOPLE.id=eva.FK_PEOPLE_ID)referee_name
from 
PEOPLE ,ARTICLE,EVALUATORGROUP eva
where 1=1
and people.id=article.FK_PEOPLE_ID
and article.id=eva.FK_ARTICLE_ID
and article.id=1
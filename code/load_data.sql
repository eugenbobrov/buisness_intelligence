-- ---
-- Load Data to scheme
-- ---

LOAD DATA LOCAL INFILE
  '/home/eugen/Documents/Sem7/diploma/author.csv'
INTO TABLE author IGNORE 1 LINES
  (@c1, @c2) SET author_id=@c1, author_name=@c2;
  
LOAD DATA LOCAL INFILE
  '/home/eugen/Documents/Sem7/diploma/doctype.csv'
INTO TABLE doctype IGNORE 1 LINES
  (@c1, @c2) SET doctype_id=@c1, doctype_name=@c2;
  
LOAD DATA LOCAL INFILE
  '/home/eugen/Documents/Sem7/diploma/keyword.csv'
INTO TABLE keyword IGNORE 1 LINES
  (@c1, @c2, @c3) SET keyword_id=@c1, keyword_name=@c2, keyword_type=@c3;
  
LOAD DATA LOCAL INFILE
  '/home/eugen/Documents/Sem7/diploma/language.csv'
INTO TABLE language IGNORE 1 LINES
  (@c1, @c2) SET language_id=@c1, language_name=@c2;
  
LOAD DATA LOCAL INFILE
  '/home/eugen/Documents/Sem7/diploma/journal.csv'
INTO TABLE journal IGNORE 1 LINES
  (@c1, @c2) SET journal_id=@c1, journal_name=@c2;
  
LOAD DATA LOCAL INFILE
  '/home/eugen/Documents/Sem7/diploma/university.csv'
INTO TABLE university IGNORE 1 LINES
  (@c1, @c2) SET university_id=@c1, university_name=@c2;
  
LOAD DATA LOCAL INFILE
  '/home/eugen/Documents/Sem7/diploma/country.csv'
INTO TABLE country IGNORE 1 LINES
  (@c1, @c2) SET country_id=@c1, country_name=@c2;
  
LOAD DATA LOCAL INFILE
  '/home/eugen/Documents/Sem7/diploma/map_article_keyword.csv'
INTO TABLE map_article_keyword IGNORE 1 LINES
  (@c1, @c2) SET article_id=@c2, keyword_id=@c1;
  
LOAD DATA LOCAL INFILE 
  '/home/eugen/Documents/Sem7/diploma/map_article_university_country.csv'
INTO TABLE map_article_university_country IGNORE 1 LINES
  (@c1, @c2, @c3) SET article_id=@c1, university_id=@c2, country_id=@c3;
  
LOAD DATA LOCAL INFILE
  '/home/eugen/Documents/Sem7/diploma/map_article_author.csv'
INTO TABLE map_article_author IGNORE 1 LINES
(@c1, @c2) SET article_id=@c2, author_id=@c1;

LOAD DATA LOCAL INFILE
  '/home/eugen/Documents/Sem7/diploma/article.csv'
INTO TABLE article IGNORE 1 LINES
  (@c1, @c2, @c3, @c4, @c5, @c6, @c7, @c8, @c9)
SET article_id=@c1, title=@c2, abstract=@c7, article_year=@c9, 
  doctype_id=@c4, journal_id=@c8, language_id=@c3, 
  related_records_count=@c5, references_count=@c6;
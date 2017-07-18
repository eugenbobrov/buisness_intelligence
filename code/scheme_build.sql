DROP TABLE IF EXISTS
  sn_bobrov.map_article_keyword,
  sn_bobrov.map_article_university_country,
  sn_bobrov.map_article_author,
  sn_bobrov.article,
  sn_bobrov.author,
  sn_bobrov.doctype,
  sn_bobrov.language,
  sn_bobrov.keyword,
  sn_bobrov.journal,
  sn_bobrov.university,
  sn_bobrov.country;
   
		
CREATE TABLE sn_bobrov.author (
  author_id INTEGER PRIMARY KEY,
  author_name TEXT );

		
CREATE TABLE sn_bobrov.doctype (
  doctype_id INTEGER PRIMARY KEY,
  doctype_name TEXT );

		
CREATE TABLE sn_bobrov.language (
  language_id INTEGER PRIMARY KEY,
  language_name TEXT);

	
CREATE TABLE sn_bobrov.keyword (
  keyword_id INTEGER PRIMARY KEY,
  keyword_name TEXT,
  keyword_type CHAR );

		
CREATE TABLE sn_bobrov.journal (
  journal_id INTEGER PRIMARY KEY,
  journal_name TEXT );

	
CREATE TABLE sn_bobrov.university (
  university_id INTEGER PRIMARY KEY,
  university_name TEXT );

		
CREATE TABLE sn_bobrov.country (
  country_id INTEGER PRIMARY KEY,
  country_name TEXT );

	
CREATE TABLE sn_bobrov.article (
  article_id INTEGER PRIMARY KEY,
  title TEXT,
  abstract TEXT,
  article_year INTEGER,
  doctype_id INTEGER REFERENCES sn_bobrov.doctype,
  journal_id INTEGER REFERENCES sn_bobrov.journal,
  language_id INTEGER REFERENCES sn_bobrov.language,
  related_records_count INTEGER,
  references_count INTEGER );

		
CREATE TABLE sn_bobrov.map_article_keyword (
  article_id INTEGER REFERENCES sn_bobrov.article,
  keyword_id INTEGER REFERENCES sn_bobrov.keyword,
  PRIMARY KEY (article_id, keyword_id) );

		
CREATE TABLE sn_bobrov.map_article_university_country (
  article_id INTEGER REFERENCES sn_bobrov.article,
  university_id INTEGER REFERENCES sn_bobrov.university,
  country_id INTEGER REFERENCES sn_bobrov.country,
  PRIMARY KEY (article_id, university_id, country_id) );

		
CREATE TABLE sn_bobrov.map_article_author (
  article_id INTEGER REFERENCES sn_bobrov.article,
  author_id INTEGER REFERENCES sn_bobrov.author,
  PRIMARY KEY (article_id, author_id) );


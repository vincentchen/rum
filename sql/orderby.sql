CREATE TABLE tsts (id int, t tsvector, d timestamp);

\copy tsts from 'data/tsts.data'

CREATE INDEX tsts_idx ON tsts USING rum (t rum_tsvector_timestamp_ops, d)
	WITH (orderby = 'd', addto = 't');


INSERT INTO tsts VALUES (-1, 't1 t2',  '2016-05-02 02:24:22.326724'); 
INSERT INTO tsts VALUES (-2, 't1 t2 t3',  '2016-05-02 02:26:22.326724'); 

CREATE TABLE public.cetba (
	id varchar NOT NULL,
	nazev varchar NOT NULL,
	originalni_nazev varchar NULL,
	popis text NOT NULL,
	nahled varchar NOT NULL,
	overeno bool DEFAULT false NOT NULL,
	autor int2 NOT NULL,
	obdobi int2 NOT NULL,
	literarni_druh int2 NOT NULL,
	vydani date NOT NULL,
	medium_video bool DEFAULT false NOT NULL,
	medium_ekniha bool DEFAULT false NOT NULL,
	medium_audiokniha bool DEFAULT false NOT NULL,
	medium_eshop bool DEFAULT false NOT NULL,
	interni_poznamka text NULL,
	CONSTRAINT cetba_pk PRIMARY KEY (id)
);
CREATE TABLE public.autori (
	id int2 GENERATED ALWAYS AS IDENTITY NOT NULL,
	jmeno varchar NOT NULL,
	popis text NOT NULL,
	narozeni date NULL,
	umrti date NULL,
	fotka varchar NOT NULL,
	wikipedie varchar NOT NULL,
	obdobi int2 NOT NULL,
	CONSTRAINT autori_pk PRIMARY KEY (id)
);
CREATE TABLE public.obdobi (
	id int2 GENERATED ALWAYS AS IDENTITY NOT NULL,
	nazev varchar NOT NULL,
	CONSTRAINT obdobi_pk PRIMARY KEY (id)
);
CREATE TABLE public.literarni_druhy (
	id int2 GENERATED ALWAYS AS IDENTITY NOT NULL,
	nazev varchar NOT NULL,
	CONSTRAINT literarni_druhy_pk PRIMARY KEY (id)
);
CREATE TABLE public.medium_video (
	cetba_id varchar NOT NULL,
	url varchar NOT NULL,
	popis varchar NULL
);
CREATE TABLE public.medium_ekniha (
	cetba_id varchar NOT NULL,
	url varchar NOT NULL,
	typ varchar NOT NULL
);
CREATE TABLE public.medium_audiokniha (
	cetba_id varchar NOT NULL,
	url varchar NOT NULL,
	popis varchar NOT NULL
);
CREATE TABLE public.medium_eshop (
	cetba_id varchar NOT NULL,
	url varchar NOT NULL,
	eshop varchar NOT NULL
);
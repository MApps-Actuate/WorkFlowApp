CREATE DATABASE workflow
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
    
CREATE TABLE public.comments
(
    "ID" integer NOT NULL DEFAULT nextval('"comments_ID_seq"'::regclass),
    "cKey" character varying(50) COLLATE pg_catalog."default" NOT NULL,
    "Content" text COLLATE pg_catalog."default" NOT NULL,
    "cDate" timestamp without time zone NOT NULL,
    "cUser" character varying(45) COLLATE pg_catalog."default" NOT NULL,
    "FullReportName" character varying(256) COLLATE pg_catalog."default" NOT NULL,
    "Status" character varying(45) COLLATE pg_catalog."default" NOT NULL,
    "shortContent" character varying(55) COLLATE pg_catalog."default",
    CONSTRAINT id PRIMARY KEY ("ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.comments
    OWNER to postgres;

GRANT ALL ON TABLE public.comments TO wfapp;

GRANT ALL ON TABLE public.comments TO postgres;

GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO wfapp;
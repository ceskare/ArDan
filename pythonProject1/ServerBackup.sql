--
-- PostgreSQL database cluster dump
--

-- Started on 2023-10-24 20:09:32

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md5218e525d54a4b3a8e72598428c11e78c';






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.0

-- Started on 2023-10-24 20:09:32

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2023-10-24 20:09:32

--
-- PostgreSQL database dump complete
--

--
-- Database "orders" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.0

-- Started on 2023-10-24 20:09:32

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2860 (class 1262 OID 16770)
-- Name: orders; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE orders WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Czech_Czechia.1250' LC_CTYPE = 'Czech_Czechia.1250';


ALTER DATABASE orders OWNER TO postgres;

\connect orders

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2023-10-24 20:09:32

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.0

-- Started on 2023-10-24 20:09:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2861 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


-- Completed on 2023-10-24 20:09:33

--
-- PostgreSQL database dump complete
--

--
-- Database "products" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.0

-- Started on 2023-10-24 20:09:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2860 (class 1262 OID 16771)
-- Name: products; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE products WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Czech_Czechia.1250' LC_CTYPE = 'Czech_Czechia.1250';


ALTER DATABASE products OWNER TO postgres;

\connect products

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2023-10-24 20:09:33

--
-- PostgreSQL database dump complete
--

--
-- Database "task" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.0

-- Started on 2023-10-24 20:09:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3033 (class 1262 OID 16565)
-- Name: task; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE task WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Czech_Czechia.1250' LC_CTYPE = 'Czech_Czechia.1250';


ALTER DATABASE task OWNER TO postgres;

\connect task

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 207 (class 1259 OID 16590)
-- Name: DjangoTaskApp_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DjangoTaskApp_comment" (
    id bigint NOT NULL,
    text text NOT NULL,
    date timestamp with time zone NOT NULL,
    post_id bigint NOT NULL
);


ALTER TABLE public."DjangoTaskApp_comment" OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16588)
-- Name: DjangoTaskApp_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DjangoTaskApp_comment_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DjangoTaskApp_comment_id_seq" OWNER TO postgres;

--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 206
-- Name: DjangoTaskApp_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DjangoTaskApp_comment_id_seq" OWNED BY public."DjangoTaskApp_comment".id;


--
-- TOC entry 205 (class 1259 OID 16579)
-- Name: DjangoTaskApp_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DjangoTaskApp_post" (
    id bigint NOT NULL,
    title text NOT NULL,
    text text NOT NULL,
    date timestamp with time zone NOT NULL,
    likes integer NOT NULL
);


ALTER TABLE public."DjangoTaskApp_post" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16577)
-- Name: DjangoTaskApp_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DjangoTaskApp_post_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DjangoTaskApp_post_id_seq" OWNER TO postgres;

--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 204
-- Name: DjangoTaskApp_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DjangoTaskApp_post_id_seq" OWNED BY public."DjangoTaskApp_post".id;


--
-- TOC entry 213 (class 1259 OID 16625)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16623)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 215 (class 1259 OID 16635)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16633)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 211 (class 1259 OID 16617)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16615)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 217 (class 1259 OID 16643)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16653)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16651)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 216 (class 1259 OID 16641)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 221 (class 1259 OID 16661)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16659)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 223 (class 1259 OID 16721)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16719)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 222
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 209 (class 1259 OID 16607)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16605)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 208
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 203 (class 1259 OID 16568)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16566)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 224 (class 1259 OID 16752)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 2807 (class 2604 OID 16593)
-- Name: DjangoTaskApp_comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DjangoTaskApp_comment" ALTER COLUMN id SET DEFAULT nextval('public."DjangoTaskApp_comment_id_seq"'::regclass);


--
-- TOC entry 2806 (class 2604 OID 16582)
-- Name: DjangoTaskApp_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DjangoTaskApp_post" ALTER COLUMN id SET DEFAULT nextval('public."DjangoTaskApp_post_id_seq"'::regclass);


--
-- TOC entry 2810 (class 2604 OID 16628)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2811 (class 2604 OID 16638)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2809 (class 2604 OID 16620)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2812 (class 2604 OID 16646)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2813 (class 2604 OID 16656)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2814 (class 2604 OID 16664)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2815 (class 2604 OID 16724)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 16610)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2805 (class 2604 OID 16571)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3010 (class 0 OID 16590)
-- Dependencies: 207
-- Data for Name: DjangoTaskApp_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DjangoTaskApp_comment" (id, text, date, post_id) FROM stdin;
\.


--
-- TOC entry 3008 (class 0 OID 16579)
-- Dependencies: 205
-- Data for Name: DjangoTaskApp_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DjangoTaskApp_post" (id, title, text, date, likes) FROM stdin;
1	123	Hello	2023-10-09 17:19:37.629966+03	0
2	Post	Welcome	2023-10-09 19:33:45.742977+03	0
\.


--
-- TOC entry 3016 (class 0 OID 16625)
-- Dependencies: 213
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3018 (class 0 OID 16635)
-- Dependencies: 215
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3014 (class 0 OID 16617)
-- Dependencies: 211
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Пост	7	add_post
26	Can change Пост	7	change_post
27	Can delete Пост	7	delete_post
28	Can view Пост	7	view_post
29	Can add Комментарий	8	add_comment
30	Can change Комментарий	8	change_comment
31	Can delete Комментарий	8	delete_comment
32	Can view Комментарий	8	view_comment
\.


--
-- TOC entry 3020 (class 0 OID 16643)
-- Dependencies: 217
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$oBmt0Pg5uLorfiwfG1dZvy$kzfZtKcq4Y5ITMpax0WHZwUmiaz5rU1vyxiPZwd7bqs=	2023-10-09 19:34:27.225491+03	t	arsla				t	t	2023-10-09 17:18:12.004103+03
\.


--
-- TOC entry 3022 (class 0 OID 16653)
-- Dependencies: 219
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3024 (class 0 OID 16661)
-- Dependencies: 221
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3026 (class 0 OID 16721)
-- Dependencies: 223
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-10-09 17:19:37.635585+03	1	123	1	[{"added": {}}]	7	1
2	2023-10-09 19:33:45.742977+03	2	Без русских	1	[{"added": {}}]	7	1
3	2023-10-16 15:59:03.574572+03	2	Post	2	[{"changed": {"fields": ["\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a", "\\u0422\\u0435\\u043a\\u0441\\u0442"]}}]	7	1
\.


--
-- TOC entry 3012 (class 0 OID 16607)
-- Dependencies: 209
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	DjangoTaskApp	post
8	DjangoTaskApp	comment
\.


--
-- TOC entry 3006 (class 0 OID 16568)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	DjangoTaskApp	0001_initial	2023-10-09 17:17:41.95031+03
2	contenttypes	0001_initial	2023-10-09 17:17:41.971551+03
3	auth	0001_initial	2023-10-09 17:17:42.13735+03
4	admin	0001_initial	2023-10-09 17:17:42.180096+03
5	admin	0002_logentry_remove_auto_add	2023-10-09 17:17:42.195648+03
6	admin	0003_logentry_add_action_flag_choices	2023-10-09 17:17:42.201528+03
7	contenttypes	0002_remove_content_type_name	2023-10-09 17:17:42.222447+03
8	auth	0002_alter_permission_name_max_length	2023-10-09 17:17:42.25079+03
9	auth	0003_alter_user_email_max_length	2023-10-09 17:17:42.265173+03
10	auth	0004_alter_user_username_opts	2023-10-09 17:17:42.275527+03
11	auth	0005_alter_user_last_login_null	2023-10-09 17:17:42.297087+03
12	auth	0006_require_contenttypes_0002	2023-10-09 17:17:42.297087+03
13	auth	0007_alter_validators_add_error_messages	2023-10-09 17:17:42.307692+03
14	auth	0008_alter_user_username_max_length	2023-10-09 17:17:42.351106+03
15	auth	0009_alter_user_last_name_max_length	2023-10-09 17:17:42.366236+03
16	auth	0010_alter_group_name_max_length	2023-10-09 17:17:42.376948+03
17	auth	0011_update_proxy_permissions	2023-10-09 17:17:42.393233+03
18	auth	0012_alter_user_first_name_max_length	2023-10-09 17:17:42.414561+03
19	sessions	0001_initial	2023-10-09 17:17:42.440621+03
\.


--
-- TOC entry 3027 (class 0 OID 16752)
-- Dependencies: 224
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
hdgtt9ctti5bm8gydlyn802y8yycfy3b	.eJxVjMsOwiAQRf-FtSEzlKdL934DAQakaiAp7cr479qkC93ec859MR-2tfpt5MXPxM4M2el3iyE9ctsB3UO7dZ56W5c58l3hBx382ik_L4f7d1DDqN9amOig4ATWoNNKkjJaQCSwOBkSZLRLCUtIBopFSdq6QqDdZEGiKoK9P67PNpA:1qptD9:7GBvB2xCIl6SqKQTr8PdNpddsZAVPUSOhgWovbgr69M	2023-10-23 19:34:27.225491+03
\.


--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 206
-- Name: DjangoTaskApp_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DjangoTaskApp_comment_id_seq"', 1, false);


--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 204
-- Name: DjangoTaskApp_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DjangoTaskApp_post_id_seq"', 2, true);


--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 222
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);


--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 208
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- TOC entry 2822 (class 2606 OID 16598)
-- Name: DjangoTaskApp_comment DjangoTaskApp_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DjangoTaskApp_comment"
    ADD CONSTRAINT "DjangoTaskApp_comment_pkey" PRIMARY KEY (id);


--
-- TOC entry 2820 (class 2606 OID 16587)
-- Name: DjangoTaskApp_post DjangoTaskApp_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DjangoTaskApp_post"
    ADD CONSTRAINT "DjangoTaskApp_post_pkey" PRIMARY KEY (id);


--
-- TOC entry 2835 (class 2606 OID 16750)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2840 (class 2606 OID 16677)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2843 (class 2606 OID 16640)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2837 (class 2606 OID 16630)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2830 (class 2606 OID 16668)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2832 (class 2606 OID 16622)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2851 (class 2606 OID 16658)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2854 (class 2606 OID 16692)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2845 (class 2606 OID 16648)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2857 (class 2606 OID 16666)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2860 (class 2606 OID 16706)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2848 (class 2606 OID 16744)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2863 (class 2606 OID 16730)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2825 (class 2606 OID 16614)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2827 (class 2606 OID 16612)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2818 (class 2606 OID 16576)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2867 (class 2606 OID 16759)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2823 (class 1259 OID 16604)
-- Name: DjangoTaskApp_comment_post_id_0aa9123d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DjangoTaskApp_comment_post_id_0aa9123d" ON public."DjangoTaskApp_comment" USING btree (post_id);


--
-- TOC entry 2833 (class 1259 OID 16751)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2838 (class 1259 OID 16688)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2841 (class 1259 OID 16689)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2828 (class 1259 OID 16674)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2849 (class 1259 OID 16704)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2852 (class 1259 OID 16703)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2855 (class 1259 OID 16718)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2858 (class 1259 OID 16717)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2846 (class 1259 OID 16745)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2861 (class 1259 OID 16741)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2864 (class 1259 OID 16742)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2865 (class 1259 OID 16761)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2868 (class 1259 OID 16760)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2869 (class 2606 OID 16599)
-- Name: DjangoTaskApp_comment DjangoTaskApp_comment_post_id_0aa9123d_fk_DjangoTaskApp_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DjangoTaskApp_comment"
    ADD CONSTRAINT "DjangoTaskApp_comment_post_id_0aa9123d_fk_DjangoTaskApp_post_id" FOREIGN KEY (post_id) REFERENCES public."DjangoTaskApp_post"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2872 (class 2606 OID 16683)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2871 (class 2606 OID 16678)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2870 (class 2606 OID 16669)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2874 (class 2606 OID 16698)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2873 (class 2606 OID 16693)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2876 (class 2606 OID 16712)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2875 (class 2606 OID 16707)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2877 (class 2606 OID 16731)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2878 (class 2606 OID 16736)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2023-10-24 20:09:34

--
-- PostgreSQL database dump complete
--

--
-- Database "testdb" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.0

-- Started on 2023-10-24 20:09:34

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3079 (class 1262 OID 16393)
-- Name: testdb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE testdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Czech_Czechia.1250' LC_CTYPE = 'Czech_Czechia.1250';


ALTER DATABASE testdb OWNER TO postgres;

\connect testdb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 16422)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16420)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 16431)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16429)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 207 (class 1259 OID 16415)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16413)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 16438)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16447)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16445)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 212 (class 1259 OID 16436)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16454)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16452)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16513)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16511)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 205 (class 1259 OID 16406)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16404)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 203 (class 1259 OID 16396)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16394)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 16543)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16865)
-- Name: orders_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_order (
    id bigint NOT NULL,
    customer_name character varying(32),
    customer_email character varying(254),
    customer_phone character varying(12),
    comments text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    status_id bigint NOT NULL
);


ALTER TABLE public.orders_order OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16863)
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders_order ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 234 (class 1259 OID 16882)
-- Name: orders_productinorder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_productinorder (
    id bigint NOT NULL,
    customer_name character varying(32),
    customer_email character varying(254),
    customer_phone character varying(12),
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    order_id bigint,
    product_id bigint
);


ALTER TABLE public.orders_productinorder OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16880)
-- Name: orders_productinorder_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders_productinorder ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.orders_productinorder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 16875)
-- Name: orders_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_status (
    id bigint NOT NULL,
    name character varying(32),
    status boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.orders_status OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16873)
-- Name: orders_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders_status ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.orders_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 16842)
-- Name: products_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_product (
    id bigint NOT NULL,
    name character varying(32) NOT NULL,
    description text,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    price character varying(32) NOT NULL
);


ALTER TABLE public.products_product OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16840)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products_product ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.products_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 16852)
-- Name: products_productimage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_productimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    product_id bigint
);


ALTER TABLE public.products_productimage OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16850)
-- Name: products_productimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products_productimage ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.products_productimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16555)
-- Name: test_app_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_app_post (
    id bigint NOT NULL,
    likes integer NOT NULL,
    date timestamp with time zone NOT NULL,
    text text NOT NULL
);


ALTER TABLE public.test_app_post OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16553)
-- Name: test_app_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.test_app_post ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.test_app_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 16765)
-- Name: test_app_subscriber; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_app_subscriber (
    id bigint NOT NULL,
    email character varying(254) NOT NULL,
    name character varying(32) NOT NULL
);


ALTER TABLE public.test_app_subscriber OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16763)
-- Name: test_app_subscriber_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.test_app_subscriber ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.test_app_subscriber_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3048 (class 0 OID 16422)
-- Dependencies: 209
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3050 (class 0 OID 16431)
-- Dependencies: 211
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3046 (class 0 OID 16415)
-- Dependencies: 207
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add post	7	add_post
26	Can change post	7	change_post
27	Can delete post	7	delete_post
28	Can view post	7	view_post
29	Can add subscriber	8	add_subscriber
30	Can change subscriber	8	change_subscriber
31	Can delete subscriber	8	delete_subscriber
32	Can view subscriber	8	view_subscriber
33	Can add Статус	9	add_status
34	Can change Статус	9	change_status
35	Can delete Статус	9	delete_status
36	Can view Статус	9	view_status
37	Can add Заказ	10	add_order
38	Can change Заказ	10	change_order
39	Can delete Заказ	10	delete_order
40	Can view Заказ	10	view_order
41	Can add Товар	11	add_productinorder
42	Can change Товар	11	change_productinorder
43	Can delete Товар	11	delete_productinorder
44	Can view Товар	11	view_productinorder
45	Can add Товар	12	add_product
46	Can change Товар	12	change_product
47	Can delete Товар	12	delete_product
48	Can view Товар	12	view_product
49	Can add Фотография	13	add_productimage
50	Can change Фотография	13	change_productimage
51	Can delete Фотография	13	delete_productimage
52	Can view Фотография	13	view_productimage
\.


--
-- TOC entry 3052 (class 0 OID 16438)
-- Dependencies: 213
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$600000$zZmmY4lUqSgvLzAFt5yESO$C5E4glM+PE/AeRCI/i0U5GJ7EO44POsnM0vvrfkOSwM=	2023-10-02 16:28:43.786948+03	t	Admin			stolyarovc1@mail.ru	t	t	2023-10-02 16:19:43.084832+03
2	pbkdf2_sha256$600000$Q1hVpYEOUkmaHQfCrn6SgA$PxYyi5FQZnFl4sK/m0JWtkoRLl1EoAD4vuExZdnPn5s=	2023-10-23 11:39:59.437051+03	t	admin				t	t	2023-10-18 16:37:07.709117+03
\.


--
-- TOC entry 3054 (class 0 OID 16447)
-- Dependencies: 215
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3056 (class 0 OID 16454)
-- Dependencies: 217
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3058 (class 0 OID 16513)
-- Dependencies: 219
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-10-02 16:29:10.507046+03	1	Post object (1)	1	[{"added": {}}]	7	1
2	2023-10-02 16:29:50.720329+03	2	Post object (2)	1	[{"added": {}}]	7	1
3	2023-10-02 16:30:10.624118+03	3	Post object (3)	1	[{"added": {}}]	7	1
4	2023-10-02 16:30:19.651159+03	4	Post object (4)	1	[{"added": {}}]	7	1
5	2023-10-02 16:30:30.400019+03	5	Post object (5)	1	[{"added": {}}]	7	1
6	2023-10-02 16:30:44.010807+03	6	Post object (6)	1	[{"added": {}}]	7	1
7	2023-10-02 16:31:12.138435+03	7	Post object (7)	1	[{"added": {}}]	7	1
8	2023-10-02 16:31:20.30921+03	8	Post object (8)	1	[{"added": {}}]	7	1
9	2023-10-02 16:31:29.156578+03	9	Post object (9)	1	[{"added": {}}]	7	1
10	2023-10-02 16:31:37.631798+03	10	Post object (10)	1	[{"added": {}}]	7	1
11	2023-10-20 11:33:05.57902+03	1	tuk8d2wh3@relay.firefox.com ReLU	1	[{"added": {}}]	8	2
12	2023-10-23 12:20:03.760966+03	1	1	1	[{"added": {}}]	12	2
13	2023-10-23 12:21:59.905595+03	2	2 Смартфон Apple iPhone 15 Pro Max 1024Gb Blue Titanium	1	[{"added": {}}]	12	2
14	2023-10-23 12:24:52.823738+03	3	3 Смартфон Apple iPhone 15 Pro 128Gb Natural Titanium	1	[{"added": {}}]	12	2
15	2023-10-23 12:26:00.126331+03	4	4 Смартфон Apple iPhone 15 Pro 1024Gb White Titanium	1	[{"added": {}}]	12	2
16	2023-10-23 12:27:13.212861+03	5	5 Смартфон Apple iPhone 15 Plus 128Gb Blue	1	[{"added": {}}]	12	2
17	2023-10-23 12:27:50.439696+03	6	6 Смартфон Apple iPhone 15 128Gb Blue	1	[{"added": {}}]	12	2
18	2023-10-23 12:30:00.576411+03	1	Apple iPhone 15 Plus 12	1	[{"added": {}}]	13	2
19	2023-10-23 12:30:35.255077+03	1	Apple iPhone 15 128Gb	2	[{"changed": {"fields": ["Product"]}}]	13	2
20	2023-10-23 12:30:49.124732+03	2	Apple iPhone 15 Plus 12	1	[{"added": {}}]	13	2
21	2023-10-23 12:32:02.302074+03	3	Apple iPhone 15 Pro	1	[{"added": {}}]	13	2
22	2023-10-23 12:32:15.205808+03	4	Apple iPhone 15 Pro	1	[{"added": {}}]	13	2
23	2023-10-23 12:32:46.008229+03	5	Apple iPhone 15 Pro Max	1	[{"added": {}}]	13	2
24	2023-10-23 12:32:54.910292+03	6	Apple iPhone 15 Pro Max	1	[{"added": {}}]	13	2
25	2023-10-23 21:24:45.562071+03	1	Статус Новый заказ	1	[{"added": {}}]	9	2
26	2023-10-23 21:24:53.468014+03	2	Статус Получен	1	[{"added": {}}]	9	2
27	2023-10-23 21:25:01.653716+03	3	Статус Отменен	1	[{"added": {}}]	9	2
\.


--
-- TOC entry 3044 (class 0 OID 16406)
-- Dependencies: 205
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	test_app	post
8	test_app	subscriber
9	orders	status
10	orders	order
11	orders	productinorder
12	products	product
13	products	productimage
\.


--
-- TOC entry 3042 (class 0 OID 16396)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-09-25 16:59:38.976816+03
2	auth	0001_initial	2023-09-25 16:59:39.130489+03
3	admin	0001_initial	2023-09-25 16:59:39.161759+03
4	admin	0002_logentry_remove_auto_add	2023-09-25 16:59:39.161759+03
5	admin	0003_logentry_add_action_flag_choices	2023-09-25 16:59:39.161759+03
6	contenttypes	0002_remove_content_type_name	2023-09-25 16:59:39.177383+03
7	auth	0002_alter_permission_name_max_length	2023-09-25 16:59:39.193008+03
8	auth	0003_alter_user_email_max_length	2023-09-25 16:59:39.193008+03
9	auth	0004_alter_user_username_opts	2023-09-25 16:59:39.208633+03
10	auth	0005_alter_user_last_login_null	2023-09-25 16:59:39.208633+03
11	auth	0006_require_contenttypes_0002	2023-09-25 16:59:39.224257+03
12	auth	0007_alter_validators_add_error_messages	2023-09-25 16:59:39.23077+03
13	auth	0008_alter_user_username_max_length	2023-09-25 16:59:39.24641+03
14	auth	0009_alter_user_last_name_max_length	2023-09-25 16:59:39.24641+03
15	auth	0010_alter_group_name_max_length	2023-09-25 16:59:39.262036+03
16	auth	0011_update_proxy_permissions	2023-09-25 16:59:39.262036+03
17	auth	0012_alter_user_first_name_max_length	2023-09-25 16:59:39.27766+03
18	sessions	0001_initial	2023-09-25 16:59:39.293285+03
19	test_app	0001_initial	2023-09-25 17:19:38.517257+03
20	test_app	0002_post_date_post_text	2023-09-25 17:22:45.035125+03
21	test_app	0003_subscriber_alter_post_options_alter_post_text	2023-10-20 11:22:32.510024+03
22	test_app	0004_alter_subscriber_options	2023-10-20 16:57:48.884366+03
23	products	0001_initial	2023-10-23 11:52:21.207201+03
24	orders	0001_initial	2023-10-23 11:52:21.263203+03
25	products	0002_product_price_alter_product_name	2023-10-23 12:19:16.166979+03
\.


--
-- TOC entry 3059 (class 0 OID 16543)
-- Dependencies: 220
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
vluw9hgjqeqlpk238jm2g1l8crk32b46	.eJxVjDsOwjAQBe_iGllrO_5R0nMGa73r4ABypDipEHeHSCmgfTPzXiLhtta09bKkicVZKHH63TLSo7Qd8B3bbZY0t3WZstwVedAurzOX5-Vw_w4q9vqtbdRjhJCtHTQZMMFqh9khMaoBIHqfHQOqEMkoiNYRhUAeFRhUyKN4fwC5tDcu:1qnIyZ:U1-FMIFwakVY2vhIvSOhocLaDDhGT8j7g4LLPVd1I0o	2023-10-16 16:28:43.786948+03
l7o4auxduff2afupauvfv328fij6e563	.eJxVjEEOwiAQRe_C2hCgMoBL956BDMxUqgaS0q6Md7dNutDte-__t4i4LiWunec4kbgII06_LGF-ct0FPbDem8ytLvOU5J7Iw3Z5a8Sv69H-HRTsZVtbrUAzUUClIbDyiUJOAUl5Gs4WBzSQvBt4ZHJ-AwAuOxoN5MSgrPh8AeoNODs:1qt6k0:W31EhgVJLCEUH3hEWx2-8OBkjy0sdg1vr9KK8RkwfIw	2023-11-01 16:37:40.082047+03
yhqo2pjidlo9ujlvqmj75amygjcabfl3	.eJxVjEEOwiAQRe_C2hCgMoBL956BDMxUqgaS0q6Md7dNutDte-__t4i4LiWunec4kbgII06_LGF-ct0FPbDem8ytLvOU5J7Iw3Z5a8Sv69H-HRTsZVtbrUAzUUClIbDyiUJOAUl5Gs4WBzSQvBt4ZHJ-AwAuOxoN5MSgrPh8AeoNODs:1quqTf:810-ykyktKJZtH9VskolbpEpSd7b0vlttJrplTS3ifI	2023-11-06 11:39:59.445981+03
\.


--
-- TOC entry 3069 (class 0 OID 16865)
-- Dependencies: 230
-- Data for Name: orders_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_order (id, customer_name, customer_email, customer_phone, comments, created, updated, status_id) FROM stdin;
\.


--
-- TOC entry 3073 (class 0 OID 16882)
-- Dependencies: 234
-- Data for Name: orders_productinorder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_productinorder (id, customer_name, customer_email, customer_phone, is_active, created, updated, order_id, product_id) FROM stdin;
\.


--
-- TOC entry 3071 (class 0 OID 16875)
-- Dependencies: 232
-- Data for Name: orders_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_status (id, name, status, created, updated) FROM stdin;
1	Новый заказ	t	2023-10-23 21:24:45.553066+03	2023-10-23 21:24:45.553066+03
2	Получен	t	2023-10-23 21:24:53.466012+03	2023-10-23 21:24:53.466012+03
3	Отменен	t	2023-10-23 21:25:01.651721+03	2023-10-23 21:25:01.651721+03
\.


--
-- TOC entry 3065 (class 0 OID 16842)
-- Dependencies: 226
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_product (id, name, description, is_active, created, updated, price) FROM stdin;
1	Apple iPhone 15 Pro Max	Смартфон Apple iPhone 15 Pro Max 512Gb Black Titanium	t	2023-10-23 12:20:03.75596+03	2023-10-23 12:20:03.75596+03	252990
2	Apple iPhone 15 Pro Max	Смартфон Apple iPhone 15 Pro Max 1024Gb Blue Titanium	t	2023-10-23 12:21:59.898591+03	2023-10-23 12:21:59.898591+03	291990
3	Apple iPhone 15 Pro	Смартфон Apple iPhone 15 Pro 128Gb Natural Titanium	t	2023-10-23 12:24:52.820741+03	2023-10-23 12:24:52.820741+03	173990
4	Apple iPhone 15 Pro	Смартфон Apple iPhone 15 Pro 1024Gb White Titanium	t	2023-10-23 12:26:00.120332+03	2023-10-23 12:26:00.120332+03	260990
5	Apple iPhone 15 Plus 12	Смартфон Apple iPhone 15 Plus 128Gb Blue	t	2023-10-23 12:27:13.209864+03	2023-10-23 12:27:13.209864+03	146990
6	Apple iPhone 15 128Gb	Смартфон Apple iPhone 15 128Gb Blue	t	2023-10-23 12:27:50.436696+03	2023-10-23 12:27:50.436696+03	125090
\.


--
-- TOC entry 3067 (class 0 OID 16852)
-- Dependencies: 228
-- Data for Name: products_productimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_productimage (id, image, is_active, created, updated, product_id) FROM stdin;
1	products_images/Blue.jpg	t	2023-10-23 12:30:00.567799+03	2023-10-23 12:30:35.253071+03	6
2	products_images/Blue_OnCDwHL.jpg	t	2023-10-23 12:30:49.121733+03	2023-10-23 12:30:49.121733+03	5
3	products_images/White_Titanium.jpg	t	2023-10-23 12:32:02.299074+03	2023-10-23 12:32:02.299074+03	4
4	products_images/Natural_Titanium.jpg	t	2023-10-23 12:32:15.2028+03	2023-10-23 12:32:15.2028+03	3
5	products_images/Blue_Titanium.jpg	t	2023-10-23 12:32:46.006232+03	2023-10-23 12:32:46.006232+03	2
6	products_images/Blue_Titanium_VvWNJpb.jpg	t	2023-10-23 12:32:54.907312+03	2023-10-23 12:32:54.907312+03	1
\.


--
-- TOC entry 3061 (class 0 OID 16555)
-- Dependencies: 222
-- Data for Name: test_app_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_app_post (id, likes, date, text) FROM stdin;
1	0	2023-10-02 16:29:08+03	В целом, конечно, глубокий уровень погружения, а также свежий взгляд на привычные вещи — безусловно открывает новые горизонты для прогресса профессионального сообщества. Господа, высококачественный прототип будущего проекта требует анализа благоприятных перспектив! Не следует, однако, забывать, что экономическая повестка сегодняшнего дня обеспечивает широкому кругу (специалистов) участие в формировании укрепления моральных ценностей.
2	0	2023-10-02 16:29:45+03	В рамках спецификации современных стандартов, предприниматели в сети интернет могут быть разоблачены. С другой стороны, глубокий уровень погружения говорит о возможностях модели развития. В своём стремлении улучшить пользовательский опыт мы упускаем, что многие известные личности ограничены исключительно образом мышления.
3	0	2023-10-02 16:30:09+03	Мы вынуждены отталкиваться от того, что курс на социально-ориентированный национальный проект влечет за собой процесс внедрения и модернизации глубокомысленных рассуждений. С учётом сложившейся международной обстановки, разбавленное изрядной долей эмпатии, рациональное мышление способствует повышению качества как самодостаточных, так и внешне зависимых концептуальных решений. Равным образом, дальнейшее развитие различных форм деятельности предопределяет высокую востребованность укрепления моральных ценностей.
4	0	2023-10-02 16:30:18+03	Картельные сговоры не допускают ситуации, при которой явные признаки победы институционализации призывают нас к новым свершениям, которые, в свою очередь, должны быть призваны к ответу. Повседневная практика показывает, что синтетическое тестирование предопределяет высокую востребованность глубокомысленных рассуждений. Кстати, базовые сценарии поведения пользователей объективно рассмотрены соответствующими инстанциями.
5	0	2023-10-02 16:30:28+03	Каждый из нас понимает очевидную вещь: граница обучения кадров играет определяющее значение для новых принципов формирования материально-технической и кадровой базы. Не следует, однако, забывать, что повышение уровня гражданского сознания предопределяет высокую востребованность укрепления моральных ценностей. Кстати, акционеры крупнейших компаний, превозмогая сложившуюся непростую экономическую ситуацию, объединены в целые кластеры себе подобных.
6	0	2023-10-02 16:30:41+03	Как уже неоднократно упомянуто, тщательные исследования конкурентов неоднозначны и будут обнародованы! Есть над чем задуматься: ключевые особенности структуры проекта и по сей день остаются уделом либералов, которые жаждут быть функционально разнесены на независимые элементы. Однозначно, явные признаки победы институционализации неоднозначны и будут функционально разнесены на независимые элементы.
7	0	2023-10-02 16:31:10+03	В целом, конечно, убеждённость некоторых оппонентов обеспечивает актуальность экспериментов, поражающих по своей масштабности и грандиозности. Господа, консультация с широким активом предоставляет широкие возможности для системы обучения кадров, соответствующей насущным потребностям. А также многие известные личности формируют глобальную экономическую сеть и при этом — объединены в целые кластеры себе подобных.
8	0	2023-10-02 16:31:19+03	Учитывая ключевые сценарии поведения, семантический разбор внешних противодействий позволяет выполнить важные задания по разработке анализа существующих паттернов поведения. Следует отметить, что убеждённость некоторых оппонентов требует от нас анализа направлений прогрессивного развития. Безусловно, укрепление и развитие внутренней структуры не даёт нам иного выбора, кроме определения существующих финансовых и административных условий.
9	0	2023-10-02 16:31:28+03	Безусловно, повышение уровня гражданского сознания не даёт нам иного выбора, кроме определения модели развития. В своём стремлении улучшить пользовательский опыт мы упускаем, что элементы политического процесса и по сей день остаются уделом либералов, которые жаждут быть указаны как претенденты на роль ключевых факторов. Следует отметить, что убеждённость некоторых оппонентов требует анализа экспериментов, поражающих по своей масштабности и грандиозности.
10	0	2023-10-02 16:31:36+03	Равным образом, постоянное информационно-пропагандистское обеспечение нашей деятельности обеспечивает широкому кругу (специалистов) участие в формировании своевременного выполнения сверхзадачи. Внезапно, стремящиеся вытеснить традиционное производство, нанотехнологии, превозмогая сложившуюся непростую экономическую ситуацию, описаны максимально подробно. А также предприниматели в сети интернет, которые представляют собой яркий пример континентально-европейского типа политической культуры, будут представлены в исключительно положительном свете.
\.


--
-- TOC entry 3063 (class 0 OID 16765)
-- Dependencies: 224
-- Data for Name: test_app_subscriber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_app_subscriber (id, email, name) FROM stdin;
1	tuk8d2wh3@relay.firefox.com	ReLU
\.


--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 27, true);


--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 229
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 1, false);


--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 233
-- Name: orders_productinorder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_productinorder_id_seq', 1, false);


--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 231
-- Name: orders_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_status_id_seq', 3, true);


--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 225
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 6, true);


--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 227
-- Name: products_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_productimage_id_seq', 6, true);


--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 221
-- Name: test_app_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_app_post_id_seq', 10, true);


--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 223
-- Name: test_app_subscriber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_app_subscriber_id_seq', 1, true);


--
-- TOC entry 2850 (class 2606 OID 16541)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2855 (class 2606 OID 16469)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2858 (class 2606 OID 16435)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2852 (class 2606 OID 16426)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2845 (class 2606 OID 16460)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2847 (class 2606 OID 16419)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2866 (class 2606 OID 16451)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2869 (class 2606 OID 16484)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2860 (class 2606 OID 16442)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2872 (class 2606 OID 16458)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2875 (class 2606 OID 16498)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2863 (class 2606 OID 16535)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2878 (class 2606 OID 16521)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2840 (class 2606 OID 16412)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2842 (class 2606 OID 16410)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2838 (class 2606 OID 16403)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2882 (class 2606 OID 16550)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2894 (class 2606 OID 16872)
-- Name: orders_order orders_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_pkey PRIMARY KEY (id);


--
-- TOC entry 2900 (class 2606 OID 16886)
-- Name: orders_productinorder orders_productinorder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_productinorder
    ADD CONSTRAINT orders_productinorder_pkey PRIMARY KEY (id);


--
-- TOC entry 2897 (class 2606 OID 16879)
-- Name: orders_status orders_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_status
    ADD CONSTRAINT orders_status_pkey PRIMARY KEY (id);


--
-- TOC entry 2889 (class 2606 OID 16849)
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);


--
-- TOC entry 2891 (class 2606 OID 16856)
-- Name: products_productimage products_productimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_productimage
    ADD CONSTRAINT products_productimage_pkey PRIMARY KEY (id);


--
-- TOC entry 2885 (class 2606 OID 16559)
-- Name: test_app_post test_app_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_app_post
    ADD CONSTRAINT test_app_post_pkey PRIMARY KEY (id);


--
-- TOC entry 2887 (class 2606 OID 16769)
-- Name: test_app_subscriber test_app_subscriber_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_app_subscriber
    ADD CONSTRAINT test_app_subscriber_pkey PRIMARY KEY (id);


--
-- TOC entry 2848 (class 1259 OID 16542)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2853 (class 1259 OID 16480)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2856 (class 1259 OID 16481)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2843 (class 1259 OID 16466)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2864 (class 1259 OID 16496)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2867 (class 1259 OID 16495)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2870 (class 1259 OID 16510)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2873 (class 1259 OID 16509)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2861 (class 1259 OID 16536)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2876 (class 1259 OID 16532)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2879 (class 1259 OID 16533)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2880 (class 1259 OID 16552)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2883 (class 1259 OID 16551)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2895 (class 1259 OID 16904)
-- Name: orders_order_status_id_d80abc38; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX orders_order_status_id_d80abc38 ON public.orders_order USING btree (status_id);


--
-- TOC entry 2898 (class 1259 OID 16902)
-- Name: orders_productinorder_order_id_12dc2f52; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX orders_productinorder_order_id_12dc2f52 ON public.orders_productinorder USING btree (order_id);


--
-- TOC entry 2901 (class 1259 OID 16903)
-- Name: orders_productinorder_product_id_43664b5a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX orders_productinorder_product_id_43664b5a ON public.orders_productinorder USING btree (product_id);


--
-- TOC entry 2892 (class 1259 OID 16862)
-- Name: products_productimage_product_id_e747596a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX products_productimage_product_id_e747596a ON public.products_productimage USING btree (product_id);


--
-- TOC entry 2904 (class 2606 OID 16475)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2903 (class 2606 OID 16470)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2902 (class 2606 OID 16461)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2906 (class 2606 OID 16490)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2905 (class 2606 OID 16485)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2908 (class 2606 OID 16504)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2907 (class 2606 OID 16499)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2909 (class 2606 OID 16522)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2910 (class 2606 OID 16527)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2912 (class 2606 OID 16887)
-- Name: orders_order orders_order_status_id_d80abc38_fk_orders_status_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_status_id_d80abc38_fk_orders_status_id FOREIGN KEY (status_id) REFERENCES public.orders_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2914 (class 2606 OID 16897)
-- Name: orders_productinorder orders_productinorde_product_id_43664b5a_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_productinorder
    ADD CONSTRAINT orders_productinorde_product_id_43664b5a_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2913 (class 2606 OID 16892)
-- Name: orders_productinorder orders_productinorder_order_id_12dc2f52_fk_orders_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_productinorder
    ADD CONSTRAINT orders_productinorder_order_id_12dc2f52_fk_orders_order_id FOREIGN KEY (order_id) REFERENCES public.orders_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2911 (class 2606 OID 16857)
-- Name: products_productimage products_productimag_product_id_e747596a_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_productimage
    ADD CONSTRAINT products_productimag_product_id_e747596a_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2023-10-24 20:09:35

--
-- PostgreSQL database dump complete
--

-- Completed on 2023-10-24 20:09:35

--
-- PostgreSQL database cluster dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 12.19
-- Dumped by pg_dump version 16.3 (Ubuntu 16.3-1.pgdg22.04+1)

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: emotive
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO emotive;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: emotive
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO emotive;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
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
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: emotive
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO emotive;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
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
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: emotive
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO emotive;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
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
-- Name: auth_user; Type: TABLE; Schema: public; Owner: emotive
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


ALTER TABLE public.auth_user OWNER TO emotive;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: emotive
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO emotive;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
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
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
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
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: emotive
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO emotive;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
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
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: emotive
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


ALTER TABLE public.django_admin_log OWNER TO emotive;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
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
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: emotive
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO emotive;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
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
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: emotive
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO emotive;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
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
-- Name: django_session; Type: TABLE; Schema: public; Owner: emotive
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO emotive;

--
-- Name: jeepney_api_jeepney; Type: TABLE; Schema: public; Owner: emotive
--

CREATE TABLE public.jeepney_api_jeepney (
    id bigint NOT NULL,
    jeepney_service_no integer NOT NULL,
    jeepney_stop_code character varying(20) NOT NULL,
    operator character varying(50) NOT NULL,
    origin_code integer NOT NULL,
    destination_code integer NOT NULL,
    estimated_arrival timestamp with time zone NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL
);


ALTER TABLE public.jeepney_api_jeepney OWNER TO emotive;

--
-- Name: jeepney_api_jeepney_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
--

ALTER TABLE public.jeepney_api_jeepney ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.jeepney_api_jeepney_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: jeepney_api_jeepneystop; Type: TABLE; Schema: public; Owner: emotive
--

CREATE TABLE public.jeepney_api_jeepneystop (
    id bigint NOT NULL,
    jeepney_stop_code character varying(20) NOT NULL,
    road_name character varying(255) NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL
);


ALTER TABLE public.jeepney_api_jeepneystop OWNER TO emotive;

--
-- Name: jeepney_api_jeepneystop_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
--

ALTER TABLE public.jeepney_api_jeepneystop ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.jeepney_api_jeepneystop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: jeepney_api_passengervolume; Type: TABLE; Schema: public; Owner: emotive
--

CREATE TABLE public.jeepney_api_passengervolume (
    id bigint NOT NULL,
    jeepney_stop_code character varying(20) NOT NULL,
    passenger_volume character varying(20) NOT NULL,
    date_time timestamp with time zone NOT NULL
);


ALTER TABLE public.jeepney_api_passengervolume OWNER TO emotive;

--
-- Name: jeepney_api_passengervolume_id_seq; Type: SEQUENCE; Schema: public; Owner: emotive
--

ALTER TABLE public.jeepney_api_passengervolume ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.jeepney_api_passengervolume_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: emotive
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
25	Can add jeepney	7	add_jeepney
26	Can change jeepney	7	change_jeepney
27	Can delete jeepney	7	delete_jeepney
28	Can view jeepney	7	view_jeepney
29	Can add passenger volume	8	add_passengervolume
30	Can change passenger volume	8	change_passengervolume
31	Can delete passenger volume	8	delete_passengervolume
32	Can view passenger volume	8	view_passengervolume
33	Can add jeepney stop	9	add_jeepneystop
34	Can change jeepney stop	9	change_jeepneystop
35	Can delete jeepney stop	9	delete_jeepneystop
36	Can view jeepney stop	9	view_jeepneystop
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	jeepney_api	jeepney
8	jeepney_api	passengervolume
9	jeepney_api	jeepneystop
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-05-24 12:27:25.192698+00
2	auth	0001_initial	2024-05-24 12:27:25.235503+00
3	admin	0001_initial	2024-05-24 12:27:25.249181+00
4	admin	0002_logentry_remove_auto_add	2024-05-24 12:27:25.255831+00
5	admin	0003_logentry_add_action_flag_choices	2024-05-24 12:27:25.261715+00
6	contenttypes	0002_remove_content_type_name	2024-05-24 12:27:25.274776+00
7	auth	0002_alter_permission_name_max_length	2024-05-24 12:27:25.279417+00
8	auth	0003_alter_user_email_max_length	2024-05-24 12:27:25.283982+00
9	auth	0004_alter_user_username_opts	2024-05-24 12:27:25.289149+00
10	auth	0005_alter_user_last_login_null	2024-05-24 12:27:25.293724+00
11	auth	0006_require_contenttypes_0002	2024-05-24 12:27:25.294919+00
12	auth	0007_alter_validators_add_error_messages	2024-05-24 12:27:25.299023+00
13	auth	0008_alter_user_username_max_length	2024-05-24 12:27:25.304883+00
14	auth	0009_alter_user_last_name_max_length	2024-05-24 12:27:25.309344+00
15	auth	0010_alter_group_name_max_length	2024-05-24 12:27:25.314267+00
16	auth	0011_update_proxy_permissions	2024-05-24 12:27:25.318447+00
17	auth	0012_alter_user_first_name_max_length	2024-05-24 12:27:25.322906+00
18	sessions	0001_initial	2024-05-24 12:27:25.328712+00
19	jeepney_api	0001_initial	2024-05-24 14:53:00.401763+00
20	jeepney_api	0002_alter_jeepney_destination_code_and_more	2024-05-24 15:20:11.348069+00
21	jeepney_api	0003_alter_jeepney_jeepney_service_no	2024-05-24 15:21:36.232336+00
22	jeepney_api	0004_passengervolume	2024-05-24 16:34:47.410941+00
23	jeepney_api	0005_jeepneystop	2024-05-24 17:16:03.814073+00
24	jeepney_api	0006_rename_volume_of_passengers_passengervolume_passenger_volume	2024-05-24 17:25:20.105905+00
25	jeepney_api	0007_alter_passengervolume_passenger_volume	2024-05-24 17:26:44.999646+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: jeepney_api_jeepney; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.jeepney_api_jeepney (id, jeepney_service_no, jeepney_stop_code, operator, origin_code, destination_code, estimated_arrival, latitude, longitude) FROM stdin;
1	33432	ACBDS-4234-FK	SIRAO JEEPNEY CO.	32456	3342	2024-05-25 23:23:01+00	41.40338	2.17403
2	334353	ASERDS-4223-PI	ERJON Almark JEEPNEY CO.	31123	4632	2024-05-25 10:22:01+00	1.4034	1.12403
3	24553	RTWES-59673-RRT	JASPER JEAN JEEPNEY CO.	59483	34583	2024-03-20 10:22:01+00	12.4034	21.12403
4	84572	WKCJ-3561-EQT	JASPER JEAN JEEPNEY CO.	3463	74567	2024-03-20 10:22:01+00	33.4034	21.12403
\.


--
-- Data for Name: jeepney_api_jeepneystop; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.jeepney_api_jeepneystop (id, jeepney_stop_code, road_name, latitude, longitude) FROM stdin;
1	ACBDS-4234-FK	MOA terminal	2.352	5.3452
2	ASERDS-4223-PI	Manila Hotel - EDSA	4.345	3.245
3	RTWES-59673-RRT	EDSA-Rotonda	4.3685	85.345
4	WKCJ-3561-EQT	Magallanes	34.32	33.553
\.


--
-- Data for Name: jeepney_api_passengervolume; Type: TABLE DATA; Schema: public; Owner: emotive
--

COPY public.jeepney_api_passengervolume (id, jeepney_stop_code, passenger_volume, date_time) FROM stdin;
1	ACBDS-4234-FK	High	2024-05-25 04:39:10.734+00
2	ASERDS-4223-PI	Low	2024-05-24 18:39:20.281+00
3	RTWES-59673-RRT	Moderate	2024-05-24 17:39:27.375+00
4	WKCJ-3561-EQT	High	2024-05-25 04:39:32.436+00
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: jeepney_api_jeepney_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.jeepney_api_jeepney_id_seq', 4, true);


--
-- Name: jeepney_api_jeepneystop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.jeepney_api_jeepneystop_id_seq', 4, true);


--
-- Name: jeepney_api_passengervolume_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emotive
--

SELECT pg_catalog.setval('public.jeepney_api_passengervolume_id_seq', 4, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: jeepney_api_jeepney jeepney_api_jeepney_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.jeepney_api_jeepney
    ADD CONSTRAINT jeepney_api_jeepney_pkey PRIMARY KEY (id);


--
-- Name: jeepney_api_jeepneystop jeepney_api_jeepneystop_jeepney_stop_code_key; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.jeepney_api_jeepneystop
    ADD CONSTRAINT jeepney_api_jeepneystop_jeepney_stop_code_key UNIQUE (jeepney_stop_code);


--
-- Name: jeepney_api_jeepneystop jeepney_api_jeepneystop_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.jeepney_api_jeepneystop
    ADD CONSTRAINT jeepney_api_jeepneystop_pkey PRIMARY KEY (id);


--
-- Name: jeepney_api_passengervolume jeepney_api_passengervolume_pkey; Type: CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.jeepney_api_passengervolume
    ADD CONSTRAINT jeepney_api_passengervolume_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: jeepney_api_jeepneystop_jeepney_stop_code_9dfeda0f_like; Type: INDEX; Schema: public; Owner: emotive
--

CREATE INDEX jeepney_api_jeepneystop_jeepney_stop_code_9dfeda0f_like ON public.jeepney_api_jeepneystop USING btree (jeepney_stop_code varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: emotive
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: emotive
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


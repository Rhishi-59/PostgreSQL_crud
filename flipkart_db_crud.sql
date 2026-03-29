--
-- PostgreSQL database dump
--



-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-03-29 14:12:01

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16411)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    name character varying(100) NOT NULL,
    sku_code character(8) NOT NULL,
    price numeric(10,2),
    stock_quantity integer DEFAULT 0,
    is_available boolean DEFAULT true,
    category text NOT NULL,
    added_on date DEFAULT CURRENT_DATE,
    last_updated timestamp without time zone DEFAULT now(),
    CONSTRAINT products_price_check CHECK ((price > (0)::numeric)),
    CONSTRAINT products_stock_quantity_check CHECK ((stock_quantity >= 0))
);




--
-- TOC entry 219 (class 1259 OID 16410)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;




--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- TOC entry 4755 (class 2604 OID 16414)
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- TOC entry 4914 (class 0 OID 16411)
-- Dependencies: 220
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, name, sku_code, price, stock_quantity, is_available, category, added_on, last_updated) FROM stdin;
1	wireless mouse	mou12345	799.00	120	t	electronics	2026-03-29	2026-03-29 13:47:54.524641
2	bluetooth speaker	bl123456	599.99	250	t	electronics	2026-03-29	2026-03-29 13:57:39.31555
3	headphone	hd123456	799.00	150	t	accessories	2026-03-29	2026-03-29 13:57:39.31555
4	phone case	pc123456	299.00	300	t	accessories	2026-03-29	2026-03-29 13:57:39.31555
5	electric kettle	ek123456	1499.00	80	t	home & kitchen	2026-03-29	2026-03-29 13:57:39.31555
6	non-stick frying pan	nfp12345	999.00	120	t	home & kitchen	2026-03-29	2026-03-29 13:57:39.31555
7	notebook set	ns123456	199.00	500	t	stationary	2026-03-29	2026-03-29 13:57:39.31555
8	ballpoint pens pack	bp123456	99.00	1000	t	stationary	2026-03-29	2026-03-29 13:57:39.31555
9	yoga mat	ym123456	699.00	200	t	fitness	2026-03-29	2026-03-29 13:57:39.31555
\.


--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 10, true);


--
-- TOC entry 4763 (class 2606 OID 16428)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4765 (class 2606 OID 16430)
-- Name: products products_sku_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_sku_code_key UNIQUE (sku_code);


-- Completed on 2026-03-29 14:12:02

--
-- PostgreSQL database dump complete
--




--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-03-02 13:30:10

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
-- TOC entry 220 (class 1259 OID 16403)
-- Name: assignments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assignments (
    assignment_id integer NOT NULL,
    title character varying(100),
    description text,
    due_date date,
    student_id integer
);


ALTER TABLE public.assignments OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16402)
-- Name: assignments_assignment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.assignments_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.assignments_assignment_id_seq OWNER TO postgres;

--
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 219
-- Name: assignments_assignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.assignments_assignment_id_seq OWNED BY public.assignments.assignment_id;


--
-- TOC entry 218 (class 1259 OID 16396)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    enrollment_date date
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16395)
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_student_id_seq OWNER TO postgres;

--
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 217
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- TOC entry 4701 (class 2604 OID 16406)
-- Name: assignments assignment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignments ALTER COLUMN assignment_id SET DEFAULT nextval('public.assignments_assignment_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16399)
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- TOC entry 4855 (class 0 OID 16403)
-- Dependencies: 220
-- Data for Name: assignments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.assignments (assignment_id, title, description, due_date, student_id) FROM stdin;
1	LAB7 POSTGRES	SET UP A DATABASE AND INSERT RECORDS AS DESCRIBED IN THE INSTRUCTIONS.	2025-01-15	1
\.


--
-- TOC entry 4853 (class 0 OID 16396)
-- Dependencies: 218
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, first_name, last_name, email, enrollment_date) FROM stdin;
1	JOHN	DOE	JOHN.DOE@EXAMPLE.COM	2023-09-01
2	JOHN	DOE	JOHN.DOE@EXAMPLE.COM	\N
\.


--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 219
-- Name: assignments_assignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.assignments_assignment_id_seq', 1, true);


--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 217
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 2, true);


--
-- TOC entry 4705 (class 2606 OID 16410)
-- Name: assignments assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT assignments_pkey PRIMARY KEY (assignment_id);


--
-- TOC entry 4703 (class 2606 OID 16401)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- TOC entry 4706 (class 2606 OID 16411)
-- Name: assignments assignments_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assignments
    ADD CONSTRAINT assignments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


-- Completed on 2025-03-02 13:30:11

--
-- PostgreSQL database dump complete
--


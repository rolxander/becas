PGDMP                         x            becas1    10.13    10.13     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    16419    becas1    DATABASE     �   CREATE DATABASE becas1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Bolivia.1252' LC_CTYPE = 'Spanish_Bolivia.1252';
    DROP DATABASE becas1;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16430    tipo_admicion    TABLE     �   CREATE TABLE public.tipo_admicion (
    id integer NOT NULL,
    nombre character varying(30),
    detalle character varying(200)
);
 !   DROP TABLE public.tipo_admicion;
       public         postgres    false    3            �            1259    16428    tipo_admicion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_admicion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tipo_admicion_id_seq;
       public       postgres    false    3    199            �
           0    0    tipo_admicion_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tipo_admicion_id_seq OWNED BY public.tipo_admicion.id;
            public       postgres    false    198            �            1259    16422    tipo_modalidad    TABLE     b   CREATE TABLE public.tipo_modalidad (
    id integer NOT NULL,
    nombre character varying(40)
);
 "   DROP TABLE public.tipo_modalidad;
       public         postgres    false    3            �            1259    16420    tipo_modalidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_modalidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipo_modalidad_id_seq;
       public       postgres    false    197    3                        0    0    tipo_modalidad_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipo_modalidad_id_seq OWNED BY public.tipo_modalidad.id;
            public       postgres    false    196            u
           2604    16433    tipo_admicion id    DEFAULT     t   ALTER TABLE ONLY public.tipo_admicion ALTER COLUMN id SET DEFAULT nextval('public.tipo_admicion_id_seq'::regclass);
 ?   ALTER TABLE public.tipo_admicion ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            t
           2604    16425    tipo_modalidad id    DEFAULT     v   ALTER TABLE ONLY public.tipo_modalidad ALTER COLUMN id SET DEFAULT nextval('public.tipo_modalidad_id_seq'::regclass);
 @   ALTER TABLE public.tipo_modalidad ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    16430    tipo_admicion 
   TABLE DATA               <   COPY public.tipo_admicion (id, nombre, detalle) FROM stdin;
    public       postgres    false    199   (       �
          0    16422    tipo_modalidad 
   TABLE DATA               4   COPY public.tipo_modalidad (id, nombre) FROM stdin;
    public       postgres    false    197   �                  0    0    tipo_admicion_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tipo_admicion_id_seq', 1, false);
            public       postgres    false    198                       0    0    tipo_modalidad_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tipo_modalidad_id_seq', 1, false);
            public       postgres    false    196            y
           2606    16435     tipo_admicion tipo_admicion_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipo_admicion
    ADD CONSTRAINT tipo_admicion_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tipo_admicion DROP CONSTRAINT tipo_admicion_pkey;
       public         postgres    false    199            w
           2606    16427 "   tipo_modalidad tipo_modalidad_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tipo_modalidad
    ADD CONSTRAINT tipo_modalidad_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tipo_modalidad DROP CONSTRAINT tipo_modalidad_pkey;
       public         postgres    false    197            �
   w   x�M�11k�~�I�������&�Xh�Ŗ���DTW�hF{�哛(W�6Lw��ZA�h�t��>\�x��Byژ,�_Y�D:�u�)�⁞Fs :�3�-�п\mD��Qܧ����.�      �
   $   x�3�N�M-.)J�ɬJL��2�t�+�qb���� �      
PGDMP          *                x            BD    10.13    10.13     �
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
           1262    16393    BD    DATABASE     �   CREATE DATABASE "BD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "BD";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16394 	   tadmision    TABLE     �   CREATE TABLE public.tadmision (
    idtadmision integer NOT NULL,
    nombre character varying(20),
    detalle character varying(100)
);
    DROP TABLE public.tadmision;
       public         postgres    false    3            �            1259    16400 
   tmodalidad    TABLE     h   CREATE TABLE public.tmodalidad (
    idtmodalidad integer NOT NULL,
    nombre character varying(50)
);
    DROP TABLE public.tmodalidad;
       public         postgres    false    3            �
          0    16394 	   tadmision 
   TABLE DATA               A   COPY public.tadmision (idtadmision, nombre, detalle) FROM stdin;
    public       postgres    false    196   �	       �
          0    16400 
   tmodalidad 
   TABLE DATA               :   COPY public.tmodalidad (idtmodalidad, nombre) FROM stdin;
    public       postgres    false    197   x
       �
   �   x�=�;�0Dk�{�	�W �HCG��X�x�u��8��#�b��̓�h�f�Ė"x��o9�������I�-S����.^����%���%X��qTr��cV]Y*8n;.h]v�υ�+�ʽ��:ў�sS+="��{TScB0Q� ;�&w/)��$%{�Xk9�I      �
   %   x�3�t�+M�ɬJL��2�N�M-.)�	��qqq С     
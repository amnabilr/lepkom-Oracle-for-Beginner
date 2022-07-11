create user ANDI identified by abcd;
create user JAROT identified by bcde;
create user LILIS identified by cdef;

grant create session to ANDI,JAROT,LILIS;

grant unlimited tablespace to ANDI,JAROT;
grant create table to ANDI,JAROT;


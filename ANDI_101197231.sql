create table MAHASISWA (NPM NUMBER(4), NAMA VARCHAR2(20), KELAS VARCHAR2(5));
desc MAHASISWA;

grant select, insert, update, delete
on ANDI.MAHASISWA to jarot with grant option;


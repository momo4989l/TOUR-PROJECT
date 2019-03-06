CREATE SEQUENCE seq_member_idx
MAXVALUE 9999;

CREATE SEQUENCE seq_tour_idx
MAXVALUE 9999;

CREATE TABLE Member
(
    userid        VARCHAR2(14),      
    gender        VARCHAR2(10)    NOT NULL,
    email         VARCHAR2(20)    NOT NULL,
    city          VARCHAR2(20)    NOT NULL,
    password      VARCHAR2(20)    NOT NULL,
    CONSTRAINT member_userid_pk   PRIMARY KEY(userid),
    CONSTRAINT member_gender_ck   CHECK (gender IN('여성', '남성')),
    CONSTRAINT member_city_ck   CHECK (city IN('도민', '외부인'))
);

CREATE TABLE Division
(
    div_name           VARCHAR2(20)         NOT NULL,

    CONSTRAINT division_PK PRIMARY KEY (div_name)
);

CREATE TABLE Tour
(
    tour_idx     NUMBER(4),
    tour_name   VARCHAR2(20) NOT NULL,
    tour_address   VARCHAR2(20) NOT NULL,
    tour_price   NUMBER(6) DEFAULT 0,
    div_name   VARCHAR2(20) NOT NULL,
    
    CONSTRAINT tour_fk FOREIGN KEY (div_name) REFERENCES Division(div_name)

);

CREATE OR REPLACE PROCEDURE sp_member_insert
(
    v_userid      IN     Member.userid%TYPE,   
    v_gender      IN     Member.gender%TYPE,
    v_email      IN        Member.email%TYPE,
    v_city      IN       Member.city%TYPE,
    v_password    IN     Member.password%TYPE
)
IS
BEGIN
    INSERT INTO Member(userid, gender, email, city, password)
    VALUES(v_userid, v_gender, v_email, v_city, v_password);
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE sp_member_select_one
(
    v_userid        IN        Member.userid%TYPE,
    rec_member      OUT       SYS_REFCURSOR
)
AS
BEGIN
    OPEN rec_member FOR
    SELECT userid, gender, email, city, password
    FROM Member
    WHERE userid = v_userid;
END;


CREATE OR REPLACE PROCEDURE sp_tour_insert
(
    v_tour_name         IN       Tour.tour_name%TYPE,
    v_tour_address         IN       Tour.tour_address%TYPE,
    v_tour_price         IN       Tour.tour_price%TYPE,
    v_div_name         IN       Tour.div_name%TYPE
)
IS
BEGIN
    INSERT INTO Tour(tour_idx, tour_name, tour_address, tour_price, div_name)
    VALUES (SEQ_TOUR_IDX.nextval, v_tour_name , v_tour_address, v_tour_price, v_div_name);
    COMMIT;
END;


CREATE OR REPLACE PROCEDURE sp_tour_select_one
(
    v_tour_idx           IN       Tour.tour_idx%TYPE,
    rec_board       OUT      SYS_REFCURSOR
)
AS
BEGIN
    OPEN rec_board FOR
    SELECT tour_idx, tour_name, tour_address, tour_price, div_name 
    FROM Tour 
    WHERE tour_idx = v_tour_idx;
END;









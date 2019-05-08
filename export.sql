--------------------------------------------------------
--  File created - Wednesday-May-08-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence EVENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."EVENT_ID_SEQ"  MINVALUE 1 MAXVALUE 20000000 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "HR"."ADMIN" 
   (	"FIRST_NAME" VARCHAR2(25 BYTE), 
	"USERNAME" VARCHAR2(50 BYTE), 
	"USERPASSWORD" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ASSIGNED_EVENTS
--------------------------------------------------------

  CREATE TABLE "HR"."ASSIGNED_EVENTS" 
   (	"EVENT_NAME" VARCHAR2(50 BYTE), 
	"PLANNER_USERNAME" VARCHAR2(50 BYTE), 
	"SDATE" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CHOOSE_EVENTS
--------------------------------------------------------

  CREATE TABLE "HR"."CHOOSE_EVENTS" 
   (	"EVENT_NAME" VARCHAR2(50 BYTE), 
	"PLANNER_USERNAME" VARCHAR2(50 BYTE), 
	"SDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

  CREATE TABLE "HR"."CLIENT" 
   (	"FIRST_NAME" VARCHAR2(25 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"USERNAME" VARCHAR2(50 BYTE), 
	"USERPASSWORD" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "HR"."EVENT" 
   (	"SDATE" DATE DEFAULT NULL, 
	"EVENT_ID" NUMBER, 
	"EVENT_TYPE" VARCHAR2(50 BYTE), 
	"FOOD" VARCHAR2(100 BYTE), 
	"DRINKS" VARCHAR2(100 BYTE), 
	"PLANNER_USERNAME" VARCHAR2(50 BYTE) DEFAULT 'none', 
	"CLIENT_USERNAME" VARCHAR2(50 BYTE), 
	"PLACE_TYPE" VARCHAR2(50 BYTE), 
	"EVENT_NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PENDING_EVENTS
--------------------------------------------------------

  CREATE TABLE "HR"."PENDING_EVENTS" 
   (	"EVENT_NAME" VARCHAR2(50 BYTE), 
	"PLANNER_USERNAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PLANNER
--------------------------------------------------------

  CREATE TABLE "HR"."PLANNER" 
   (	"FIRST_NAME" VARCHAR2(25 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE), 
	"USERNAME" VARCHAR2(50 BYTE), 
	"USERPASSWORD" VARCHAR2(50 BYTE), 
	"RATE" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PLANNER_SUGGESTIONS
--------------------------------------------------------

  CREATE TABLE "HR"."PLANNER_SUGGESTIONS" 
   (	"PLACE" VARCHAR2(100 BYTE), 
	"MUSIC_TYPE" VARCHAR2(50 BYTE), 
	"DECORATION_TYPE" VARCHAR2(50 BYTE), 
	"EVENT_TYPE" VARCHAR2(50 BYTE), 
	"PLACE_TYPE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WORKS
--------------------------------------------------------

  CREATE TABLE "HR"."WORKS" 
   (	"PLANNER_USERNAME" VARCHAR2(50 BYTE), 
	"CONTENT_NAME" VARCHAR2(4000 BYTE), 
	"CONTENT_TYPE" VARCHAR2(4000 BYTE), 
	"DATA" BLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("DATA") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

---------------------------------------------------
--   DATA FOR TABLE ADMIN
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HR.ADMIN
Insert into HR.ADMIN (FIRST_NAME,USERNAME,USERPASSWORD) values ('Ann','admin','123');

---------------------------------------------------
--   END DATA FOR TABLE ADMIN
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE ASSIGNED_EVENTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HR.ASSIGNED_EVENTS

---------------------------------------------------
--   END DATA FOR TABLE ASSIGNED_EVENTS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CHOOSE_EVENTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HR.CHOOSE_EVENTS
Insert into HR.CHOOSE_EVENTS (EVENT_NAME,PLANNER_USERNAME,SDATE) values ('mks;,c;l;s,','abdo',to_timestamp('07-AUG-19 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into HR.CHOOSE_EVENTS (EVENT_NAME,PLANNER_USERNAME,SDATE) values ('ann engagement','abdo',to_timestamp('07-AUG-19 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into HR.CHOOSE_EVENTS (EVENT_NAME,PLANNER_USERNAME,SDATE) values ('mks;,c;l;s,','abdo',to_timestamp('07-AUG-19 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'));

---------------------------------------------------
--   END DATA FOR TABLE CHOOSE_EVENTS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE CLIENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HR.CLIENT
Insert into HR.CLIENT (FIRST_NAME,LAST_NAME,USERNAME,USERPASSWORD) values ('Ahmed','Ismail','Ismail','123');

---------------------------------------------------
--   END DATA FOR TABLE CLIENT
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE EVENT
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HR.EVENT
Insert into HR.EVENT (SDATE,EVENT_ID,EVENT_TYPE,FOOD,DRINKS,PLANNER_USERNAME,CLIENT_USERNAME,PLACE_TYPE,EVENT_NAME) values (to_timestamp('07-AUG-19 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),22,'Engagement','hkjjlk','hjkl','none','Ismail','Open_Air','mks;,c;l;s,');
Insert into HR.EVENT (SDATE,EVENT_ID,EVENT_TYPE,FOOD,DRINKS,PLANNER_USERNAME,CLIENT_USERNAME,PLACE_TYPE,EVENT_NAME) values (to_timestamp('07-AUG-19 12.00.00.000000000 AM','DD-MON-RR HH.MI.SS.FF AM'),21,'Engagement','hkjjlk','hjkl','none','Ismail','Open_Air','ann engagement');

---------------------------------------------------
--   END DATA FOR TABLE EVENT
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PENDING_EVENTS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HR.PENDING_EVENTS
Insert into HR.PENDING_EVENTS (EVENT_NAME,PLANNER_USERNAME) values ('ann engagement','zizo');

---------------------------------------------------
--   END DATA FOR TABLE PENDING_EVENTS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PLANNER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HR.PLANNER
Insert into HR.PLANNER (FIRST_NAME,LAST_NAME,USERNAME,USERPASSWORD,RATE) values ('none',null,'none','123',null);
Insert into HR.PLANNER (FIRST_NAME,LAST_NAME,USERNAME,USERPASSWORD,RATE) values ('abdl',null,'abdo','123',null);
Insert into HR.PLANNER (FIRST_NAME,LAST_NAME,USERNAME,USERPASSWORD,RATE) values (null,null,'pending','123',null);
Insert into HR.PLANNER (FIRST_NAME,LAST_NAME,USERNAME,USERPASSWORD,RATE) values ('abdl',null,'ann','123',null);
Insert into HR.PLANNER (FIRST_NAME,LAST_NAME,USERNAME,USERPASSWORD,RATE) values ('Ahmed','Abdelaziz','zizo','123',null);

---------------------------------------------------
--   END DATA FOR TABLE PLANNER
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE PLANNER_SUGGESTIONS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HR.PLANNER_SUGGESTIONS
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Matarma Bay','Dance Music','wedding cake,wedding flowers','Wedding','Closed_Area');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Andrawis Nile Garden','Dance Music','wedding cake,wedding flowers','Wedding','Closed_Area');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Mansoureya Park','Dance Music','wedding cake,wedding flowers','Wedding','Closed_Area');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Hilton Pyramids Golf','Dance Music','wedding cake,wedding flowers','Wedding','Open_Air');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('The Westin Cairo Golf Resort ','Dance Music','wedding cake,wedding flowers','Wedding','Open_Air');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('The Palace Port Ghalib Resort','Dance Music','wedding cake,wedding flowers','Wedding','Open_Air');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Coral Sea Holiday Resort','Dance Music','engagement cake,engagement flowers','Engagement','Open_Air');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Iberotel Palace Resort','Dance Music','engagement cake,engagement flowers','Engagement','Open_Air');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Nile Country Club','Dance Music','engagement cake,engagement flowers','Engagement','Closed_Area');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Amici Zamalek','Party Music','Birthday cake,Birthday balloons','Birthday','Closed_Area');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Silver Nile Club','Dance Music','engagement cake,engagement flowers','Engagement','Closed_Area');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Graffiti','Party Music','Birthday cake,Birthday balloons','Birthday','Closed_Area');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('The Smokery','Party Music','Birthday cake,Birthday balloons','Birthday','Open_Air');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Le Deck','Party Music','Birthday cake,Birthday balloons','Birthday','Open_Air');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Mövenpick Hotel','none','none','Confrence','Open_Air');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Four Sessions Hotel','none','none','Confrence','Closed_Area');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Fairmont Nile City','none','none','Business_Dinner','Open_Air');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Mercure Cairo Le Sphinx','none','none','Business_Dinner','Open_Air');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Sofitel Cairo El Gezirah','none','none','Business_Dinner','Closed_Area');
Insert into HR.PLANNER_SUGGESTIONS (PLACE,MUSIC_TYPE,DECORATION_TYPE,EVENT_TYPE,PLACE_TYPE) values ('Holiday Inn Cairo Maadi','none','none','Business_Dinner','Closed_Area');

---------------------------------------------------
--   END DATA FOR TABLE PLANNER_SUGGESTIONS
---------------------------------------------------


---------------------------------------------------
--   DATA FOR TABLE WORKS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into HR.WORKS
Insert into HR.WORKS (PLANNER_USERNAME,CONTENT_NAME,CONTENT_TYPE,DATA) values ('zizo','Screenshot (6).png','image/png','(BLOB)');

---------------------------------------------------
--   END DATA FOR TABLE WORKS
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "HR"."EVENT" ADD CONSTRAINT "EVENT_PK" PRIMARY KEY ("EVENT_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."EVENT" MODIFY ("PLANNER_USERNAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."EVENT" MODIFY ("CLIENT_USERNAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."EVENT" MODIFY ("PLACE_TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."EVENT" MODIFY ("EVENT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."EVENT" MODIFY ("EVENT_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."EVENT" MODIFY ("SDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CHOOSE_EVENTS
--------------------------------------------------------

  ALTER TABLE "HR"."CHOOSE_EVENTS" MODIFY ("EVENT_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."CHOOSE_EVENTS" MODIFY ("PLANNER_USERNAME" NOT NULL ENABLE);

--------------------------------------------------------
--  Constraints for Table PLANNER
--------------------------------------------------------

  ALTER TABLE "HR"."PLANNER" ADD CONSTRAINT "PLANNER_PK" PRIMARY KEY ("USERNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."PLANNER" MODIFY ("USERNAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PLANNER" MODIFY ("USERPASSWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PENDING_EVENTS
--------------------------------------------------------

  ALTER TABLE "HR"."PENDING_EVENTS" MODIFY ("EVENT_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PENDING_EVENTS" MODIFY ("PLANNER_USERNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WORKS
--------------------------------------------------------

  ALTER TABLE "HR"."WORKS" MODIFY ("PLANNER_USERNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "HR"."CLIENT" ADD CONSTRAINT "CLIENT_PK" PRIMARY KEY ("USERNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."CLIENT" MODIFY ("USERPASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."CLIENT" MODIFY ("USERNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "HR"."ADMIN" ADD CONSTRAINT "ADMIN_PK" PRIMARY KEY ("USERNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."ADMIN" MODIFY ("USERPASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."ADMIN" MODIFY ("USERNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ASSIGNED_EVENTS
--------------------------------------------------------

  ALTER TABLE "HR"."ASSIGNED_EVENTS" MODIFY ("EVENT_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."ASSIGNED_EVENTS" MODIFY ("PLANNER_USERNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Index CLIENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."CLIENT_PK" ON "HR"."CLIENT" ("USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EVENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."EVENT_PK" ON "HR"."EVENT" ("EVENT_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ADMIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."ADMIN_PK" ON "HR"."ADMIN" ("USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PLANNER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PLANNER_PK" ON "HR"."PLANNER" ("USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------
--  Ref Constraints for Table ASSIGNED_EVENTS
--------------------------------------------------------

  ALTER TABLE "HR"."ASSIGNED_EVENTS" ADD CONSTRAINT "ADMIN_SUGGESTIONS_EVENT_FK1" FOREIGN KEY ("EVENT_NAME")
	  REFERENCES "HR"."EVENT" ("EVENT_NAME") ENABLE;
 
  ALTER TABLE "HR"."ASSIGNED_EVENTS" ADD CONSTRAINT "ADMIN_SUGGESTIONS_PLANNER_FK1" FOREIGN KEY ("PLANNER_USERNAME")
	  REFERENCES "HR"."PLANNER" ("USERNAME") ENABLE;


--------------------------------------------------------
--  Ref Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "HR"."EVENT" ADD CONSTRAINT "EVENT_CLIENT_FK1" FOREIGN KEY ("CLIENT_USERNAME")
	  REFERENCES "HR"."CLIENT" ("USERNAME") ENABLE;
 
  ALTER TABLE "HR"."EVENT" ADD CONSTRAINT "EVENT_PLANNER_FK1" FOREIGN KEY ("PLANNER_USERNAME")
	  REFERENCES "HR"."PLANNER" ("USERNAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PENDING_EVENTS
--------------------------------------------------------

  ALTER TABLE "HR"."PENDING_EVENTS" ADD CONSTRAINT "ADMIN_SUGGESTIONS_EVENT_FK45" FOREIGN KEY ("EVENT_NAME")
	  REFERENCES "HR"."EVENT" ("EVENT_NAME") ENABLE;
 
  ALTER TABLE "HR"."PENDING_EVENTS" ADD CONSTRAINT "ADMIN_SUGGESTIONS_PLANNER_FK45" FOREIGN KEY ("PLANNER_USERNAME")
	  REFERENCES "HR"."PLANNER" ("USERNAME") ENABLE;


--------------------------------------------------------
--  Ref Constraints for Table WORKS
--------------------------------------------------------

  ALTER TABLE "HR"."WORKS" ADD CONSTRAINT "WORKS_PLANNER_FK1" FOREIGN KEY ("PLANNER_USERNAME")
	  REFERENCES "HR"."PLANNER" ("USERNAME") ENABLE;
--------------------------------------------------------
--  DDL for Trigger NEW_EVENT_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."NEW_EVENT_TRIGGER" 
BEFORE INSERT ON Event
FOR EACH ROW
BEGIN
  :NEW.event_id := event_id_seq.NEXTVAL;
END;
/
ALTER TRIGGER "HR"."NEW_EVENT_TRIGGER" ENABLE;

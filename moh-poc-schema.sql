-- DROP TABLE CONDITION
-- DROP TABLE ENCOUNTER
-- DROP TABLE OBSERVATION
DROP TABLE PATIENT
-- DROP TABLE PROCEDURE

DROP TABLE ENCOUNTER_1;

DELETE FROM CONDITION;
DELETE FROM ENCOUNTER;
DELETE FROM MEDICAL_PROCEDURE;
DELETE FROM OBSERVATION;
DELETE FROM PATIENT;
COMMIT;

DESC ENCOUNTER;

CREATE TABLE PATIENT (
  id                VARCHAR2(255),
  name_family       VARCHAR2(100),
  name_given        VARCHAR2(100),
  gender            VARCHAR2(20),
  phone_number      VARCHAR2(50),
  birth_date        DATE,
  city              VARCHAR2(100),
  state             VARCHAR2(50),
  postal_code       VARCHAR2(50),
  country           VARCHAR2(50),
  marital_status    VARCHAR2(20),
  language          VARCHAR2(20) 
)

CREATE TABLE ENCOUNTER (
  id                VARCHAR2(255),
  status            VARCHAR2(100),
  type              VARCHAR2(255),
  patient_id        VARCHAR2(255),
  participant_type  VARCHAR2(50),
  participant_name  VARCHAR2(100),
  start_time        TIMESTAMP WITH TIME ZONE,
  end_time          TIMESTAMP WITH TIME ZONE,
  service_provider  VARCHAR2(255)
)

CREATE TABLE OBSERVATION (
  id                VARCHAR2(255),
  status            VARCHAR2(100),
  patient_id        VARCHAR2(255),
  encounter_id      VARCHAR2(255),
  category          VARCHAR2(50),
  code              VARCHAR2(100),
  value             FLOAT,
  unit              VARCHAR2(50),
  effective_time    TIMESTAMP WITH TIME ZONE,
  issued_time       TIMESTAMP WITH TIME ZONE
)

CREATE TABLE MEDICAL_PROCEDURE (
  id                VARCHAR2(255),
  status            VARCHAR2(100),
  patient_id        VARCHAR2(255),
  encounter_id      VARCHAR2(255),
  code              VARCHAR2(150),
  period_start      TIMESTAMP WITH TIME ZONE,
  period_end        TIMESTAMP WITH TIME ZONE
)

CREATE TABLE CONDITION (
  id                    VARCHAR2(255),
  clinical_status       VARCHAR2(50),
  verification_status   VARCHAR2(50),
  code                  VARCHAR2(100),
  patient_id            VARCHAR2(255),
  encounter_id          VARCHAR2(255),
  onset_time            TIMESTAMP WITH TIME ZONE,
  abatement_time        TIMESTAMP WITH TIME ZONE,
  recorded_time         TIMESTAMP WITH TIME ZONE
)

select * FROM patient where name_given = 'Aaron697';

select count(*) from PATIENT;
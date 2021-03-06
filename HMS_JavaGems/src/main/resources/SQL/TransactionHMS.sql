CREATE TABLE RECEPTIONIST(

     R_ID VARCHAR(37) NOT NULL,
     R_NAME VARCHAR(255) NOT NULL,
	 R_GENDER VARCHAR(100) NOT NULL,
	 R_AGE VARCHAR(50) NOT NULL,
	 R_ADDRESS VARCHAR(255) NOT NULL,
	 R_MOBILE_NO VARCHAR(50) NOT NULL,
	 R_IN_TIME TIMESTAMP,
	 R_OUT_TIME TIMESTAMP,
	 R_JOIN_DATE TIMESTAMP,
	 DOCTOR_D_ID VARCHAR(37) NOT NULL,
	 NURSE_N_ID VARCHAR(37) NOT NULL,
	 PATIENT_P_ID VARCHAR(37) NOT NULL,
	 PRIMARY KEY (R_ID),
	 FOREIGN KEY (DOCTOR_D_ID) REFERENCES DOCTOR(D_ID),
	 FOREIGN KEY (NURSE_N_ID) REFERENCES NURSE(N_ID),
	 FOREIGN KEY (PATIENT_P_ID) REFERENCES PATIENT(P_ID)
	 );
	 
CREATE TABLE DOCTOR(
     
	 D_ID VARCHAR(37) NOT NULL,
	 D_NAME VARCHAR(255) NOT NULL,
	 D_EMAIL VARCHAR(400) NOT NULL,
	 D_MOBILE_NO VARCHAR(300) NOT NULL,
	 D_SPECIALIZATION  VARCHAR(200) NOT NULL,
	 D_APPOINTMENT_TIME TIMESTAMP,
	 PATIENT_P_ID VARCHAR(37) NOT NULL,
	 LAB_L_ID VARCHAR(37) NOT NULL,
	 PRIMARY KEY (D_ID),
	 FOREIGN KEY (PATIENT_P_ID) REFERENCES PATIENT(P_ID),
	 FOREIGN KEY (LAB_L_ID) REFERENCES LAB(L_ID)
	 );
	 
	 

CREATE TABLE PATIENT(

      P_ID VARCHAR(37) NOT NULL,
     P_REG_NO VARCHAR(100) NOT NULL,
	 P_REG_DATE TIMESTAMP,
     P_NAME VARCHAR(255) NOT NULL,
     P_ADDRESS VARCHAR(400)  NOT NULL,
     P_CITY VARCHAR (300)  NOT NULL,
     P_TELEPHONE_NO   VARCHAR(15),
	 P_MARITAL_STATUS VARCHAR (400)  NOT NULL,
	 P_GENDER VARCHAR(300) NOT NULL,
	 P_FATHER_GAURDIAN VARCHAR(300) NOT NULL,
	 P_AGE VARCHAR(50) NOT NULL,
	 P_HEIGHT VARCHAR(15)  NOT NULL,
	 P_WEIGHT VARCHAR(15) NOT NULL,
	 P_SYMPTOMS VARCHAR(200) NOT NULL,
	 P_APPOINTMENT_TIME TIMESTAMP,
	 P_REFFERAL_ID VARCHAR(100) NOT NULL,
     P_IN_PATIENT VARCHAR(200) NOT NULL,
     P_OUT_PATIENT VARCHAR(200) NOT NULL,
	 DOCTOR_D_ID VARCHAR(37) NOT NULL,
	 PRIMARY KEY (P_ID),
	 FOREIGN KEY (DOCTOR_D_ID) REFERENCES DOCTOR(D_ID)
	 
	 
	 
);	 
	 

	 
CREATE TABLE NURSE(
     
	 N_ID VARCHAR(37) NOT NULL,
     N_NAME VARCHAR(255) NOT NULL,
	 N_GENDER VARCHAR(100) NOT NULL,
	 N_AGE VARCHAR(50) NOT NULL,
	 N_ADDRESS VARCHAR(255) NOT NULL,
	 N_MOBILE_NO VARCHAR(50) NOT NULL,
	 N_IN_TIME TIMESTAMP,
	 N_OUT_TIME TIMESTAMP,
	 N_JOIN_DATE TIMESTAMP,
	 PRIMARY KEY (N_ID)
	 
	 );
	 
	 
	 
CREATE TABLE PHARMACY(
     
	 PH_ID VARCHAR(37) NOT NULL, 
     PH_IN_ID VARCHAR(37) NOT NULL,
	 PH_OUT_ID VARCHAR(37) NOT NULL,
     PH_PRDUCT_NAME VARCHAR(200) NOT NULL,
     PH_QUANTITY VARCHAR(200) NOT NULL,
     PH_BILL VARCHAR(250) NOT NULL,
     PH_PRESCRIPTION VARCHAR(200) NOT NULL,
     PH_REFFERED_DOCTOR_ID VARCHAR(200) NOT NULL,
     PRIMARY KEY (PH_ID)
);

CREATE TABLE LAB(

     L_ID VARCHAR(37) NOT NULL,
	 L_TEST_NAME VARCHAR(200) NOT NULL,
	 L_REPORT VARCHAR(250) NOT NULL,
	 L_AMBULANCE_IN_ID VARCHAR(100) NOT NULL,
	 L_AMBULANCE_OUT_ID VARCHAR(100) NOT NULL,
	 PRIMARY KEY (L_ID)
	 );
	 
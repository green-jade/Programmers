SELECT APNT_NO, PT_NAME, APPOINTMENT.PT_NO, APPOINTMENT.MCDP_CD, DR_NAME, APNT_YMD
FROM APPOINTMENT
LEFT JOIN DOCTOR 
ON APPOINTMENT.MDDR_ID = DOCTOR.DR_ID
LEFT JOIN PATIENT
ON APPOINTMENT.PT_NO = PATIENT.PT_NO
WHERE DATE_FORMAT(APNT_YMD,'%Y-%m-%d')="2022-04-13" AND APNT_CNCL_YN = 'N'
    AND APPOINTMENT.MCDP_CD = 'CS'
ORDER BY APPOINTMENT.APNT_YMD ASC

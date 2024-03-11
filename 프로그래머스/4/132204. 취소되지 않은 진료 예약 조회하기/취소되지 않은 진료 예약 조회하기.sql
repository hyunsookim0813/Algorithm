-- 코드를 입력하세요
SELECT a.APNT_NO, b.PT_NAME, a.PT_NO, a.MCDP_cD, c.DR_NAME, a.APNT_YMD
FROM APPOINTMENT AS a
JOIN DOCTOR AS c ON c.DR_ID = a.MDDR_ID
JOIN PATIENT AS b ON b.PT_NO = a.PT_NO
WHERE a.APNT_CNCL_YMD IS NULL AND a.MCDP_CD = 'CS' AND a.APNT_YMD LIKE '2022-04-13%'
ORDER BY a.APNT_YMD ASC

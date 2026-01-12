USE InsuranceDB;
SELECT COUNT(*) FROM insurance_risk;


SELECT * FROM insurance_risk;

--risk derecesi yüksek olan poliçeler
SELECT * FROM insurance_risk
WHERE risk_level = 'High';

--en acil incelenmesi gereken 10 poliçe
SELECT top 10 * FROM insurance_risk
WHERE risk_level = 'High'
ORDER BY fraud_prob DESC;


USE InsuranceDB;
SELECT TOP 20 * 
FROM insurance_risk;

--risk seviyelerine göre daðýlým
SELECT 
    risk_level,
    COUNT(*) AS kisi_sayisi
FROM insurance_risk
GROUP BY risk_level
ORDER BY kisi_sayisi DESC;

--hasar durumuna göre daðýlým
SELECT main_risk_factor, COUNT(*) AS kisi_sayýsý
FROM insurance_risk
WHERE main_risk_factor IS NOT NULL
GROUP BY main_risk_factor
ORDER BY kisi_sayýsý DESC;
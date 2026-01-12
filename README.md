# 🚗 Sigorta Dolandırıcılığı Risk Analizi ve Power BI Dashboard

Bu projede, sigorta poliçelerine ait veriler kullanılarak **dolandırıcılık (fraud) riski** tahmin edilmiş, elde edilen model çıktıları **risk seviyelerine** dönüştürülmüş ve sonuçlar **SQL Server** ile **Power BI** üzerinden raporlanmıştır.

Projenin amacı, yalnızca bir makine öğrenmesi modeli kurmak değil; **model çıktısını iş kararlarını destekleyecek şekilde analiz edilebilir ve görselleştirilebilir hale getirmektir.**

---

## 📌 Proje Kapsamı

- Sigorta verileri üzerinde **dolandırıcılık tahmin modeli** geliştirme  
- **Random Forest** algoritması ile sınıflandırma  
- **Threshold tuning** ile risk seviyelerinin belirlenmesi  
- Risk skorlarının **SQL Server** veritabanına yazılması  
- **Power BI** ile etkileşimli risk analiz paneli oluşturulması  

---

## 🧠 Kullanılan Teknolojiler

- **Python**
  - pandas, numpy
  - scikit-learn
- **Makine Öğrenmesi**
  - Random Forest Classifier
  - Feature Importance analizi
  - Threshold Tuning
- **Veritabanı**
  - SQL Server
- **Görselleştirme**
  - Power BI
- **Geliştirme Ortamı**
  - Jupyter Notebook

---

## 🔍 Modelleme Süreci

### 1️⃣ Veri Ön İşleme
- Kategorik değişkenler encode edildi  
- Sayısal değişkenler ölçeklendirildi (Scaler)  
- Eğitim ve test setleri ayrıldı  

### 2️⃣ Model Eğitimi
- Random Forest Classifier kullanıldı  
- Precision, Recall, F1-score ve Accuracy metrikleri ile değerlendirme yapıldı  

### 3️⃣ Threshold Tuning
- Varsayılan 0.5 yerine farklı eşik değerleri test edildi  
- Fraud olasılığına göre **risk seviyeleri** oluşturuldu:
  - **High Risk**
  - **Medium Risk**
  - **Low Risk**

### 4️⃣ Feature Importance Analizi
Modelin en kritik değişkenleri:
- **incident_severity**
- **insured_hobbies**
- **total_claim_amount**

Bu analiz sayesinde modelin hangi faktörlere göre karar verdiği yorumlanabilir hale getirildi.

---

## 🗄️ SQL Server Entegrasyonu

Modelden elde edilen çıktılar:
- Fraud olasılığı (`fraud_prob`)
- Risk seviyesi (`risk_level`)
- Ana risk faktörü (`main_risk_factor`)

SQL Server’da oluşturulan tabloya yazılmıştır.

Bu sayede:
- Power BI doğrudan SQL Server’dan beslenmektedir  
- Model çıktıları kurumsal raporlamaya hazır hale gelmiştir  

---

## 📊 Power BI Dashboard

Power BI üzerinde oluşturulan panelde:

- Toplam poliçe sayısı  
- Yüksek riskli poliçe sayısı  
- Ortalama fraud olasılığı  
- Risk seviyelerine göre dağılım  
- Ana risk faktörleri (hasar türü & hobi bazlı)  

yer almaktadır.

Dashboard, iş birimlerinin **yüksek riskli poliçeleri hızlıca tespit edebilmesini** hedeflemektedir.

---

## 📂 Proje Klasör Yapısı

```text
insurance-fraud-risk-analysis/
│
├── data/
│   └── insurance_processed.csv
│
├── notebooks/
│   └── fraud_risk_model.ipynb
│
├── powerbi/
│   └── insurance_risk_dashboard.pbix
│
├── sql/
│   └── insurance_risk_table.sql
│
├── images/
│   └── dashboard_preview.png
│
└── README.md

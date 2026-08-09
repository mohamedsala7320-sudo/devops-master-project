# 1. نحدد البيئة الأساسية
FROM python:3.9-slim

# 2. نحدد المجلد الشغال داخل الـ Container
WORKDIR /app

# 3. ننسخ ملف المتطلبات ونثبت المكتبات
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. ننسخ باقي كود التطبيق
COPY . .

# 5. نحدد المنفذ (Port) اللي التطبيق بيشتغل عليه
EXPOSE 8080

# 6. أمر تشغيل التطبيق
CMD ["python", "app.py"]
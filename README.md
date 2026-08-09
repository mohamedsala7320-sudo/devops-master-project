# 🚀 End-to-End DevOps CI/CD Pipeline

مشروع DevOps متكامل يعمل على أتمتة بناء وتشغيل تطبيق ويب باستخدام أحدث الأدوات.

---<img width="3331" height="3146" alt="architecture-diagram" src="https://github.com/user-attachments/assets/2af1ecd3-f828-4b7f-922f-a58bf11d995d" />


## 🛠️ الأدوات المستخدمة (Tech Stack)

* **Git & GitHub:** لإدارة الكود والمصدر.
* **Jenkins:** لأتمتة مراحل الـ CI/CD.
* **Terraform:** لإدارة البنية التحتية ككود (IaC).
* **Docker & Docker Hub:** لبناء الـ Containers ورفع الـ Images.
* **Kubernetes:** لتشغيل وإدارة الحاويات (Container Orchestration).
* **Python (Flask):** التطبيق المكتوب.

---

## 🚀 مراحل الـ Pipeline

1. **Checkout:** سحب أحدث نسخة من الكود من GitHub.
2. **Infrastructure via Terraform:** تهيئة البنية التحتية تلقائياً.
3. **Build Docker Image:** بناء صورة التطبيق (Docker Image).
4. **Push to Docker Hub:** رفع الصورة لحساب Docker Hub.
5. **Deploy to Kubernetes:** نشر التطبيق على الكلوستر وتوفيره عبر `LoadBalancer`.
6. **Test App:** التأكد من نجاح العملية ووجود الصورة.

---

## 🌐 تشغيل التطبيق

بعد تشغيل الـ Pipeline بنجاح في Jenkins، يمكنك الوصول للتطبيق عبر المتصفح:
`http://localhost:5000`

---
*Created by **Mohamed Salah***

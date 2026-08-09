# 🚀 end-to-end-devops-cicd-pipeline

---

## 📊 Project Overview

This project demonstrates a full end-to-end **DevOps CI/CD Pipeline** designed to automate the building, testing, containerizing, and deploying of a Python Flask web application.

It integrates modern DevOps practices including **Infrastructure as Code (IaC)** with Terraform, **Continuous Integration & Continuous Deployment** via Jenkins, **Containerization** using Docker, and **Container Orchestration** with Kubernetes.

---

## 🛠️ Tools & Technologies

- **Python (Flask)**
- **Git & GitHub**
- **Jenkins CI/CD**
- **Terraform (IaC)**
- **Docker & Docker Hub**
- **Kubernetes (k8s)**

---

## 🔍 Pipeline Steps Performed

- **Source Code Management:** Automatic fetch of latest code changes from `GitHub`.
- **Infrastructure Provisioning:** Managing and initializing infrastructure files using `Terraform`.
- **Application Containerization:** Building a lightweight `Docker` image for the Flask application.
- **Artifact Registry Push:** Authenticating and pushing the image to `Docker Hub`.
- **Kubernetes Deployment:** Applying `Deployment` and `Service` manifests using `kubectl`.
- **App Exposure & Testing:** Exposing the application via `LoadBalancer` on port `5000`.

---

## 🏗️ Architecture & Workflow

  <img width="3331" height="3146" alt="architecture-diagram" src="https://github.com/user-attachments/assets/b0d5c74b-1979-4016-bc9b-460ed0386ba8" />
<img width="3331" height="3146" alt="architecture-diagram" src="https://github.com/user-attachments/assets/76f6b25d-7b6f-4451-ae3b-6391e586c554" />

---

## 💡 Key DevOps Concepts Practiced

- `CI/CD Automation` with Jenkins Pipelines
- `Infrastructure as Code (IaC)` principles
- `Containerization` & Environment Isolation
- `Kubernetes Cluster Management`
- `Pod Management` & Scalability
- `LoadBalancing` & Service Exposing

---

## ▶️ How to Run

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/mohamedsala7320-sudo/devops-master-project.git](https://github.com/mohamedsala7320-sudo/devops-master-project.git)
   cd devops-master-project
1.Start Docker Desktop & Kubernetes:
  Ensure Docker Desktop is running with Kubernetes enabled.

2.Deploy to Kubernetes:

  Bush
  
  kubectl apply -f k8s/

3.Access the application:
  Open your browser and navigate to http://localhost:5000


## 🎯 Learning Goal

To gain hands-on experience in building a production-ready CI/CD pipeline and mastering the integration between Developer workflows and Cloud DevOps infrastructure.

## 🧑‍💻 Author

Mohamed Salah

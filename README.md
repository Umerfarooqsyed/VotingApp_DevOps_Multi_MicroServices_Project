# 🌐 Multi Microservices Voting Application — Complete DevOps Implementation
### CI/CD | Docker | Kubernetes | ArgoCD | Azure DevOps | GitOps

### Overview
This project implements a complete **end-to-end DevOps pipeline** for a **microservices-based voting application**.

⚠️ **Important:**  
The **application itself is officially developed by Docker’s team** (Docker Samples).  
**My role was to implement the full DevOps workflow**, including:

- Containerizing all microservices  
- Creating Azure DevOps CI pipelines  
- Automating version updates with shell scripts  
- Hosting app on Kubernetes cluster on an Azure VM  
- Deploying the application via ArgoCD (GitOps)  
- Creating full CI/CD automation from commit → deploy  

---

## 🧩 Tech Stack & Tools Used

| Category | Tools / Technologies |
|-----------|----------------------|
| **Version Control** | <img src="https://git-scm.com/images/logos/downloads/Git-Icon-1788C.png" width="20" align="center"/> **Git** &nbsp;&nbsp; <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" width="20" align="center"/> **GitHub** |
| **CI/CD Platform** | <img src="https://cdn.jsdelivr.net/npm/simple-icons@latest/icons/azuredevops.svg" width="20" align="center"/> **Azure DevOps** |
| **Containerization** | <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg" width="25" align="center"/> **Docker** |
| **Container Registry** | <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg" width="25" align="center"/> **Docker Hub** |
| **Infrastructure / Orchestration** | <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/kubernetes/kubernetes-plain.svg" width="25" align="center"/> **Kubernetes (local cluster & Azure AKS)** |
| **Deployment Automation** | <img src="https://argo-cd.readthedocs.io/en/stable/assets/argo.png" width="25" align="center"/> **ArgoCD** |
| **Automation Scripting** | <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/bash/bash-original.svg" width="25" align="center"/> **Shell Script (Bash)** |
| **Agent Setup** | <img src="https://cdn-icons-png.flaticon.com/512/69/69524.png" width="22" align="center"/> **Self-Hosted Agent Pool (Local Machine)** |

---

## 🧩 Microservices in This Application

This voting app has **5 microservices**:

1. **Voting Service** – collects user votes  
2. **Result Service** – displays live results  
3. **Worker Service** – backend processor connecting vote → Redis → results  
4. **Redis** – message queue / in-memory store  
5. **PostgreSQL** – persistent storage  

🎯 **Each microservice has its own Dockerfile, CI pipeline, and Kubernetes manifests.**

---

## 🔁 Project Workflow

⚙️ Complete DevOps Flow

<table style="width:100%; border-collapse:collapse; border:1px solid #444; border-radius:10px; background-color:#1e1e1e; color:#ddd; padding:12px;">
  <tr>
    <td style="padding:10px;">
      <strong>🛠️ Containerized 5 Microservices</strong><br/>
      All services packaged individually using Dockerfiles.
    </td>
  </tr>

  <tr>
    <td style="padding:10px;">
      <strong>🤖 Built Azure DevOps CI Pipelines</strong><br/>
      Each service triggers an automatic build & push to Docker Hub.
    </td>
  </tr>

  <tr>
    <td style="padding:10px;">
      <strong>🐳 Docker Hub Registry</strong><br/>
      Stores 5 separate microservice images with version tags.
    </td>
  </tr>

  <tr>
    <td style="padding:10px;">
      <strong>📜 Automated Manifest Updates (Bash Script)</strong><br/>
      CI pipeline updates Kubernetes image tags automatically.
    </td>
  </tr>

  <tr>
    <td style="padding:10px;">
      <strong>🚀 ArgoCD GitOps Deployment</strong><br/>
      Detects changes in manifests and deploys updates automatically.
    </td>
  </tr>

  <tr>
    <td style="padding:10px;">
      <strong>💡 On Every Commit</strong><br/>
      New version is built → pushed → manifests updated → ArgoCD sync → auto deploy.
    </td>
  </tr>
</table>

---

## 🧱 Deployment Details

### **CI (Continuous Integration)**
- Triggered on changes to the `main` branch  
- Builds Docker images for each microservice  
- Pushes new versions to Docker Hub  
- A Bash script updates:
  - `deployment.yaml`
  - Image tags  
- Commits updated manifests back to GitHub

<img width="812" height="227" alt="image" src="https://github.com/user-attachments/assets/875f049d-39ea-4f3c-abd3-31044e540629" />


---

### **CD (Continuous Delivery)**
- ArgoCD monitors Kubernetes manifests  
- Auto-sync enabled  
- Any tag change triggers immediate deployment  
- Ensures **100% GitOps-driven delivery**  

---

## 🖥️ Deployment Environment

✔️ Azure VM running Ubuntu  
✔️ KIND Kubernetes Cluster  
✔️ ArgoCD installed directly on the cluster  
✔️ Azure DevOps agent installed on the same VM  

---

---

## 🙌 Closing Thoughts

This project gave me **hands-on exposure** to real-world DevOps workflows, connecting CI/CD automation, Kubernetes orchestration, and GitOps deployment tools.  

I’m continuously improving this setup and learning ways to integrate **cloud-native best practices** in future projects.

---


⭐ *If you liked this project or found it interesting, feel free to star it on GitHub!*
 

# Terraform Projects 🌍

Welcome to my Terraform projects repository! Here you'll find a collection of infrastructure projects designed to be deployed across multiple cloud providers like **AWS**, **GCP**, and **Azure**.

---

## 📝 **Description**

This repository is dedicated to sharing and documenting projects related to **Infrastructure as Code (IaC)** using **Terraform**.  
Its purpose is to:  
- Simplify cloud infrastructure deployment.  
- Foster modularity and reusability for cloud resources.  
- Provide ready-to-use examples for AWS, GCP, and Azure.  

Each project is structured with:  
- A `README.md` file detailing the project objectives and instructions.  
- Terraform configuration files (`.tf`) and modules for efficient deployments.  
- Examples for different environments like Dev, QA, and Production.  

---

## 📂 **Projects**

### **AWS**  
#### 📌 Project 1: [Deploying a Web Server on AWS](./AWS/01-web-server)
- **Description:**  
  This project uses Terraform to deploy a web server on AWS, leveraging a custom module to ensure flexibility, reusability, and maintainability. The web server runs **Nginx** and is secured with a security group allowing SSH and HTTP access.  
- **Features:**  
  - Modular structure for independent environments (e.g., Dev, QA).  
  - Easily customizable configurations for different use cases.  

*(More AWS projects coming soon...)*  

---

### **GCP**  
#### 📌 Projects Coming Soon!  

---

### **Azure**  
#### 📌 Projects Coming Soon!  

---

## 🚀 **How to Use This Repository**

1. Clone this repository:  
   ```bash
   git clone https://github.com/JesquivelR/Terraform.git
   cd Terraform
   ```
2. Navigate to the desired cloud provider folder (AWS, GCP, or Azure):
    ```bash
    cd AWS  # Or replace with GCP or Azure
    ```
3. Initialize Terraform:
    ```bash
    terraform init
    ```
4. Customize `variables.tf` or `terraform.tfvars` as needed for your environment.
5. Deploy the infrastructure:
    ```bash
    terraform apply
    ```
6. Destroy the infrastructure:
    ```bash
    terraform destroy
    ```
## **🛠 Contributions**
Do you have ideas, suggestions, or improvements? Feel free to open an Issue or submit a Pull Request!
This repository is constantly evolving, and your contributions are welcome.

## **Thank You for Visiting! Happy Terraforming! 🌟**
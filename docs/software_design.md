# Software Design Documentation  

## 📌 Project Overview  
This document outlines the software architecture for a **Linux-based automation system** that monitors system logs for critical errors and sends alerts to administrators. The design follows core software engineering principles such as **abstraction, modularity, cohesion, and low coupling** to ensure efficiency and maintainability.  

---

## 🏗️ Software Design Principles  

## 1️⃣ Abstraction  
- The system offers **high-level functionality** for log monitoring and alerting, shielding users from internal complexities.  
- Users interact with a **single script interface**, while background processes manage log scanning and notifications.  

## 2️⃣ Encapsulation  
- Log scanning, error filtering, and notification tasks are structured into **distinct functions**, restricting direct access to internal operations.  

## 3️⃣ Modularity  
- The system is structured into **independent, reusable modules**:  
  - **Log Scanner:** Retrieves error logs from system files.  
  - **Alert System:** Notifies administrators about critical errors.  
  - **Error Logging:** Records detected errors for future reference.  
- Each module functions independently, enhancing **maintainability and scalability**.  

## 4️⃣ Cohesion & Coupling  
- **High Cohesion:** Each module is designed to perform a **single, well-defined task**.  
- **Low Coupling:** Modules communicate through **structured function calls**, reducing dependencies.  

---

## 🔄 Data Flow Diagram (DFD)  

### **Level 0: Context Diagram**  
The following diagram provides a high-level overview of the system and its interactions:  

### **Level 1: Detailed Process Flow**  
This diagram details how the system processes logs, filters errors, and sends alerts:  

---

## 🚀 Deployment Instructions  

### **Prerequisites**  
Ensure the following dependencies are installed:  
```sh
sudo apt update && sudo apt install mailutils
```

---

## 🔍 Risk Management & Mitigation Strategies  

| **Risk**                   | **Impact**                                      | **Mitigation Strategy**                           |
|----------------------------|------------------------------------------------|--------------------------------------------------|
| **Incorrect log parsing**  | Missed critical errors                         | Ensure regex filters are thoroughly tested      |
| **Insufficient permissions** | Script fails to access logs                    | Run with appropriate user privileges            |
| **Email delivery failure** | Alerts not sent                                | Use a backup notification system (e.g., Slack) |
| **High resource consumption** | System slowdown during execution               | Optimize script execution and logging frequency |
| **Cron job failure**       | Automation does not run as expected            | Verify crontab settings and error logs         |

---

## 📌 Testing Strategy  

- Run `shellcheck log_monitor.sh` to check for syntax errors.  
- Use `bats` for unit testing (if applicable).  
- Monitor performance with `top`, `htop`, `time`, `iostat`, or `vmstat`.  
         

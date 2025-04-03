 **SOFTWARE-ENGINEERING-ASSIGNMENT**

 ***Linux-Based Automation System***  

 
 **📌 Project Overview**  
 
This project presents a Linux-based automation system designed to enhance system monitoring through efficient log analysis. The solution integrates shell scripting with fundamental software design principles such as modularity, encapsulation, and low coupling.  

 **🚀 Key Features**  
 
- **Automated Log Monitoring**: The script scans system logs to detect critical errors.  
- **Error Filtering & Alerts**: Identifies key error messages and notifies administrators.  
- **Modular & Scalable Design**: Implements a structured approach with reusable script components.  
- **Linux Utility Integration**: Uses `grep`, `awk`, `sed`, and other system tools.  
- **Performance Analysis**: Optimized for efficiency with logging and risk mitigation strategies.  

---
 📂 Project Structure 

- 📦 **linux-automation-project** (Root project folder)  
  - 📂 **docs** (Documentation folder)  
    - 📜 *software_design.md* (Software architecture documentation)  
  - 📂 **scripts** (Shell scripts folder)  
    - 📝 *log_monitor.sh* (Main log monitoring script)  
  - 📜 *README.md* (Project overview)  


 ## 🛠️ Technologies Used  
- **Shell Scripting (Bash)**  
- **Linux System Utilities** (grep, awk, sed, mail)  
- **Git for Version Control**  

## 🔧 Installation & Usage 

1. **Download the script** from the repository.  
2. **Make the script executable:**  
   ```sh 
   chmod +x scripts/log_monitor.sh
3. **Run the script**:
   ```sh
   ./scripts/log_monitor.sh
  

## 🔄 Software Configuration Management (SCM)

### **Version Control with Git**  
- All files are managed using **Git**, with **separate branches** for different features.  
- Change management is handled through **commits, pull requests, and merges**.  

### **Versioning Strategy**  

| **Version** | **Changes** |
|------------|------------|
| **v1.0**   | Initial implementation of log monitoring script |
| **v1.1**   | Added error logging and email alerts |
| **v1.2**   | Optimized script execution and cron job support |


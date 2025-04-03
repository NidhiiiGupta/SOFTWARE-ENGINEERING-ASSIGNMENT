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

 📂 Project Structure
 
 📦 linux-automation-project  # The root project folder
 ┣ 📂 docs                    # A folder for documentation files
 ┃ ┗ 📜 software_design.md    # A file inside 'docs' containing software architecture documentation
 ┣ 📂 scripts                 # A folder for shell scripts
 ┃ ┗ 📝 log_monitor.sh        # The main shell script for log monitoring
 ┣ 📜 README.md               # A README file that provides an overview of the project

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
  

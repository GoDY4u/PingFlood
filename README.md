# PingFlood 🚀💻


---

### **Description:**
This simple script performs a *Ping Flood* attack (Denial of Service by flooding with pings) on a specified target by sending a configurable number of ICMP packets based on the selected intensity level. It first checks the connectivity to the target before starting the attack. The number of packets sent varies depending on the level chosen:

- **Level 1**: 100,000 pings
- **Level 2**: 500,000 pings
- **Level 3**: 1,000,000 pings

This script is intended solely for use in testing on your own networks or networks where you have explicit permission to perform stress or security testing.

---

### **Usage:**
1. The script first checks if the target is reachable via an initial ping test.
2. Based on the `-n` parameter, it adjusts the number of pings to be sent.
3. It then starts the *Ping Flood* attack using the `-f` option of the `ping` command.

#### **Example usage:**
```bash
sudo ./PingFlood.sh <IP> -n ( 1 , 2 or 3 )
```

---

📩 For any questions or suggestions, open an **issue** on GitHub.

---

## 🌍 Connect

If you liked this project, feel free to leave a ⭐ on the repository and share it with the community. 😃

---

---

### **⚠️Warning and Disclaimer:⚠️**

**This script should only be used on networks where you have explicit permission to perform load or security testing. Unauthorized use of this script on networks you do not own or have permission to test is illegal and punishable by law.**

The author is not responsible for any damage, data loss, service interruption, or legal consequences arising from the misuse of this script.

**Do not use this script for attacks without permission!**

**Use at your own risk!**  


---


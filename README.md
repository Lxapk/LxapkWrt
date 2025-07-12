# OpenWrt-Builder  
**基于 ImmortalWrt 的 x86_64 路由固件**  
*跟随 23.05 24.10 稳定版分支持续更新，支持自动编译*

---

## 📦 官方资源  
- **源码仓库**：[github.com/immortalwrt/immortalwrt](https://github.com/immortalwrt/immortalwrt)  
- **固件下载**：  -[官方下载站](https://downloads.immortalwrt.org/)  -[固件选择器](https://firmware-selector.immortalwrt.org/)  

---

## 🖥️ x86_64 主路由固件  
### 核心特性  
```markdown
• **基础系统**：官方 ImmortalWrt 24.10 分支  
• **精简优化**：移除全部音频组件（减小体积）  
• **工具增强**：  
  - Golang 版本升级  
  - 集成 bash/nano/curl 实用工具  
• **虚拟化支持** 
```

### 🛠️ 服务功能  
```markdown
✅ UPnP 自动端口映射  
✅ TTYD 网页终端控制台  
✅ KMS 激活服务
✅ passwall  
✅ Nikki 网络工具箱  
✅ TaskPlan 多功能定时任务  
✅ TurboAcc 网络加速引擎  
```

---

### 🔐 默认登录配置  
| 配置项       | 参数              |  
|-------------|------------------|  
| **用户名**   | `root`           |  
| **密码**     | 无（首次登录后设置）|  
| **管理地址** | `192.168.31.3`   |  

---

## 🔧 IP 地址修改指南  
通过 SSH/TTYD 终端执行命令（以修改为 `192.168.5.1` 为例）：  

### 步骤 1：修改 LAN 口 IP  
```bash
uci set network.lan.ipaddr='192.168.5.1'
uci commit network
```

### 步骤 2：更新 DHCP 配置  
```bash
uci delete dhcp.lan.dhcp_option
uci add_list dhcp.lan.dhcp_option='6,192.168.5.1'  # 同步修改为新的网关IP
uci commit dhcp
```

### 步骤 3：重启生效  
```bash
reboot  # 等待约 10 秒完成重启
```

> **注意**：步骤 2 中的 `192.168.5.1` 需与步骤 1 设置的 IP 保持一致

---

**✨ 自动化优势**：  
- 每日自动同步 ImmortalWrt 24.10 分支更新  
- 自动编译发布最新安全补丁和功能改进  
- 持续集成测试确保固件稳定性

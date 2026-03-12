<div align="center">

```
██████╗ ██████╗ ██╗ ██████╗███████╗
██╔══██╗██╔══██╗██║██╔════╝██╔════╝
██████╔╝██████╔╝██║██║     █████╗  
██╔═══╝ ██╔══██╗██║██║     ██╔══╝  
██║     ██║  ██║██║╚██████╗███████╗
╚═╝     ╚═╝  ╚═╝╚═╝ ╚═════╝╚══════╝
         COMPARISON TOOL
```

<h3>⚡ Intelligent Price Intelligence — Buy Smarter, Save More ⚡</h3>

[![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)](https://www.java.com)
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)](https://www.w3.org/Style/CSS/)
[![NetBeans](https://img.shields.io/badge/NetBeans_IDE-1B6AC6?style=for-the-badge&logo=apache-netbeans-ide&logoColor=white)](https://netbeans.apache.org/)
[![Apache Ant](https://img.shields.io/badge/Apache_Ant-A81C7D?style=for-the-badge&logo=apache&logoColor=white)](https://ant.apache.org/)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)]()

<br/>

> _"In a world of infinite choices, intelligence is knowing which one costs less."_

</div>

---

## 🌐 Overview

**Price Comparison Tool** is a full-stack Java web application that aggregates and compares product prices across multiple sources — empowering users to make data-driven purchasing decisions in real time. Built on a robust Java backend with a sleek, responsive web frontend, this tool bridges the gap between information overload and actionable insight.

Whether you're a savvy shopper hunting for the best deal or a developer looking to understand multi-source data aggregation, this project demonstrates clean architecture, efficient data handling, and a polished user experience.

---

## ✨ Features

| Feature | Description |
|---|---|
| 🔍 **Multi-Source Comparison** | Simultaneously compare prices from multiple vendors/platforms |
| ⚡ **Real-Time Results** | Fetches and displays up-to-date pricing data instantly |
| 🗂️ **Categorized Listings** | Products organized by category for streamlined browsing |
| 💡 **Best Deal Highlight** | Automatically identifies and highlights the lowest price |
| 🌐 **Web-Based Interface** | Accessible from any browser — no installation required |
| 📦 **Deployable Build** | Pre-built `dist/` and `build/web/` artifacts ready for deployment |
| 🎨 **Responsive UI** | Clean, CSS-powered interface that adapts across screen sizes |

---

## 🏗️ Project Architecture

```
Price-Comparison-Tool/
│
├── 📁 src/                    # Core Java source files
│   └── *.java                 # Business logic, scrapers, data models
│
├── 📁 web/                    # Web layer (JSP / HTML / CSS)
│   ├── index.jsp              # Landing page
│   ├── results.jsp            # Comparison results view
│   └── assets/                # Static resources
│
├── 📁 build/web/              # Compiled web output (ready to deploy)
├── 📁 dist/                   # Distribution JAR / WAR artifacts
├── 📁 lib/                    # External dependencies / JAR libraries
├── 📁 nbproject/              # NetBeans project configuration
│   ├── project.xml
│   └── build-impl.xml
│
├── 📄 build.xml               # Apache Ant build script
└── 📄 README.md               # You are here
```

---

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- **Java JDK 8+** — [Download here](https://www.oracle.com/java/technologies/downloads/)
- **Apache NetBeans IDE 12+** — [Download here](https://netbeans.apache.org/download/)
- **Apache Ant** — [Download here](https://ant.apache.org/) *(usually bundled with NetBeans)*
- **Apache Tomcat 9+** *(or any Java EE-compatible server)* — [Download here](https://tomcat.apache.org/)

---

### ⚙️ Installation & Setup

#### Option 1 — Via NetBeans IDE *(Recommended)*

```bash
# 1. Clone the repository
git clone https://github.com/krunal132/Price-Comparison-Tool.git

# 2. Open NetBeans IDE
# File → Open Project → Select the cloned folder

# 3. Right-click the project in the Projects panel
# → Clean and Build

# 4. Deploy to your local Tomcat server
# → Right-click → Run
```

#### Option 2 — Via Apache Ant (Command Line)

```bash
# 1. Clone the repository
git clone https://github.com/krunal132/Price-Comparison-Tool.git
cd Price-Comparison-Tool

# 2. Build the project
ant clean build

# 3. Deploy the generated WAR file from /dist to your Tomcat server
cp dist/Price-Comparison-Tool.war /path/to/tomcat/webapps/

# 4. Start Tomcat and navigate to:
# http://localhost:8080/Price-Comparison-Tool
```

#### Option 3 — Use Pre-Built Artifacts

The `build/web/` directory contains a pre-compiled, ready-to-deploy web application. Simply copy its contents into your server's `webapps` directory.

---

## 🖥️ Usage

1. **Launch** the application in your browser at `http://localhost:8080/Price-Comparison-Tool`
2. **Enter** a product name or keyword in the search bar
3. **Browse** the aggregated results pulled from multiple sources
4. **Compare** prices side-by-side with visual indicators for best value
5. **Click** on a listing to be redirected to the original product page

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| **Language** | Java (95.1%) |
| **Frontend** | CSS3, HTML, JSP (4.9%) |
| **Build Tool** | Apache Ant (`build.xml`) |
| **IDE** | Apache NetBeans |
| **Server** | Apache Tomcat (Java EE / Jakarta EE) |
| **Packaging** | WAR / JAR via `dist/` |

---

## 📁 Key Files Explained

| File / Folder | Purpose |
|---|---|
| `src/` | All Java source code — models, services, controllers |
| `web/` | Frontend JSP pages and static web assets |
| `lib/` | Third-party `.jar` dependencies (e.g., HTTP clients, parsers) |
| `build.xml` | Ant build configuration — defines compile, clean, deploy targets |
| `nbproject/` | NetBeans IDE metadata — project config and build implementation |
| `dist/` | Final distributable artifact (`.war` / `.jar`) |
| `build/web/` | Intermediate compiled web output used during development |

---

## 🔭 Roadmap

Here's what's coming next for Price Comparison Tool:

- [ ] 🤖 **AI-Powered Price Prediction** — forecast price trends using ML models
- [ ] 🔔 **Price Drop Alerts** — email/SMS notifications when prices fall
- [ ] 📊 **Price History Graphs** — visualize price fluctuations over time
- [ ] 🛒 **Wishlist & Save** — bookmark products for future tracking
- [ ] 🌍 **Multi-Currency Support** — compare prices globally with live FX rates
- [ ] 📱 **Progressive Web App (PWA)** — offline support and mobile install
- [ ] 🔌 **REST API** — expose comparison data via API for third-party integration
- [ ] 🐳 **Docker Support** — one-command containerized deployment

---

## 🤝 Contributing

Contributions are what make open source extraordinary. All contributions are welcome and appreciated!

```bash
# Fork the project
# Create your feature branch
git checkout -b feature/AmazingFeature

# Commit your changes
git commit -m 'Add AmazingFeature'

# Push to the branch
git push origin feature/AmazingFeature

# Open a Pull Request
```

Please make sure your code follows clean Java conventions and includes comments where necessary.

---

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.

---

## 👤 Author

<div align="center">

**Krunal**

[![GitHub](https://img.shields.io/badge/GitHub-krunal132-181717?style=for-the-badge&logo=github)](https://github.com/krunal132)

_Built with ☕ Java and a passion for smarter shopping._

---

⭐ **If this project helped you, please consider giving it a star!** ⭐

</div>

# Campus Course & Records Manager (CCRM)

## Project Overview
The Campus Course & Records Manager (CCRM) is a console-based Java SE application designed to help educational institutes manage students, courses, grades, and transcripts efficiently. The application demonstrates comprehensive Object-Oriented Programming principles, modern Java features, and robust software engineering practices.

## How to Run

### Prerequisites
- JDK 17 or higher
- Eclipse IDE (recommended) or any Java-compatible IDE

### Compilation and Execution
```bash
# Navigate to project directory
cd CCRM_Project

# Compile all Java files
javac -d bin -cp src src/Main.java src/edu/ccrm/**/*.java

# Run with assertions enabled
java -ea -cp bin Main

# Alternative: Use provided batch file (Windows)
compile.bat
```

### Eclipse Setup
1. Open Eclipse IDE
2. File → New → Java Project
3. Project name: "CCRM_Project"
4. Right-click project → Properties → Java Build Path → Source → Add Folder → Select "src"
5. Right-click Main.java → Run As → Java Application

## Evolution of Java

### Key Milestones
- **1995**: Java 1.0 - Initial release by Sun Microsystems
- **1997**: Java 1.1 - Inner classes, JDBC, RMI
- **1998**: Java 1.2 (J2SE) - Collections Framework, Swing
- **2000**: Java 1.3 - HotSpot JVM, JNDI
- **2002**: Java 1.4 - Assertions, NIO, XML processing
- **2004**: Java 5 - Generics, Enums, Annotations, Autoboxing
- **2006**: Java 6 - Performance improvements, scripting support
- **2011**: Java 7 - Try-with-resources, diamond operator, NIO.2
- **2014**: Java 8 - Lambda expressions, Streams API, Date/Time API
- **2017**: Java 9 - Module system, JShell
- **2018**: Java 10 - Local variable type inference (var)
- **2018**: Java 11 LTS - HTTP client, String methods
- **2021**: Java 17 LTS - Records, Pattern matching, Text blocks
- **2023**: Java 21 LTS - Virtual threads, Pattern matching enhancements

## Java Editions Comparison

| Feature | Java ME (Micro Edition) | Java SE (Standard Edition) | Java EE (Enterprise Edition) |
|---------|-------------------------|----------------------------|------------------------------|
| **Target Platform** | Mobile devices, embedded systems | Desktop applications, servers | Enterprise web applications |
| **Memory Footprint** | Small (< 2MB) | Medium (50-200MB) | Large (500MB+) |
| **Core Libraries** | Limited subset | Complete core APIs | SE + enterprise APIs |
| **Use Cases** | IoT, mobile apps, smart cards | Desktop GUI, console apps | Web services, distributed systems |
| **Key APIs** | CLDC, MIDP | Collections, I/O, Swing | Servlets, JSP, EJB, JPA |

## Java Architecture

### JDK (Java Development Kit)
- **Purpose**: Complete development environment
- **Components**: Compiler (javac), debugger, documentation tools
- **Target Users**: Java developers

### JRE (Java Runtime Environment)  
- **Purpose**: Runtime environment for executing Java applications
- **Components**: JVM + core libraries + supporting files
- **Target Users**: End users running Java applications

### JVM (Java Virtual Machine)
- **Purpose**: Execute Java bytecode on specific platforms
- **Key Features**: Memory management, garbage collection, bytecode interpretation
- **Platform Specific**: Different implementations for Windows, Linux, macOS

**Relationship**: JDK ⊃ JRE ⊃ JVM

## Windows Installation Steps

1. **Download JDK**
   - Visit Oracle JDK or OpenJDK website
   - Download JDK 17+ installer for Windows

2. **Install JDK**
   - Run the .exe installer
   - Choose installation directory (e.g., C:\\Program Files\\Java\\jdk-17)
   - Complete installation wizard

3. **Set Environment Variables**
   - Right-click "This PC" → Properties → Advanced System Settings
   - Environment Variables → System Variables → New
   - Variable name: `JAVA_HOME`
   - Variable value: JDK installation path
   - Edit PATH variable → Add `%JAVA_HOME%\\bin`

4. **Verify Installation**
   ```cmd
   java -version
   javac -version
   ```

## Eclipse Setup Steps

1. **Download Eclipse IDE**
   - Download Eclipse IDE for Java Developers
   - Extract to preferred directory

2. **Create Java Project**
   - File → New → Java Project
   - Project name: "CCRM_Project"  
   - Use default location or specify custom path
   - Choose JRE version (17+)
   - Finish

3. **Configure Build Path**
   - Right-click project → Properties
   - Java Build Path → Source tab
   - Add source folder: "src"
   - Apply and Close

4. **Import Source Code**
   - Copy all .java files to appropriate package folders
   - Refresh project (F5)

5. **Run Configuration**
   - Right-click Main.java → Run As → Java Application
   - To enable assertions: Run Configurations → Arguments → VM arguments: `-ea`

## Technical Implementation Mapping

| Syllabus Topic | Implementation | File/Class Location |
|----------------|----------------|-------------------|
| **OOP - Encapsulation** | Private fields with getter/setter methods | All domain classes (Student.java, Course.java) |
| **OOP - Inheritance** | Person abstract class extended by Student, Instructor | Person.java → Student.java, Instructor.java |
| **OOP - Abstraction** | Abstract Person class with abstract methods | Person.java |
| **OOP - Polymorphism** | Method overriding, interface implementations | Service classes, interface implementations |
| **Design Patterns - Singleton** | AppConfig class with getInstance() method | AppConfig.java |
| **Design Patterns - Builder** | Course.Builder for complex object creation | Course.java (nested Builder class) |
| **Exception Handling** | Custom exceptions with try-catch-finally | DuplicateEnrollmentException.java, all service classes |
| **File I/O (NIO.2)** | Path and Files APIs for backup operations | BackupService.java, ImportExportService.java |
| **Streams API** | Filter/map/collect operations for data processing | StudentService.java, CourseService.java |
| **Date/Time API** | LocalDate, LocalDateTime for timestamps | Student.java, BackupService.java |
| **Enums** | Grade and Semester enums with methods | Grade.java, Semester.java |
| **Interfaces & Lambda** | Functional interfaces with lambda expressions | ComparatorUtil.java, ValidationUtil.java |
| **Nested Classes** | Static nested and inner classes | Utility classes |
| **Recursion** | Directory traversal for backup size calculation | RecursionUtil.java |

## Assertions Usage

Assertions are used throughout the application for debugging and validation:

```bash
# Enable assertions when running
java -ea -cp bin Main

# Enable assertions for specific packages
java -ea:edu.ccrm... -cp bin Main

# Disable assertions (default)
java -da -cp bin Main
```

**Examples in code:**
```java
assert studentId != null : "Student ID cannot be null";
assert gpa >= 0.0 && gpa <= 4.0 : "GPA must be between 0.0 and 4.0";
```

## Acknowledgements

This project was developed as part of the Programming in Java course. All code is original work following academic integrity guidelines. Java documentation and official tutorials were referenced for API usage.

---
**Author**: [Your Name]  
**Course**: Programming in Java  
**Date**: September 2025
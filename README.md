# Terraform Practice Repository

Welcome to the **Terraform Practice Repository**! This repository is a collection of Terraform scripts and configurations designed to help you learn and practice using Terraform to manage infrastructure as code.

---

## Table of Contents
- [About](#about)
- [Getting Started](#getting-started)
- [Directory Structure](#directory-structure)
- [Requirements](#requirements)
- [Setup and Usage](#setup-and-usage)
- [Contributing](#contributing)
- [License](#license)

---

## About
This repository provides a variety of examples and exercises for learning Terraform. It covers fundamental concepts, best practices, and real-world use cases. Topics include:
- Provider setup
- Resource creation and management
- Modules and variables
- State management
- Workspaces
- Provisioners

---

## Getting Started
To get started with this repository, you need basic knowledge of:
- Infrastructure as Code (IaC)
- Command-line tools
- A cloud provider (e.g., AWS, Azure, Google Cloud)

If you're new to Terraform, consider reviewing the [Terraform Documentation](https://www.terraform.io/docs) for foundational knowledge.

For the [Terraform Registry](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) for the modules and resources

---

## Directory Structure
```
Terraform-practice/
├── 1.29-Days-of-Terraform/              
├── 2.Practice-Part-1 /             
├── 3.Practice-Part-2/
├── 4.Cloud-State-Management/
├── 5.Terraform-for-EKS/            
├── .gitignore/ 
├── LICENSE/
├── Terraform.md/       
└── README.md            
```

---

## Requirements

To use the configurations in this repository, ensure you have:
- [Terraform](https://www.terraform.io/downloads) installed (v1.0 or later)
- Access to a cloud provider account (e.g., AWS, Azure, Google Cloud)
- [Git](https://git-scm.com/) for cloning the repository

---

## Setup and Usage

1. **Clone the repository:**
   ```bash
   git clone https://github.com/shub0618/Terraform_Practice.git
   cd terraform-practice
   ```

2. **Navigate to a specific example:**
   ```bash
   cd 1.29--Days-of-Terraform/
   ```

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Review the plan:**
   ```bash
   terraform plan
   ```

5. **Apply the configuration:**
   ```bash
   terraform apply
   ```

6. **Destroy the infrastructure when done:**
   ```bash
   terraform destroy
   ```

---

## Contributing

Contributions are welcome! If you have examples, fixes, or improvements, feel free to submit a pull request.

1. Fork the repository
2. Create a new branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'Add your feature'`
4. Push to the branch: `git push origin feature/your-feature`
5. Open a pull request

---

## License
This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Feedback
If you have any feedback, suggestions or any questions feel free to reach out via the issues tab. 😊

---

Happy coding! 🚀

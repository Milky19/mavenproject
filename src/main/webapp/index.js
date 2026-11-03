const courseData = {
  devops: {
    title: "DevOps Engineering",
    topics: ["Linux administration and shell scripting", "Git and GitHub workflows", "Maven and build automation", "Jenkins CI/CD pipelines", "Docker and containerization", "Kubernetes and Helm", "Terraform infrastructure as code", "Ansible configuration management", "AWS deployment fundamentals", "Monitoring with Prometheus and Grafana", "End-to-end DevOps projects"],
    tools: ["Linux", "Git", "GitHub", "Maven", "Jenkins", "Docker", "Kubernetes", "Terraform", "Ansible", "AWS", "Helm", "Argo CD", "Prometheus", "Grafana"]
  },
  devsecops: {
    title: "DevSecOps Engineering",
    topics: ["DevSecOps and secure SDLC fundamentals", "Security in CI/CD pipelines", "Static application security testing (SAST)", "Software composition analysis (SCA)", "Container image security", "Infrastructure as code scanning", "Secrets management", "Vulnerability triage and remediation", "Security reports and secure deployment project"],
    tools: ["Jenkins", "SonarQube", "Trivy", "OWASP Dependency-Check", "Checkov", "Snyk", "OWASP ZAP", "Docker", "Kubernetes"]
  },
  cloud: {
    title: "Multi-Cloud Engineering",
    topics: ["Cloud concepts and shared responsibility", "AWS core services", "Microsoft Azure fundamentals", "Google Cloud fundamentals", "Cloud networking and identity", "Compute and storage services", "Load balancing and scaling", "Terraform across cloud platforms", "Cloud monitoring and cost awareness", "Multi-cloud deployment project"],
    tools: ["AWS", "Microsoft Azure", "Google Cloud", "Terraform", "Ansible", "Docker", "Kubernetes", "Amazon CloudWatch", "Azure Monitor"]
  },
  mlops: {
    title: "MLOps Engineering",
    topics: ["Python and machine-learning foundations", "Data preparation and validation", "Model training and evaluation", "Experiment tracking", "Model and data versioning", "Model serving APIs", "CI/CD for machine learning", "Model monitoring and drift", "Automated retraining workflow", "End-to-end MLOps project"],
    tools: ["Python", "Jupyter", "scikit-learn", "MLflow", "Kubeflow", "DVC", "Docker", "Kubernetes", "FastAPI", "GitHub Actions"]
  },
  aiops: {
    title: "AIOps Engineering",
    topics: ["AIOps concepts and use cases", "Metrics, logs and events", "Log analysis and anomaly detection", "Intelligent alerting", "Incident correlation", "Root-cause analysis concepts", "Predictive operations", "Automated remediation patterns", "AIOps monitoring project"],
    tools: ["Python", "Prometheus", "Grafana", "Elastic Stack", "OpenSearch", "Splunk", "Datadog", "CloudWatch", "Kubernetes"]
  },
  genai: {
    title: "Generative AI Engineering",
    topics: ["AI and Python foundations", "Prompt engineering", "Large language model concepts", "Working with model APIs", "Embeddings and vector search", "Retrieval-augmented generation (RAG)", "Vector databases", "AI agents and tool calling", "Building and deploying AI applications", "Responsible AI and evaluation", "Generative AI project"],
    tools: ["Python", "OpenAI API", "Gemini API", "Hugging Face", "LangChain", "LlamaIndex", "FAISS", "ChromaDB", "FastAPI", "Docker", "Streamlit"]
  }
};

const details = document.getElementById("courseDetails");
const title = document.getElementById("courseTitle");
const topics = document.getElementById("courseTopics");
const tools = document.getElementById("courseTools");
const cards = document.querySelectorAll(".course-card");

function showCourse(courseKey, selectedCard) {
  const course = courseData[courseKey];
  if (!course) return;

  title.textContent = course.title;
  topics.replaceChildren();
  tools.replaceChildren();

  course.topics.forEach((topic) => {
    const item = document.createElement("li");
    item.textContent = topic;
    topics.appendChild(item);
  });

  course.tools.forEach((tool) => {
    const badge = document.createElement("span");
    badge.className = "tool-badge";
    badge.textContent = tool;
    tools.appendChild(badge);
  });

  details.hidden = false;
  cards.forEach((card) => {
    card.classList.toggle("selected", card === selectedCard);
    card.setAttribute("aria-pressed", String(card === selectedCard));
  });

  details.scrollIntoView({ behavior: "smooth", block: "start" });
}

function closeCourse() {
  details.hidden = true;
  cards.forEach((card) => {
    card.classList.remove("selected");
    card.setAttribute("aria-pressed", "false");
  });
}

cards.forEach((card) => {
  card.setAttribute("aria-pressed", "false");
  card.addEventListener("click", () => showCourse(card.dataset.course, card));
});

document.getElementById("closeDetails").addEventListener("click", closeCourse);

const menuToggle = document.getElementById("menuToggle");
const navLinks = document.getElementById("navLinks");
menuToggle.addEventListener("click", () => {
  const isOpen = navLinks.classList.toggle("open");
  menuToggle.setAttribute("aria-expanded", String(isOpen));
});
navLinks.querySelectorAll("a").forEach((link) => {
  link.addEventListener("click", () => {
    navLinks.classList.remove("open");
    menuToggle.setAttribute("aria-expanded", "false");
  });
});


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Krishna DevOps | Learn Here. Lead Anywhere.</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary: #38bdf8;
            --secondary: #818cf8;
            --dark: #020617;
            --card: #0f172a;
            --text: #f8fafc;
            --muted: #94a3b8;
        }

        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: var(--dark);
            color: var(--text);
            line-height: 1.6;
        }

        /* NAVBAR */

        header {
            background: rgba(2, 6, 23, 0.95);
            border-bottom: 1px solid #1e293b;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar {
            max-width: 1250px;
            margin: auto;
            padding: 18px 25px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
        }

        .logo {
            font-size: 25px;
            font-weight: 800;
            color: var(--primary);
        }

        .logo span {
            color: white;
        }

        .nav-links {
            display: flex;
            gap: 25px;
            list-style: none;
            align-items: center;
        }

        .nav-links a {
            text-decoration: none;
            color: #cbd5e1;
            font-weight: 600;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: var(--primary);
        }

        .nav-btn {
            background: linear-gradient(90deg, #0284c7, #6366f1);
            color: white !important;
            padding: 10px 20px;
            border-radius: 25px;
        }

        /* HERO SECTION */

        .hero {
            min-height: 520px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 80px 20px;
            background:
                radial-gradient(circle at top left, #172554, transparent 45%),
                radial-gradient(circle at bottom right, #312e81, transparent 40%),
                #020617;
        }

        .hero-content {
            max-width: 950px;
        }

        .welcome {
            display: inline-block;
            padding: 8px 20px;
            border: 1px solid #334155;
            border-radius: 30px;
            background: #0f172a;
            color: var(--primary);
            font-size: 14px;
            font-weight: bold;
            letter-spacing: 2px;
            margin-bottom: 25px;
        }

        .hero h1 {
            font-size: clamp(35px, 6vw, 65px);
            line-height: 1.15;
            margin-bottom: 25px;
        }

        .hero h1 span {
            background: linear-gradient(90deg, #38bdf8, #a78bfa);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            color: #cbd5e1;
            font-size: 19px;
            max-width: 750px;
            margin: auto;
        }

        .hero-buttons {
            margin-top: 35px;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 15px;
        }

        .btn {
            display: inline-block;
            padding: 14px 28px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn-primary {
            background: linear-gradient(90deg, #0284c7, #6366f1);
            color: white;
        }

        .btn-outline {
            border: 1px solid #475569;
            color: white;
        }

        .btn:hover {
            transform: translateY(-4px);
            box-shadow: 0 10px 30px #0284c740;
        }

        /* COMMON SECTION */

        section {
            padding: 75px 20px;
        }

        .section-container {
            max-width: 1200px;
            margin: auto;
        }

        .section-heading {
            text-align: center;
            margin-bottom: 45px;
        }

        .section-heading h2 {
            font-size: clamp(28px, 4vw, 42px);
            margin-bottom: 12px;
        }

        .section-heading h2 span {
            color: var(--primary);
        }

        .section-heading p {
            color: var(--muted);
            font-size: 17px;
        }

        /* COURSE CARDS */

        .courses-section {
            background: #080f20;
        }

        .course-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
        }

        .course-card {
            background: linear-gradient(145deg, #111c34, #0b1224);
            border: 1px solid #263449;
            border-radius: 18px;
            padding: 30px;
            cursor: pointer;
            transition: 0.3s;
            position: relative;
            overflow: hidden;
        }

        .course-card::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            height: 4px;
            width: 100%;
            background: linear-gradient(90deg, #38bdf8, #818cf8);
        }

        .course-card:hover,
        .course-card.active {
            transform: translateY(-8px);
            border-color: var(--primary);
            box-shadow: 0 15px 40px #0284c720;
        }

        .course-icon {
            font-size: 42px;
            margin-bottom: 15px;
        }

        .course-card h3 {
            font-size: 22px;
            margin-bottom: 10px;
        }

        .course-card p {
            color: var(--muted);
            font-size: 15px;
            margin-bottom: 20px;
        }

        .course-card button {
            background: transparent;
            border: none;
            color: var(--primary);
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
        }

        /* COURSE DETAILS */

        .course-details {
            margin-top: 45px;
            background: #0f172a;
            border: 1px solid #334155;
            border-radius: 20px;
            padding: 35px;
            display: none;
            animation: fadeIn 0.4s ease;
        }

        .course-details.show {
            display: block;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(15px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .details-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 15px;
            flex-wrap: wrap;
            margin-bottom: 25px;
        }

        .details-header h2 {
            font-size: 30px;
            color: var(--primary);
        }

        .close-btn {
            background: #1e293b;
            color: white;
            border: 1px solid #475569;
            padding: 8px 16px;
            border-radius: 20px;
            cursor: pointer;
        }

        .details-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
        }

        .details-content h3 {
            margin-bottom: 15px;
            color: #c4b5fd;
        }

        .topic-list {
            list-style: none;
        }

        .topic-list li {
            padding: 10px 0;
            border-bottom: 1px solid #263449;
            color: #cbd5e1;
        }

        .topic-list li::before {
            content: "✓ ";
            color: #38bdf8;
            font-weight: bold;
        }

        .tools {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .tool-badge {
            background: #1e293b;
            border: 1px solid #334155;
            padding: 9px 15px;
            border-radius: 25px;
            color: #bae6fd;
            font-size: 14px;
        }

        /* WHY US */

        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 25px;
        }

        .feature-card {
            text-align: center;
            background: #0f172a;
            border: 1px solid #263449;
            border-radius: 16px;
            padding: 30px 20px;
        }

        .feature-card .icon {
            font-size: 38px;
            margin-bottom: 15px;
        }

        .feature-card h3 {
            margin-bottom: 10px;
        }

        .feature-card p {
            color: var(--muted);
        }

        /* CTA */

        .cta {
            text-align: center;
            background: linear-gradient(135deg, #172554, #312e81);
            border-radius: 25px;
            padding: 55px 25px;
        }

        .cta h2 {
            font-size: clamp(28px, 4vw, 40px);
            margin-bottom: 15px;
        }

        .cta p {
            color: #cbd5e1;
            margin-bottom: 25px;
        }

        /* FOOTER */

        footer {
            background: #020617;
            border-top: 1px solid #1e293b;
            padding: 30px 20px;
            text-align: center;
            color: #94a3b8;
        }

        footer strong {
            color: var(--primary);
        }

        /* MOBILE */

        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
            }

            .nav-links {
                flex-wrap: wrap;
                justify-content: center;
                gap: 15px;
            }

            .hero {
                min-height: 450px;
            }

            .details-content {
                grid-template-columns: 1fr;
            }

            .course-details {
                padding: 22px;
            }

            section {
                padding: 55px 15px;
            }
        }
    </style>
</head>

<body>

<!-- NAVIGATION -->

<header>
    <nav class="navbar">

        <div class="logo">
            KRISHNA <span>DEVOPS</span>
        </div>

        <ul class="nav-links">
            <li><a href="#home">Home</a></li>
            <li><a href="#courses">Courses</a></li>
            <li><a href="#about">About</a></li>
            <li>
                <a href="#contact" class="nav-btn">Join Now</a>
            </li>
        </ul>

    </nav>
</header>


<!-- HERO SECTION -->

<section class="hero" id="home">

    <div class="hero-content">

        <div class="welcome">
            🚀 WELCOME TO KRISHNA DEVOPS
        </div>

        <h1>
            Learn Here.<br>
            <span>Lead Anywhere.</span>
        </h1>

        <p>
            Master DevOps, DevSecOps, Multi-Cloud, MLOps,
            AIOps and Generative AI through real-time projects,
            hands-on training and industry-leading tools.
        </p>

        <div class="hero-buttons">

            <a href="#courses" class="btn btn-primary">
                Explore Courses →
            </a>

            <a href="#about" class="btn btn-outline">
                Why Choose Us?
            </a>

        </div>

    </div>

</section>


<!-- COURSES SECTION -->

<section class="courses-section" id="courses">

    <div class="section-container">

        <div class="section-heading">

            <h2>
                Explore Our <span>Courses</span>
            </h2>

            <p>
                Click on any course to explore its syllabus
                and industry tools.
            </p>

        </div>

        <div class="course-grid">

            <!-- DEVOPS -->

            <div class="course-card" onclick="showCourse('devops', this)">

                <div class="course-icon">⚙️</div>

                <h3>DevOps Engineering</h3>

                <p>
                    Learn automation, CI/CD pipelines,
                    cloud infrastructure and deployments.
                </p>

                <button>View Course & Tools →</button>

            </div>

            <!-- DEVSECOPS -->

            <div class="course-card" onclick="showCourse('devsecops', this)">

                <div class="course-icon">🔐</div>

                <h3>DevSecOps</h3>

                <p>
                    Integrate security into every stage
                    of the software development lifecycle.
                </p>

                <button>View Course & Tools →</button>

            </div>

            <!-- MULTI CLOUD -->

            <div class="course-card" onclick="showCourse('cloud', this)">

                <div class="course-icon">☁️</div>

                <h3>Multi-Cloud Engineering</h3>

                <p>
                    Build and manage cloud infrastructure
                    across multiple cloud platforms.
                </p>

                <button>View Course & Tools →</button>

            </div>

            <!-- MLOPS -->

            <div class="course-card" onclick="showCourse('mlops', this)">

                <div class="course-icon">🤖</div>

                <h3>MLOps Engineering</h3>

                <p>
                    Automate machine learning model
                    training, deployment and monitoring.
                </p>

                <button>View Course & Tools →</button>

            </div>

            <!-- AIOPS -->

            <div class="course-card" onclick="showCourse('aiops', this)">

                <div class="course-icon">🧠</div>

                <h3>AIOps Engineering</h3>

                <p>
                    Use AI and machine learning for
                    intelligent IT operations.
                </p>

                <button>View Course & Tools →</button>

            </div>

            <!-- GENERATIVE AI -->

            <div class="course-card" onclick="showCourse('genai', this)">

                <div class="course-icon">✨</div>

                <h3>Generative AI</h3>

                <p>
                    Build AI applications using LLMs,
                    prompt engineering and RAG.
                </p>

                <button>View Course & Tools →</button>

            </div>

        </div>


        <!-- DYNAMIC COURSE DETAILS -->

        <div class="course-details" id="courseDetails">

            <div class="details-header">

                <h2 id="courseTitle">
                    Course Details
                </h2>

                <button class="close-btn" onclick="closeCourse()">
                    ✕ Close
                </button>

            </div>

            <div class="details-content">

                <div>

                    <h3>📚 Course Syllabus</h3>

                    <ul class="topic-list" id="courseTopics">
                    </ul>

                </div>

                <div>

                    <h3>🛠️ Industry Tools</h3>

                    <div class="tools" id="courseTools">
                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- ABOUT SECTION -->

<section id="about">

    <div class="section-container">

        <div class="section-heading">

            <h2>
                Why Choose <span>Krishna DevOps?</span>
            </h2>

            <p>
                Learn practical skills and build confidence
                with real-world industry scenarios.
            </p>

        </div>

        <div class="features">

            <div class="feature-card">

                <div class="icon">💻</div>

                <h3>Hands-on Training</h3>

                <p>
                    Practice with real industry tools
                    and practical assignments.
                </p>

            </div>

            <div class="feature-card">

                <div class="icon">🚀</div>

                <h3>Real-Time Projects</h3>

                <p>
                    Build end-to-end projects and
                    understand production workflows.
                </p>

            </div>

            <div class="feature-card">

                <div class="icon">🎯</div>

                <h3>Career Guidance</h3>

                <p>
                    Develop technical skills,
                    interview preparation and confidence.
                </p>

            </div>

            <div class="feature-card">

                <div class="icon">🌐</div>

                <h3>Industry Technologies</h3>

                <p>
                    Learn cloud, automation,
                    containers and AI technologies.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- CONTACT SECTION -->

<section id="contact">

    <div class="section-container">

        <div class="cta">

            <h2>
                Start Your DevOps Journey Today!
            </h2>

            <p>
                Learn. Practice. Build. Deploy. Succeed.
            </p>

            <a href="#courses" class="btn btn-primary">
                Explore All Courses →
            </a>

        </div>

    </div>

</section>


<!-- FOOTER -->

<footer>

    <p>
        © 2026 <strong>Krishna DevOps</strong>.
        Learn Here. Lead Anywhere.
    </p>

    <p>
        DevOps | DevSecOps | Multi-Cloud | MLOps | AIOps | Generative AI
    </p>

</footer>


<!-- JAVASCRIPT -->

<script>

    const courses = {

        devops: {
            title: "DevOps Engineering",
            topics: [
                "Linux Administration",
                "Git and GitHub",
                "Shell Scripting",
                "Maven and Build Automation",
                "Jenkins CI/CD Pipelines",
                "Docker and Containerization",
                "Kubernetes and Helm",
                "Terraform and Infrastructure as Code",
                "Ansible Configuration Management",
                "AWS Cloud Deployment",
                "Prometheus and Grafana Monitoring",
                "Real-Time DevOps Projects"
            ],
            tools: [
                "Linux",
                "Git",
                "GitHub",
                "Maven",
                "Jenkins",
                "Docker",
                "Kubernetes",
                "Terraform",
                "Ansible",
                "AWS",
                "Helm",
                "ArgoCD",
                "Prometheus",
                "Grafana"
            ]
        },

        devsecops: {
            title: "DevSecOps Engineering",
            topics: [
                "DevSecOps Fundamentals",
                "Secure SDLC",
                "Security in CI/CD Pipelines",
                "Static Application Security Testing",
                "Software Composition Analysis",
                "Container Security",
                "Infrastructure as Code Security",
                "Secrets Management",
                "Vulnerability Management",
                "Security Reporting and Remediation",
                "Secure Deployment Projects"
            ],
            tools: [
                "Jenkins",
                "SonarQube",
                "Trivy",
                "OWASP Dependency-Check",
                "Checkov",
                "Snyk",
                "OWASP ZAP",
                "Docker",
                "Kubernetes",
                "AWS IAM"
            ]
        },

        cloud: {
            title: "Multi-Cloud Engineering",
            topics: [
                "Cloud Computing Fundamentals",
                "AWS Core Services",
                "Microsoft Azure Fundamentals",
                "Google Cloud Platform Fundamentals",
                "Networking and VPC",
                "IAM and Cloud Security",
                "Virtual Machines",
                "Storage Services",
                "Load Balancing and Auto Scaling",
                "Terraform Multi-Cloud Automation",
                "Cloud Monitoring",
                "Multi-Cloud Deployment Projects"
            ],
            tools: [
                "AWS",
                "Microsoft Azure",
                "Google Cloud",
                "Terraform",
                "Ansible",
                "Docker",
                "Kubernetes",
                "CloudWatch",
                "Azure Monitor",
                "Google Cloud Monitoring"
            ]
        },

        mlops: {
            title: "MLOps Engineering",
            topics: [
                "Python Programming",
                "Machine Learning Fundamentals",
                "Data Preparation",
                "Model Training",
                "Model Evaluation",
                "Experiment Tracking",
                "Model Versioning",
                "ML Model Deployment",
                "CI/CD for Machine Learning",
                "Model Monitoring",
                "Model Retraining",
                "End-to-End MLOps Project"
            ],
            tools: [
                "Python",
                "Jupyter Notebook",
                "Scikit-learn",
                "MLflow",
                "Kubeflow",
                "DVC",
                "Docker",
                "Kubernetes",
                "FastAPI",
                "GitHub Actions",
                "Prometheus"
            ]
        },

        aiops: {
            title: "AIOps Engineering",
            topics: [
                "AIOps Fundamentals",
                "AI and Machine Learning Basics",
                "IT Operations Monitoring",
                "Log Analysis",
                "Anomaly Detection",
                "Intelligent Alerting",
                "Root Cause Analysis",
                "Predictive Incident Management",
                "AI-Based Infrastructure Monitoring",
                "Automated Remediation",
                "Real-Time AIOps Projects"
            ],
            tools: [
                "Python",
                "Prometheus",
                "Grafana",
                "ELK Stack",
                "OpenSearch",
                "Splunk",
                "Datadog",
                "Machine Learning",
                "AWS CloudWatch",
                "Kubernetes"
            ]
        },

        genai: {
            title: "Generative AI Engineering",
            topics: [
                "Artificial Intelligence Fundamentals",
                "Python for AI",
                "Prompt Engineering",
                "Large Language Models",
                "Transformer Fundamentals",
                "LLM APIs",
                "Retrieval-Augmented Generation (RAG)",
                "Vector Databases",
                "AI Agents",
                "AI Application Development",
                "LLM Deployment",
                "Real-Time Generative AI Projects"
            ],
            tools: [
                "Python",
                "OpenAI API",
                "Gemini API",
                "Hugging Face",
                "LangChain",
                "LlamaIndex",
                "FAISS",
                "ChromaDB",
                "FastAPI",
                "Docker",
                "Streamlit"
            ]
        }

    };


    function showCourse(courseId, selectedCard) {

        const course = courses[courseId];

        if (!course) {
            return;
        }

        // Update course title

        document.getElementById("courseTitle").textContent =
            course.title;


        // Display syllabus topics

        const topicsContainer =
            document.getElementById("courseTopics");

        topicsContainer.innerHTML = "";

        course.topics.forEach(function(topic) {

            const li = document.createElement("li");

            li.textContent = topic;

            topicsContainer.appendChild(li);

        });


        // Display course tools

        const toolsContainer =
            document.getElementById("courseTools");

        toolsContainer.innerHTML = "";

        course.tools.forEach(function(tool) {

            const span = document.createElement("span");

            span.className = "tool-badge";

            span.textContent = tool;

            toolsContainer.appendChild(span);

        });


        // Show course details

        const details =
            document.getElementById("courseDetails");

        details.classList.add("show");


        // Highlight selected course

        document.querySelectorAll(".course-card").forEach(function(card) {

            card.classList.remove("active");

        });

        selectedCard.classList.add("active");


        // Scroll to course details

        details.scrollIntoView({
            behavior: "smooth",
            block: "start"
        });

    }


    function closeCourse() {

        document.getElementById("courseDetails")
            .classList.remove("show");

        document.querySelectorAll(".course-card").forEach(function(card) {

            card.classList.remove("active");

        });

    }

</script>

</body>
</html>

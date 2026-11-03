<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Krishna DevOps | Learn Here. Lead Anywhere.</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<header class="site-header">
    <nav class="navbar">
        <a class="brand" href="#home">KRISHNA <span>DEVOPS</span></a>
        <button class="menu-toggle" id="menuToggle" aria-label="Toggle navigation" aria-expanded="false"></button>
        <ul class="nav-links" id="navLinks">
            <li><a href="#home">Home</a></li>
            <li><a href="#courses">Courses</a></li>
            <li><a href="#about">Why Us</a></li>
            <li><a class="nav-cta" href="#contact">Join Now</a></li>
        </ul>
    </nav>
</header>

<main>
<section class="hero" id="home">
    <div class="hero-glow glow-one"></div><div class="hero-glow glow-two"></div>
    <div class="hero-inner">
        <div class="eyebrow"><span class="live-dot"></span> PRACTICAL | PROJECT-BASED | CAREER-FOCUSED</div>
        <h1>Learn Here.<br><span>Lead Anywhere.</span></h1>
        <p class="hero-copy">Build real-world skills in DevOps, DevSecOps, Multi-Cloud, MLOps, AIOps and Generative AI with hands-on projects and industry tools.</p>
        <div class="hero-actions">
            <a class="button button-primary" href="#courses">Explore Courses <span>&gt;</span></a>
            <a class="button button-secondary" href="#about">Discover Our Approach</a>
        </div>
        <div class="hero-stats">
            <div><strong>6</strong><span>Career Tracks</span></div>
            <div><strong>Hands-on</strong><span>Learning Approach</span></div>
            <div><strong>Real-time</strong><span>Project Practice</span></div>
        </div>
    </div>
</section>

<section class="courses-section section" id="courses">
    <div class="section-wrap">
        <div class="section-heading">
            <span class="section-kicker">CHOOSE YOUR PATH</span>
            <h2>Explore Our <span>Courses</span></h2>
            <p>Select a learning track to see its syllabus and the tools youll practice with.</p>
        </div>
        <div class="course-grid">
            <button class="course-card" data-course="devops">
                <span class="course-icon">01</span><span class="course-name">DevOps Engineering</span>
                <span class="course-description">Automate software delivery, infrastructure and operations.</span><span class="card-link">Explore syllabus <b>></b></span>
            </button>
            <button class="course-card" data-course="devsecops">
                <span class="course-icon">02</span><span class="course-name">DevSecOps</span>
                <span class="course-description">Bring security into every stage of the delivery pipeline.</span><span class="card-link">Explore syllabus <b>></b></span>
            </button>
            <button class="course-card" data-course="cloud">
                <span class="course-icon">03</span><span class="course-name">Multi-Cloud Engineering</span>
                <span class="course-description">Design and operate services across leading cloud platforms.</span><span class="card-link">Explore syllabus <b>></b></span>
            </button>
            <button class="course-card" data-course="mlops">
                <span class="course-icon">04</span><span class="course-name">MLOps Engineering</span>
                <span class="course-description">Manage the lifecycle of machine-learning applications.</span><span class="card-link">Explore syllabus <b>></b></span>
            </button>
            <button class="course-card" data-course="aiops">
                <span class="course-icon">05</span><span class="course-name">AIOps Engineering</span>
                <span class="course-description">Use intelligent analytics to improve IT operations.</span><span class="card-link">Explore syllabus <b>></b></span>
            </button>
            <button class="course-card" data-course="genai">
                <span class="course-icon">06</span><span class="course-name">Generative AI</span>
                <span class="course-description">Create LLM-powered applications, agents and RAG systems.</span><span class="card-link">Explore syllabus <b>></b></span>
            </button>
        </div>

        <section class="course-details" id="courseDetails" aria-live="polite" hidden>
            <div class="details-top">
                <div><span class="section-kicker">YOUR LEARNING ROADMAP</span><h3 id="courseTitle">Course title</h3></div>
                <button class="close-details" id="closeDetails" type="button" aria-label="Close course details">x</button>
            </div>
            <div class="details-columns">
                <div class="detail-panel"><h4> Syllabus</h4><ol class="topic-list" id="courseTopics"></ol></div>
                <div class="detail-panel"><h4> Tools & Technologies</h4><div class="tools-list" id="courseTools"></div><p class="tools-note">Tool coverage can be adjusted to match the project and learning level.</p></div>
            </div>
        </section>
    </div>
</section>

<section class="section about-section" id="about">
    <div class="section-wrap">
        <div class="section-heading"><span class="section-kicker">WHY KRISHNA DEVOPS</span><h2>Learn by <span>Building</span></h2><p>Turn concepts into practical skills through guided practice.</p></div>
        <div class="feature-grid">
            <article class="feature-card"><div class="feature-icon"></div><h3>Hands-on Practice</h3><p>Work with tools and commands in guided lab exercises.</p></article>
            <article class="feature-card"><div class="feature-icon"></div><h3>Real-time Projects</h3><p>Connect the pieces through practical end-to-end scenarios.</p></article>
            <article class="feature-card"><div class="feature-icon"></div><h3>Career Direction</h3><p>Build a learning path around skills used in the industry.</p></article>
        </div>
    </div>
</section>

<section class="contact-section" id="contact">
    <div class="contact-box"><span class="section-kicker">READY TO GET STARTED?</span><h2>Build skills. Build confidence.</h2><p>Choose a course and begin your technology journey.</p><a href="#courses" class="button button-primary">Find Your Course <span>&gt;</span></a></div>
</section>
</main>

<footer class="site-footer"><strong>KRISHNA DEVOPS</strong><p>Learn Here. Lead Anywhere.</p><small>Copyright <%= java.time.Year.now() %> Krishna DevOps. All rights reserved.</small></footer>

<div class="bottom-marquee" aria-label="Learn Here Lead Anywhere">
    <div class="marquee-track">
        <span> LEARN HERE <b>|</b> LEAD ANYWHERE &nbsp; | &nbsp; KRISHNA DEVOPS &nbsp; | &nbsp; DEVOPS &nbsp; | &nbsp; DEVSECOPS &nbsp; | &nbsp; MULTI-CLOUD &nbsp; | &nbsp; MLOPS &nbsp; | &nbsp; AIOPS &nbsp; | &nbsp; GENERATIVE AI &nbsp; </span>
        <span aria-hidden="true"> LEARN HERE <b>|</b> LEAD ANYWHERE &nbsp; | &nbsp; KRISHNA DEVOPS &nbsp; | &nbsp; DEVOPS &nbsp; | &nbsp; DEVSECOPS &nbsp; | &nbsp; MULTI-CLOUD &nbsp; | &nbsp; MLOPS &nbsp; | &nbsp; AIOPS &nbsp; | &nbsp; GENERATIVE AI &nbsp; </span>
    </div>
</div>
<script src="index.js"></script>
</body>
</html>

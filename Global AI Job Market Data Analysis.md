This dataset provides a comprehensive snapshot of the **Global AI Job Market**, containing **15,000 observations** that detail the compensation, requirements, and characteristics of AI-related roles worldwide.

Here is a breakdown of the dataset's structure and what each key component represents:

### **1. Scope and Scale**

* **Total Records:** 15,000 job postings.
* **Dimensions:** 19 columns covering categorical, numerical, and text data.
* **Context:** It tracks the intersection of technical skills, geographic location, and seniority to show how the AI field is evolving globally.

### **2. Key Data Columns (Variables)**

The columns in the dataset can be grouped into four main categories:

#### **Professional & Role Information**

* **`job_title`**: The specific role, ranging from technical positions (**NLP Engineer, Computer Vision Engineer**) to research roles (**AI Research Scientist**) and leadership (**Head of AI**).
* **`experience_level`**: Categorized into four tiers:
* **EN**: Entry-level (Junior)
* **MI**: Mid-level (Intermediate)
* **SE**: Senior-level (Expert)
* **EX**: Executive-level (Leadership/Director)


* **`employment_type`**: Defines the nature of the contract, such as Full-time (**FT**), Part-time (**PT**), Contract (**CT**), or Freelance (**FL**).

#### **Financial Data**

* **`salary_usd`**: The annual salary converted into US Dollars. This is the primary metric used for comparison across different regions.
* **`salary_currency`**: The original currency in which the job was posted (e.g., USD, EUR, GBP).

#### **Logistics & Company Profile**

* **`remote_ratio`**: A numerical value representing the work setup:
* **0**: Fully On-site
* **50**: Hybrid
* **100**: Fully Remote


* **`company_location` & `employee_residence**`: Tracks where the company is based versus where the talent lives, highlighting the "borderless" nature of the AI industry.
* **`company_size`**: Typically categorized as Small (S), Medium (M), or Large (L).

#### **Requirements & Qualifications**

* **`years_experience`**: The specific number of years of experience requested by the employer.
* **`education_required`**: The minimum degree level (Associate, Bachelor's, Master's, or PhD).
* **`skills_required`**: A list of technical competencies needed for the role, such as **Python, PyTorch, AWS, Kubernetes, and Deep Learning**.

### **3. Why This Dataset is Useful**

* **Salary Benchmarking:** It allows professionals and companies to see "market rate" salaries for specific levels of experience (e.g., seeing that an Executive NLP Engineer can earn ~$190k).
* **Skill Mapping:** It identifies which technologies (like Python and SQL) are mandatory versus "nice-to-have" in high-paying roles.
* **Geographic Insights:** It reveals which countries are hiring the most and which regions offer the highest remote work flexibility.

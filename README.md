# Traffic-Fatalities-Econometrics-Analysis
**Author:** Anna F  
**Software:** Stata 18.5  
**Project Type:** Panel data regression analysis  

---

## Project Overview

This project analyzes traffic fatalities across U.S. states using panel data regression models.  
The analysis investigates how unemployment and alcohol policy variables affect fatality rates, both on weekdays and weekends.  

Three main models were estimated:

1. **Total Fatality Rate (State Fixed Effects)**  
2. **Weekend Fatality Rate (State Fixed Effects)**  
3. **Weekday Fatality Rate (State Fixed Effects)**  

All models include **state fixed effects** and **robust standard errors clustered at the state level**.  

---

## Folder Structure

```text
Traffic-Fatalities-Econometric-Analysis/
├─ stata/
│   traffic_analysis_clean.do       # Stata do-file containing all regression code
├─ data/
│   driving.dta                     # Dataset used for analysis
├─ report/
│   AFung_TrafficFatalities_EconometricsEmpiricalProject.pdf  # Poster summarizing results
```

- **stata/**: Contains the Stata do-file to reproduce all regressions.  
- **data/**: Contains the `driving.dta` dataset from the Wooldridge package.  
- **report/**: Contains the final poster PDF with results, charts, and dataset information.  

---

## How to Run the Analysis

1. Clone or download the repository.  
2. Open Stata and set the working directory to the `stata/` folder.  
3. Ensure the `data/` folder is in the same directory level as `stata/`.  
4. In Stata, open and run the `traffic_analysis_clean.do` file.  
   - The code references the dataset with:  
     ```stata
     use "../data/driving.dta", clear
     ```  
5. All models should run and produce the regression results as presented in the poster.  

---

## Dataset Citation

Dataset source: Wooldridge, J.M. (2020), *Introductory Econometrics: A Modern Approach*, 7th edition.  
Data provided via the [Wooldridge package](https://justinmshea.github.io/wooldridge/).  

---

## Notes

- This project is for portfolio and demonstration purposes.  
- All figures, tables, and regression results are reproducible from the included Stata do-file.

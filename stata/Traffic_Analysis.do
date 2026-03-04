****************************************************
* Traffic Fatalities Econometric Analysis
* Author: Anna F
* Software: Stata 18.5
* Description: Panel data regression analyzing
****************************************************

clear all
set more off

**************************************************** 
* Load dataset
****************************************************

use "../data/driving.dta", clear

****************************************************
* Declare Panel Structure
****************************************************

xtset state year

****************************************************
* Create Weekday Fatality Rate
****************************************************

* Weekday Fatalities = Total Fatalities - Weekend Fatalities
gen wkdayfatrte = totfatrte - wkndfatrte

****************************************************
* Model 1: Total Fatality Rate (State Fixed Effects)
****************************************************

* Dependent variable: totfatrte
* Independent variable: unemployment + alcohol policy variables
* Standard errors clustered at the state level

xtreg totfatrte unem zerotol minage bac08 bac10, fe vce(cluster state)

****************************************************
* Model 2: Weekend Fatality Rate (State Fixed Effects)
****************************************************

* Dependent variable: wkndfatrte
xtreg wkndfatrte unem zerotol minage bac08 bac10, fe vce(cluster state)

****************************************************
* Model 3: Weekday Fatality Rate (State Fixed Effects)
****************************************************

* Dependent variable: wkdayfatrte
xtreg wkdayfatrte unem zerotol minage bac08 bac10, fe vce(cluster state)

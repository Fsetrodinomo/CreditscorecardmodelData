CLEANING EMPTY CELLS W/ FACTORS

loan_data_set.clean$Gender <- factor(loan_data_set.clean$Gender)
levels(loan_data_set.clean$Gender)
str(loan_data_set.clean$Gender)
________________________________
Married[Married==""]=NA
Married = droplevels(Married)
str(Married)
________________________
dependents[dependents==""]=NA
dependents = droplevels(dependents)
str(dependents)
_________________________
SelfEmployed[SelfEmployed==""]=NA
SelfEmployed = droplevels(SelfEmployed)
str(SelfEmployed)
____________________
//Remove 0 from  the co-applicate-income
CoApplicateIncome <- CoApplicateIncome[CoApplicateIncome != "0"]
_______________________________
note : female,male,na
note : esc -> end editor session
note: if you make a  c++ file you can use it in the terminal
___
summary (gender)

__
if char Female == int 1
if char Male  === int 2
if char NA == int 3

------
  
  class Gender

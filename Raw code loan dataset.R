d
Call:
  lm(formula = applicantincome ~ Loan_ID + Gender + Married + Dependents + 
       Education + Self_employed + CoapplicantIncome + Loanamount + 
       loan_amount_term + credit_history + property_area + loan_status, 
     data = loan_data_set)

> output=lm(applicantincome~Loan_ID+Gender+Married+Dependents+Education+Self_employed+CoapplicantIncome+Loanamount+loan_amount_term+credit_history+property_area+loan_status , data = loan_data_set)
Error in eval(expr, envir, enclos) : object 'applicantincome' not found
> applicantincome <- loan_data_set$ApplicantIncome
> output=lm(applicantincome~Loan_ID+Gender+Married+Dependents+Education+Self_employed+CoapplicantIncome+Loanamount+loan_amount_term+credit_history+property_area+loan_status , data = loan_data_set)
> View(output)
> save.image("~/Desktop/Hustle/Loan_dataset.RData")
> summary(output)


Loan_ID+Gender+Married+Dependents+Education+Self_employed+CoapplicantIncome+Loanamount+loan_amount_term+credit_history+property_area+loan_status  
________

[1] 0
> remove df
Error: unexpected symbol in "remove df"
> remove(df)
Error in names(frame)[names(frame) == "x"] <- name : 
  names() applied to a non-vector
> Gender <- loandataset$Gender
> View(Gender)
> na.omit(Gender)
[1] Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male  
[16] Female Male   Male   Male   Male          Male   Male   Male   Male   Female Male   Male   Male   Male  
[31] Female Male   Male   Male   Male   Male   Male   Male   Female Female Female Female Female Male   Female
[46] Male   Male   Male   Male   Male   Male   Male   Male   Female Male   Male   Male   Male   Female Male  
[61] Male   Male   Male   Male   Male   Male   Male   Female Female Male   Male   Male   Male   Male   Male  
[76] Male   Male   Male   Male   Female Male   Male   Male   Male   Male   Male   Male   Male   Male   Male  
[91] Male   Male   Female Male   Male   Female Male   Female Male   Female Female Male   Male          Male  
[106] Male   Male   Male   Male   Male   Female Male   Male   Male   Male   Male   Male   Male   Male   Female
[121] Female Male   Female Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male  
[136] Male   Male   Male   Female Male   Male   Male   Male          Male   Male   Male   Male   Male   Male  
[151] Male   Male   Male   Male   Male   Female Male   Male          Male   Male   Male   Male   Male   Male  
[166] Male   Male   Male   Male   Male   Male   Male   Female Female Male   Male   Male   Female Male   Male  
[181] Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male  
[196] Male   Male   Female Male   Male   Female Male   Male   Male   Male   Male   Male   Male   Male   Male  
[211] Male   Male   Male   Female Male   Male   Male   Female Male   Male   Male   Male   Female Female Male  
[226] Male   Male   Male   Female Female Female Male   Male   Male   Male   Male   Male   Male   Male   Male  
[241] Male   Male   Female Male   Female Male   Female Male   Male   Male   Male   Female Male   Male   Male  
[256] Female Female Male   Male   Male   Female Male   Male   Female Female Male   Female Male   Female       
[271] Male   Male   Male   Male   Male   Male   Male   Male   Male   Female Female Male   Male   Male   Male  
[286]        Male   Male   Female Male   Female Male   Male   Male   Male   Male   Male   Male   Male   Male  
[301] Male   Female Female Female Male   Male   Male   Male   Female Male   Male   Male   Male   Male   Male  
[316] Male   Female Male   Male   Male   Female Male   Male   Male   Male   Male   Male   Female Male   Male  
[331] Male   Male   Male   Male   Male   Male   Male   Male   Female Male   Male   Female Male   Male   Male  
[346] Female Female Female Male   Female Male   Male   Female Male   Male   Female Female Female Male   Male  
[361] Male   Male   Male   Male   Male   Female Male   Male   Male   Female Male   Male   Male   Male   Male  
[376] Male   Female Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Male  
[391] Male   Male   Male   Male   Male   Male   Female Male   Male   Male          Female Male   Male   Male  
[406] Male   Male   Male   Male          Male   Female Male   Male   Male   Male   Male   Male   Male   Male  
[421] Male   Male   Female Male   Female Male   Male   Male   Female Female Male   Male   Male          Male  
[436] Female Male   Male   Male   Male   Male   Male   Female Male   Male   Female Male   Male   Male   Male  
[451] Male   Male   Male   Male   Male   Male   Male   Female Male   Male   Male   Male   Male   Female Female
[466] Female Male   Male   Male   Male   Female Male   Male   Male   Male   Male   Male   Male   Female Male  
[481] Female Male   Male   Male   Male   Male   Female Male   Male   Male   Male   Male   Male   Male         
[496] Male   Male   Male   Male   Male   Female Male   Male   Male   Female        Male   Male   Male         
[511] Male   Male   Male   Male   Male   Male   Male   Male   Male   Male   Female Male   Male   Male   Female
[526] Male   Male   Male   Female
Levels:  Female Male
> mean(Gender)
[1] NA
Warning message:
  In mean.default(Gender) : argument is not numeric or logical: returning NA
> mean(Gender, na.rm = TRUE)
[1] NA
Warning message:
  In mean.default(Gender, na.rm = TRUE) :
  argument is not numeric or logical: returning NA
> Gender <- na.omit(Gender)
> View(Gender)
> Gender <- na.remove (Gender)
Error: could not find function "na.remove"
> loandataset <- na.omit(Gender)
> View(loandataset)
> remove(loandataset)
> colSums(is.na(loan_data_set))
Loan_ID            Gender           Married        Dependents         Education     Self_Employed 
0                 0                 0                 0                 0                 0 
ApplicantIncome CoapplicantIncome        LoanAmount  Loan_Amount_Term    Credit_History     Property_Area 
0                 0                22                14                50                 0 
Loan_Status 
0 
> loan_data_set.clean<-na.omit(loan_data_set)
> nrow(loan_data_set.clean)
[1] 529
> loan_data_set.clean2<-loan_data_set[complete.cases(loan_data_set),]
> loan_data_set.clean3<-na.omit(loan_data_set[-1])
> nrow(loan_data_set.clean3)
[1] 529
> loan_data_set.clean4<-loan_data_set[,colSums(is.na(loan_data_set))<10]
> loan_data_set.clean.final<-na.omit(loan_data_set.clean4)
> nrow(loan_data_set.clean.final)
[1] 614
> View(loan_data_set.clean.final)
> remove(loan_data_set.clean2,loan_data_set.clean3,loan_data_set.clean,loan_data_set.clean4)
> remove(loan_data_set.clean.final)
> colSums(is.na(loan_data_set))
Loan_ID            Gender           Married        Dependents         Education     Self_Employed 
0                 0                 0                 0                 0                 0 
ApplicantIncome CoapplicantIncome        LoanAmount  Loan_Amount_Term    Credit_History     Property_Area 
0                 0                22                14                50                 0 
Loan_Status 
0 
> Loanamount <- loan_data_set$LoanAmount
> View(Loanamount)
> na.omit(Loanamount)
[1] 128  66 120 141 267  95 158 168 349  70 109 200 114  17 125 100  76 133 115 104 315 116 112 151 191 122 110
[28]  35 120 201  74 106 114 320 100 144 184 110  80  47  75 134  96  88  44 144 120 144 100 120 112 134 286  97
[55]  96 135 180 144 120  99 165 116 258 126 312 125 136 172  97  81  95 187 113 176 110 180 130 111 167 265  50
[82] 136  99 104 210 175 131 188  81 122  25 137  50 115 131 133 151 160 100 225 120 216  94 136 139 152 118 185
[109] 154  85 175 259 180  44 137  81 194  93 370 160 182 650  74  70  25 102 290  84  88 242 129 185 168 175 122
[136] 187 100  70  30 225 125 118 152 244 113  50 600 160 187 120 255  98 275 121 158  75 182 112 129  63 200  95
[163] 700  81 187  87 116 101 495 116 102 180  67  73 260 108 120  66  58 168 188  48 164 160  76 120 170 187 120
[190] 113  83  90 166 135 124 120  80  55  59 127 214 128 240 130 137 100 135 131  72 127  60 116 144 175 128 170
[217] 138 210 158 200 104  42 120 280 140 170 255 122 112  96 120 140 155 108 123 120 112 137 123  90 201 138 104
[244] 279 192 255 115  94 304 128 330 134 155 120 128 151 150 160 135  90  30 136 126 150  90 115 207  80 436 124
[271] 158 112  78  54  89  99 120 115 187 139 127 134 143 172 110 200 135 151 113  93 105 132  96 140 135 104 480
[298] 185  84 111  56 144 159 111 120  88 112 155 115 124 132 300 376 130 184 110  67 117  98  71 490 182  70 160
[325] 176  71 173  46 158  74 125 160 152 126 259 187 228 308  95 105 130 116 165  67 100 200  81 236 130  95 141
[352] 133  96 124 175 570  55 155 380 111 110 120 130 130  71 130 128 296 156 128 100 113 132 136 125 185 275 120
[379] 113 113 135  71  95 109 103  45  65 103  53 194 115 115  66 152 360  62 160 218 110 178  60 160 239 112 138
[406] 138  80 100 110  96 121  81 133  87  60 150 105 405 143 100  50 187 138 187 180 148 152 175 130 110  55 150
[433] 190 125  60 149  90  84  96 118 173 136 160 160 128 153 132  98 140  70 110  98 110 162 113 100  93 162 150
[460] 230 132  86 154 113 128 234 246 131  80 500 160  75  96 186 110 225 119 105 107 111  95 209 113 100 208 138
[487] 124 243 480  96 188  40 100 250 148  70 311 150 113 123 185  95  45  55 100 480 400 110 161  94 130 216 100
[514] 110 196 125 126 324 107  66 157 140  99  95 128 102 155  80 145 103 110 158 181 132  26  84 260 162 182 108
[541] 600 211 132 258 120  70 123   9 104 186 165 275 187 150 108 136 110 107 161 205  90  36  61 146 172 104  70
[568]  94 106  56 205 292 142 260 110 187  88 180 192 350 155 128 172 496 173 157 108  71  40 253 187 133
attr(,"na.action")
[1]   1  36  64  82  96 103 104 114 128 203 285 306 323 339 388 436 438 480 525 551 552 606
attr(,"class")
[1] "omit"
> View(Loanamount)
> is.na(Loanamount)
[1]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[19] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
[37] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[55] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[73] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[91] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE
[109] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[127] FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[145] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[163] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[181] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[199] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[217] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[235] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[253] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[271] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
[289] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
[307] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE
[325] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
[343] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[361] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[379] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[397] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[415] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[433] FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[451] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[469] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
[487] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[505] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[523] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[541] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
[559] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[577] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[595] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
[613] FALSE FALSE
> which(is.na(Loanamount))
[1]   1  36  64  82  96 103 104 114 128 203 285 306 323 339 388 436 438 480 525 551 552 606
> Loanamount [which(is.na(Loanamount))] <- 0
> Loanamount
[1]   0 128  66 120 141 267  95 158 168 349  70 109 200 114  17 125 100  76 133 115 104 315 116 112 151 191 122
[28] 110  35 120 201  74 106 114 320   0 100 144 184 110  80  47  75 134  96  88  44 144 120 144 100 120 112 134
[55] 286  97  96 135 180 144 120  99 165   0 116 258 126 312 125 136 172  97  81  95 187 113 176 110 180 130 111
[82]   0 167 265  50 136  99 104 210 175 131 188  81 122  25   0 137  50 115 131 133 151   0   0 160 100 225 120
[109] 216  94 136 139 152   0 118 185 154  85 175 259 180  44 137  81 194  93 370   0 160 182 650  74  70  25 102
[136] 290  84  88 242 129 185 168 175 122 187 100  70  30 225 125 118 152 244 113  50 600 160 187 120 255  98 275
[163] 121 158  75 182 112 129  63 200  95 700  81 187  87 116 101 495 116 102 180  67  73 260 108 120  66  58 168
[190] 188  48 164 160  76 120 170 187 120 113  83  90 166   0 135 124 120  80  55  59 127 214 128 240 130 137 100
[217] 135 131  72 127  60 116 144 175 128 170 138 210 158 200 104  42 120 280 140 170 255 122 112  96 120 140 155
[244] 108 123 120 112 137 123  90 201 138 104 279 192 255 115  94 304 128 330 134 155 120 128 151 150 160 135  90
[271]  30 136 126 150  90 115 207  80 436 124 158 112  78  54   0  89  99 120 115 187 139 127 134 143 172 110 200
[298] 135 151 113  93 105 132  96 140   0 135 104 480 185  84 111  56 144 159 111 120  88 112 155 115 124   0 132
[325] 300 376 130 184 110  67 117  98  71 490 182  70 160 176   0  71 173  46 158  74 125 160 152 126 259 187 228
[352] 308  95 105 130 116 165  67 100 200  81 236 130  95 141 133  96 124 175 570  55 155 380 111 110 120 130 130
[379]  71 130 128 296 156 128 100 113 132   0 136 125 185 275 120 113 113 135  71  95 109 103  45  65 103  53 194
[406] 115 115  66 152 360  62 160 218 110 178  60 160 239 112 138 138  80 100 110  96 121  81 133  87  60 150 105
[433] 405 143 100   0  50   0 187 138 187 180 148 152 175 130 110  55 150 190 125  60 149  90  84  96 118 173 136
[460] 160 160 128 153 132  98 140  70 110  98 110 162 113 100  93 162 150 230 132  86   0 154 113 128 234 246 131
[487]  80 500 160  75  96 186 110 225 119 105 107 111  95 209 113 100 208 138 124 243 480  96 188  40 100 250 148
[514]  70 311 150 113 123 185  95  45  55 100 480   0 400 110 161  94 130 216 100 110 196 125 126 324 107  66 157
[541] 140  99  95 128 102 155  80 145 103 110   0   0 158 181 132  26  84 260 162 182 108 600 211 132 258 120  70
[568] 123   9 104 186 165 275 187 150 108 136 110 107 161 205  90  36  61 146 172 104  70  94 106  56 205 292 142
[595] 260 110 187  88 180 192 350 155 128 172 496   0 173 157 108  71  40 253 187 133
> Loanamount [which(is.na(Loanamount))] <- mean(Loanamount,na.rm = TRUE)
> Loanamount
[1]   0 128  66 120 141 267  95 158 168 349  70 109 200 114  17 125 100  76 133 115 104 315 116 112 151 191 122
[28] 110  35 120 201  74 106 114 320   0 100 144 184 110  80  47  75 134  96  88  44 144 120 144 100 120 112 134
[55] 286  97  96 135 180 144 120  99 165   0 116 258 126 312 125 136 172  97  81  95 187 113 176 110 180 130 111
[82]   0 167 265  50 136  99 104 210 175 131 188  81 122  25   0 137  50 115 131 133 151   0   0 160 100 225 120
[109] 216  94 136 139 152   0 118 185 154  85 175 259 180  44 137  81 194  93 370   0 160 182 650  74  70  25 102
[136] 290  84  88 242 129 185 168 175 122 187 100  70  30 225 125 118 152 244 113  50 600 160 187 120 255  98 275
[163] 121 158  75 182 112 129  63 200  95 700  81 187  87 116 101 495 116 102 180  67  73 260 108 120  66  58 168
[190] 188  48 164 160  76 120 170 187 120 113  83  90 166   0 135 124 120  80  55  59 127 214 128 240 130 137 100
[217] 135 131  72 127  60 116 144 175 128 170 138 210 158 200 104  42 120 280 140 170 255 122 112  96 120 140 155
[244] 108 123 120 112 137 123  90 201 138 104 279 192 255 115  94 304 128 330 134 155 120 128 151 150 160 135  90
[271]  30 136 126 150  90 115 207  80 436 124 158 112  78  54   0  89  99 120 115 187 139 127 134 143 172 110 200
[298] 135 151 113  93 105 132  96 140   0 135 104 480 185  84 111  56 144 159 111 120  88 112 155 115 124   0 132
[325] 300 376 130 184 110  67 117  98  71 490 182  70 160 176   0  71 173  46 158  74 125 160 152 126 259 187 228
[352] 308  95 105 130 116 165  67 100 200  81 236 130  95 141 133  96 124 175 570  55 155 380 111 110 120 130 130
[379]  71 130 128 296 156 128 100 113 132   0 136 125 185 275 120 113 113 135  71  95 109 103  45  65 103  53 194
[406] 115 115  66 152 360  62 160 218 110 178  60 160 239 112 138 138  80 100 110  96 121  81 133  87  60 150 105
[433] 405 143 100   0  50   0 187 138 187 180 148 152 175 130 110  55 150 190 125  60 149  90  84  96 118 173 136
[460] 160 160 128 153 132  98 140  70 110  98 110 162 113 100  93 162 150 230 132  86   0 154 113 128 234 246 131
[487]  80 500 160  75  96 186 110 225 119 105 107 111  95 209 113 100 208 138 124 243 480  96 188  40 100 250 148
[514]  70 311 150 113 123 185  95  45  55 100 480   0 400 110 161  94 130 216 100 110 196 125 126 324 107  66 157
[541] 140  99  95 128 102 155  80 145 103 110   0   0 158 181 132  26  84 260 162 182 108 600 211 132 258 120  70
[568] 123   9 104 186 165 275 187 150 108 136 110 107 161 205  90  36  61 146 172 104  70  94 106  56 205 292 142
[595] 260 110 187  88 180 192 350 155 128 172 496   0 173 157 108  71  40 253 187 133
> View(Loanamount)
> is.na(Gender)
[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[19] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[37] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[55] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[73] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[91] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[109] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[127] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[145] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[163] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[181] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[199] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[217] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[235] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[253] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[271] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[289] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[307] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[325] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[343] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[361] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[379] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[397] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[415] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[433] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[451] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[469] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[487] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[505] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[523] FALSE FALSE FALSE FALSE FALSE FALSE FALSE
> which(is.na(Gender))
integer(0)
> view(Gender)
Error: could not find function "view"
> View(Gender)
> Gender[which(is.na(Gender))] <- 0
Warning message:
  In `[<-.factor`(`*tmp*`, which(is.na(Gender)), value = 0) :
  invalid factor level, NA generated
> names(loan_data_set)= c("Loan_ID","Gender","Married","Dependents","Education","Self_employed","ApplicantIncome","CoapplicantIncome","Loanamount","loan_amount_term","credit_history","property_area","loan_status")
> loan_data_set
Loan_ID Gender Married Dependents    Education Self_employed ApplicantIncome CoapplicantIncome Loanamount
1   LP001002   Male      No          0     Graduate            No            5849              0.00         NA
2   LP001003   Male     Yes          1     Graduate            No            4583           1508.00        128
3   LP001005   Male     Yes          0     Graduate           Yes            3000              0.00         66
4   LP001006   Male     Yes          0 Not Graduate            No            2583           2358.00        120
5   LP001008   Male      No          0     Graduate            No            6000              0.00        141
6   LP001011   Male     Yes          2     Graduate           Yes            5417           4196.00        267
7   LP001013   Male     Yes          0 Not Graduate            No            2333           1516.00         95
8   LP001014   Male     Yes         3+     Graduate            No            3036           2504.00        158
9   LP001018   Male     Yes          2     Graduate            No            4006           1526.00        168
10  LP001020   Male     Yes          1     Graduate            No           12841          10968.00        349
11  LP001024   Male     Yes          2     Graduate            No            3200            700.00         70
12  LP001027   Male     Yes          2     Graduate                          2500           1840.00        109
13  LP001028   Male     Yes          2     Graduate            No            3073           8106.00        200
14  LP001029   Male      No          0     Graduate            No            1853           2840.00        114
15  LP001030   Male     Yes          2     Graduate            No            1299           1086.00         17
16  LP001032   Male      No          0     Graduate            No            4950              0.00        125
17  LP001034   Male      No          1 Not Graduate            No            3596              0.00        100
18  LP001036 Female      No          0     Graduate            No            3510              0.00         76
19  LP001038   Male     Yes          0 Not Graduate            No            4887              0.00        133
20  LP001041   Male     Yes          0     Graduate                          2600           3500.00        115
21  LP001043   Male     Yes          0 Not Graduate            No            7660              0.00        104
22  LP001046   Male     Yes          1     Graduate            No            5955           5625.00        315
23  LP001047   Male     Yes          0 Not Graduate            No            2600           1911.00        116
24  LP001050            Yes          2 Not Graduate            No            3365           1917.00        112
25  LP001052   Male     Yes          1     Graduate                          3717           2925.00        151
26  LP001066   Male     Yes          0     Graduate           Yes            9560              0.00        191
27  LP001068   Male     Yes          0     Graduate            No            2799           2253.00        122
28  LP001073   Male     Yes          2 Not Graduate            No            4226           1040.00        110
29  LP001086   Male      No          0 Not Graduate            No            1442              0.00         35
30  LP001087 Female      No          2     Graduate                          3750           2083.00        120
31  LP001091   Male     Yes          1     Graduate                          4166           3369.00        201
32  LP001095   Male      No          0     Graduate            No            3167              0.00         74
33  LP001097   Male      No          1     Graduate           Yes            4692              0.00        106
34  LP001098   Male     Yes          0     Graduate            No            3500           1667.00        114
35  LP001100   Male      No         3+     Graduate            No           12500           3000.00        320
36  LP001106   Male     Yes          0     Graduate            No            2275           2067.00         NA
37  LP001109   Male     Yes          0     Graduate            No            1828           1330.00        100
38  LP001112 Female     Yes          0     Graduate            No            3667           1459.00        144
39  LP001114   Male      No          0     Graduate            No            4166           7210.00        184
40  LP001116   Male      No          0 Not Graduate            No            3748           1668.00        110
41  LP001119   Male      No          0     Graduate            No            3600              0.00         80
42  LP001120   Male      No          0     Graduate            No            1800           1213.00         47
43  LP001123   Male     Yes          0     Graduate            No            2400              0.00         75
44  LP001131   Male     Yes          0     Graduate            No            3941           2336.00        134
45  LP001136   Male     Yes          0 Not Graduate           Yes            4695              0.00         96
46  LP001137 Female      No          0     Graduate            No            3410              0.00         88
47  LP001138   Male     Yes          1     Graduate            No            5649              0.00         44
48  LP001144   Male     Yes          0     Graduate            No            5821              0.00        144
49  LP001146 Female     Yes          0     Graduate            No            2645           3440.00        120
50  LP001151 Female      No          0     Graduate            No            4000           2275.00        144
51  LP001155 Female     Yes          0 Not Graduate            No            1928           1644.00        100
52  LP001157 Female      No          0     Graduate            No            3086              0.00        120
53  LP001164 Female      No          0     Graduate            No            4230              0.00        112
54  LP001179   Male     Yes          2     Graduate            No            4616              0.00        134
55  LP001186 Female     Yes          1     Graduate           Yes           11500              0.00        286
56  LP001194   Male     Yes          2     Graduate            No            2708           1167.00         97
57  LP001195   Male     Yes          0     Graduate            No            2132           1591.00         96
58  LP001197   Male     Yes          0     Graduate            No            3366           2200.00        135
59  LP001198   Male     Yes          1     Graduate            No            8080           2250.00        180
60  LP001199   Male     Yes          2 Not Graduate            No            3357           2859.00        144
61  LP001205   Male     Yes          0     Graduate            No            2500           3796.00        120
62  LP001206   Male     Yes         3+     Graduate            No            3029              0.00         99
63  LP001207   Male     Yes          0 Not Graduate           Yes            2609           3449.00        165
64  LP001213   Male     Yes          1     Graduate            No            4945              0.00         NA
65  LP001222 Female      No          0     Graduate            No            4166              0.00        116
66  LP001225   Male     Yes          0     Graduate            No            5726           4595.00        258
67  LP001228   Male      No          0 Not Graduate            No            3200           2254.00        126
68  LP001233   Male     Yes          1     Graduate            No           10750              0.00        312
69  LP001238   Male     Yes         3+ Not Graduate           Yes            7100              0.00        125
70  LP001241 Female      No          0     Graduate            No            4300              0.00        136
71  LP001243   Male     Yes          0     Graduate            No            3208           3066.00        172
72  LP001245   Male     Yes          2 Not Graduate           Yes            1875           1875.00         97
73  LP001248   Male      No          0     Graduate            No            3500              0.00         81
74  LP001250   Male     Yes         3+ Not Graduate            No            4755              0.00         95
75  LP001253   Male     Yes         3+     Graduate           Yes            5266           1774.00        187
76  LP001255   Male      No          0     Graduate            No            3750              0.00        113
loan_amount_term credit_history property_area loan_status
1                360              1         Urban           Y
2                360              1         Rural           N
3                360              1         Urban           Y
4                360              1         Urban           Y
5                360              1         Urban           Y
6                360              1         Urban           Y
7                360              1         Urban           Y
8                360              0     Semiurban           N
9                360              1         Urban           Y
10               360              1     Semiurban           N
11               360              1         Urban           Y
12               360              1         Urban           Y
13               360              1         Urban           Y
14               360              1         Rural           N
15               120              1         Urban           Y
16               360              1         Urban           Y
17               240             NA         Urban           Y
18               360              0         Urban           N
19               360              1         Rural           N
20                NA              1         Urban           Y
21               360              0         Urban           N
22               360              1         Urban           Y
23               360              0     Semiurban           N
24               360              0         Rural           N
25               360             NA     Semiurban           N
26               360              1     Semiurban           Y
27               360              1     Semiurban           Y
28               360              1         Urban           Y
29               360              1         Urban           N
30               360              1     Semiurban           Y
31               360             NA         Urban           N
32               360              1         Urban           N
33               360              1         Rural           N
34               360              1     Semiurban           Y
35               360              1         Rural           N
36               360              1         Urban           Y
37                NA              0         Urban           N
38               360              1     Semiurban           Y
39               360              1         Urban           Y
40               360              1     Semiurban           Y
41               360              1         Urban           N
42               360              1         Urban           Y
43               360             NA         Urban           Y
44               360              1     Semiurban           Y
45                NA              1         Urban           Y
46                NA              1         Urban           Y
47               360              1         Urban           Y
48               360              1         Urban           Y
49               360              0         Urban           N
50               360              1     Semiurban           Y
51               360              1     Semiurban           Y
52               360              1     Semiurban           Y
53               360              1     Semiurban           N
54               360              1         Urban           N
55               360              0         Urban           N
56               360              1     Semiurban           Y
57               360              1     Semiurban           Y
58               360              1         Rural           N
59               360              1         Urban           Y
60               360              1         Urban           Y
61               360              1         Urban           Y
62               360              1         Urban           Y
63               180              0         Rural           N
64               360              0         Rural           N
65               360              0     Semiurban           N
66               360              1     Semiurban           N
67               180              0         Urban           N
68               360              1         Urban           Y
69                60              1         Urban           Y
70               360              0     Semiurban           N
71               360              1         Urban           Y
72               360              1     Semiurban           Y
73               300              1     Semiurban           Y
74                NA              0     Semiurban           N
75               360              1     Semiurban           Y
76               480              1         Urban           N
[ reached getOption("max.print") -- omitted 538 rows ]
> str(loan_data_set)
'data.frame':	614 obs. of  13 variables:
  $ Loan_ID          : Factor w/ 614 levels "LP001002","LP001003",..: 1 2 3 4 5 6 7 8 9 10 ...
$ Gender           : Factor w/ 3 levels "","Female","Male": 3 3 3 3 3 3 3 3 3 3 ...
$ Married          : Factor w/ 3 levels "","No","Yes": 2 3 3 3 2 3 3 3 3 3 ...
$ Dependents       : Factor w/ 5 levels "","0","1","2",..: 2 3 2 2 2 4 2 5 4 3 ...
$ Education        : Factor w/ 2 levels "Graduate","Not Graduate": 1 1 1 2 1 1 2 1 1 1 ...
$ Self_employed    : Factor w/ 3 levels "","No","Yes": 2 2 3 2 2 3 2 2 2 2 ...
$ ApplicantIncome  : int  5849 4583 3000 2583 6000 5417 2333 3036 4006 12841 ...
$ CoapplicantIncome: num  0 1508 0 2358 0 ...
$ Loanamount       : int  NA 128 66 120 141 267 95 158 168 349 ...
$ loan_amount_term : int  360 360 360 360 360 360 360 360 360 360 ...
$ credit_history   : int  1 1 1 1 1 1 1 0 1 1 ...
$ property_area    : Factor w/ 3 levels "Rural","Semiurban",..: 3 1 3 3 3 3 3 2 3 2 ...
$ loan_status      : Factor w/ 2 levels "N","Y": 2 1 2 2 2 2 2 1 2 1 ...
> output=lm(applicantincome~Loan_ID+Gender+Married+Dependents+Education+Self_employed+CoapplicantIncome+Loanamount+loan_amount_term+credit_history+property_area+loan_status , data = loan_data_set)
Error in eval(expr, envir, enclos) : object 'applicantincome' not found
> applicantincome <- loan_data_set$ApplicantIncome
> output=lm(applicantincome~Loan_ID+Gender+Married+Dependents+Education+Self_employed+CoapplicantIncome+Loanamount+loan_amount_term+credit_history+property_area+loan_status , data = loan_data_set)
> View(output)
> save.image("~/Desktop/Hustle/Loan_dataset.RData")
> summary(output)

Call:
  lm(formula = applicantincome ~ Loan_ID + Gender + Married + Dependents + 
       Education + Self_employed + CoapplicantIncome + Loanamount + 
       loan_amount_term + credit_history + property_area + loan_status, 
     data = loan_data_set)

Residuals:
  ALL 529 residuals are 0: no residual degrees of freedom!
  
  Coefficients: (18 not defined because of singularities)
Estimate Std. Error t value Pr(>|t|)
(Intercept)             4.583e+03         NA      NA       NA
Loan_IDLP001005        -1.583e+03         NA      NA       NA
Loan_IDLP001006        -2.000e+03         NA      NA       NA
Loan_IDLP001008         1.417e+03         NA      NA       NA
Loan_IDLP001011         8.340e+02         NA      NA       NA
Loan_IDLP001013        -2.250e+03         NA      NA       NA
Loan_IDLP001014        -1.547e+03         NA      NA       NA
Loan_IDLP001018        -5.770e+02         NA      NA       NA
Loan_IDLP001020         8.258e+03         NA      NA       NA
Loan_IDLP001024        -1.383e+03         NA      NA       NA
Loan_IDLP001027        -2.083e+03         NA      NA       NA
Loan_IDLP001028        -1.510e+03         NA      NA       NA
Loan_IDLP001029        -2.730e+03         NA      NA       NA
Loan_IDLP001030        -3.284e+03         NA      NA       NA
Loan_IDLP001032         3.670e+02         NA      NA       NA
Loan_IDLP001036        -1.073e+03         NA      NA       NA
Loan_IDLP001038         3.040e+02         NA      NA       NA
Loan_IDLP001043         3.077e+03         NA      NA       NA
Loan_IDLP001046         1.372e+03         NA      NA       NA
Loan_IDLP001047        -1.983e+03         NA      NA       NA
Loan_IDLP001050        -1.218e+03         NA      NA       NA
Loan_IDLP001066         4.977e+03         NA      NA       NA
Loan_IDLP001068        -1.784e+03         NA      NA       NA
Loan_IDLP001073        -3.570e+02         NA      NA       NA
Loan_IDLP001086        -3.141e+03         NA      NA       NA
Loan_IDLP001087        -8.330e+02         NA      NA       NA
Loan_IDLP001095        -1.416e+03         NA      NA       NA
Loan_IDLP001097         1.090e+02         NA      NA       NA
Loan_IDLP001098        -1.083e+03         NA      NA       NA
Loan_IDLP001100         7.917e+03         NA      NA       NA
Loan_IDLP001112        -9.160e+02         NA      NA       NA
Loan_IDLP001114        -4.170e+02         NA      NA       NA
Loan_IDLP001116        -8.350e+02         NA      NA       NA
Loan_IDLP001119        -9.830e+02         NA      NA       NA
Loan_IDLP001120        -2.783e+03         NA      NA       NA
Loan_IDLP001131        -6.420e+02         NA      NA       NA
Loan_IDLP001138         1.066e+03         NA      NA       NA
Loan_IDLP001144         1.238e+03         NA      NA       NA
Loan_IDLP001146        -1.938e+03         NA      NA       NA
Loan_IDLP001151        -5.830e+02         NA      NA       NA
Loan_IDLP001155        -2.655e+03         NA      NA       NA
Loan_IDLP001157        -1.497e+03         NA      NA       NA
Loan_IDLP001164        -3.530e+02         NA      NA       NA
Loan_IDLP001179         3.300e+01         NA      NA       NA
Loan_IDLP001186         6.917e+03         NA      NA       NA
Loan_IDLP001194        -1.875e+03         NA      NA       NA
Loan_IDLP001195        -2.451e+03         NA      NA       NA
Loan_IDLP001197        -1.217e+03         NA      NA       NA
Loan_IDLP001198         3.497e+03         NA      NA       NA
Loan_IDLP001199        -1.226e+03         NA      NA       NA
Loan_IDLP001205        -2.083e+03         NA      NA       NA
Loan_IDLP001206        -1.554e+03         NA      NA       NA
Loan_IDLP001207        -1.974e+03         NA      NA       NA
Loan_IDLP001222        -4.170e+02         NA      NA       NA
Loan_IDLP001225         1.143e+03         NA      NA       NA
Loan_IDLP001228        -1.383e+03         NA      NA       NA
Loan_IDLP001233         6.167e+03         NA      NA       NA
Loan_IDLP001238         2.517e+03         NA      NA       NA
Loan_IDLP001241        -2.830e+02         NA      NA       NA
Loan_IDLP001243        -1.375e+03         NA      NA       NA
Loan_IDLP001245        -2.708e+03         NA      NA       NA
Loan_IDLP001248        -1.083e+03         NA      NA       NA
Loan_IDLP001253         6.830e+02         NA      NA       NA
Loan_IDLP001255        -8.330e+02         NA      NA       NA
Loan_IDLP001256        -8.330e+02         NA      NA       NA
Loan_IDLP001259        -3.583e+03         NA      NA       NA
Loan_IDLP001263        -1.416e+03         NA      NA       NA
Loan_IDLP001265        -7.370e+02         NA      NA       NA
Loan_IDLP001267        -3.205e+03         NA      NA       NA
Loan_IDLP001275        -5.950e+02         NA      NA       NA
Loan_IDLP001279        -2.217e+03         NA      NA       NA
Loan_IDLP001282        -2.083e+03         NA      NA       NA
Loan_IDLP001289         3.983e+03         NA      NA       NA
Loan_IDLP001310         1.112e+03         NA      NA       NA
Loan_IDLP001316        -1.625e+03         NA      NA       NA
Loan_IDLP001318         1.667e+03         NA      NA       NA
Loan_IDLP001319        -1.310e+03         NA      NA       NA
Loan_IDLP001322        -4.500e+02         NA      NA       NA
Loan_IDLP001325        -9.630e+02         NA      NA       NA
Loan_IDLP001327        -2.099e+03         NA      NA       NA
Loan_IDLP001333        -2.606e+03         NA      NA       NA
Loan_IDLP001334        -3.950e+02         NA      NA       NA
Loan_IDLP001343        -2.824e+03         NA      NA       NA
Loan_IDLP001345        -2.950e+02         NA      NA       NA
Loan_IDLP001349         2.600e+02         NA      NA       NA
Loan_IDLP001357        -7.670e+02         NA      NA       NA
Loan_IDLP001367        -1.531e+03         NA      NA       NA
Loan_IDLP001369         6.834e+03         NA      NA       NA
Loan_IDLP001370         2.750e+03         NA      NA       NA
Loan_IDLP001379        -7.830e+02         NA      NA       NA
Loan_IDLP001384        -2.512e+03         NA      NA       NA
Loan_IDLP001385         7.330e+02         NA      NA       NA
Loan_IDLP001387        -1.654e+03         NA      NA       NA
Loan_IDLP001398         4.670e+02         NA      NA       NA
Loan_IDLP001401         1.000e+04         NA      NA       NA
Loan_IDLP001404        -1.416e+03         NA      NA       NA
Loan_IDLP001421         9.850e+02         NA      NA       NA
Loan_IDLP001422         5.825e+03         NA      NA       NA
Loan_IDLP001426         1.084e+03         NA      NA       NA
Loan_IDLP001430        -4.170e+02         NA      NA       NA
Loan_IDLP001431        -2.446e+03         NA      NA       NA
Loan_IDLP001432        -1.626e+03         NA      NA       NA
Loan_IDLP001439        -2.830e+02         NA      NA       NA
Loan_IDLP001448         1.922e+04         NA      NA       NA
Loan_IDLP001451         5.930e+03         NA      NA       NA
Loan_IDLP001473        -2.569e+03         NA      NA       NA
Loan_IDLP001478        -1.865e+03         NA      NA       NA
Loan_IDLP001482        -1.124e+03         NA      NA       NA
Loan_IDLP001487         3.120e+02         NA      NA       NA
Loan_IDLP001488        -5.830e+02         NA      NA       NA
Loan_IDLP001489         1.708e-11         NA      NA       NA
Loan_IDLP001491        -1.267e+03         NA      NA       NA
Loan_IDLP001492         1.042e+04         NA      NA       NA
Loan_IDLP001493        -3.830e+02         NA      NA       NA
Loan_IDLP001497         4.590e+02         NA      NA       NA
Loan_IDLP001498         8.340e+02         NA      NA       NA
Loan_IDLP001504         2.367e+03         NA      NA       NA
Loan_IDLP001507        -1.885e+03         NA      NA       NA
Loan_IDLP001508         7.174e+03         NA      NA       NA
Loan_IDLP001514        -2.253e+03         NA      NA       NA
Loan_IDLP001516         1.028e+04         NA      NA       NA
Loan_IDLP001518        -3.045e+03         NA      NA       NA
Loan_IDLP001519         5.417e+03         NA      NA       NA
Loan_IDLP001520         2.770e+02         NA      NA       NA
Loan_IDLP001528         1.694e+03         NA      NA       NA
Loan_IDLP001529        -2.006e+03         NA      NA       NA
Loan_IDLP001531         4.583e+03         NA      NA       NA
Loan_IDLP001532        -2.302e+03         NA      NA       NA
Loan_IDLP001535        -1.329e+03         NA      NA       NA
Loan_IDLP001536         3.542e+04         NA      NA       NA
Loan_IDLP001543         4.955e+03         NA      NA       NA
Loan_IDLP001546        -1.603e+03         NA      NA       NA
Loan_IDLP001552         2.803e-11         NA      NA       NA
Loan_IDLP001560        -2.720e+03         NA      NA       NA
Loan_IDLP001562         3.350e+03         NA      NA       NA
Loan_IDLP001565        -1.494e+03         NA      NA       NA
Loan_IDLP001570        -4.160e+02         NA      NA       NA
Loan_IDLP001572         4.740e+03         NA      NA       NA
Loan_IDLP001577        -2.272e-11         NA      NA       NA
Loan_IDLP001578        -2.144e+03         NA      NA       NA
Loan_IDLP001579        -2.346e+03         NA      NA       NA
Loan_IDLP001580         3.417e+03         NA      NA       NA
Loan_IDLP001581        -2.763e+03         NA      NA       NA
Loan_IDLP001585         4.718e+04         NA      NA       NA
Loan_IDLP001586        -1.061e+03         NA      NA       NA
Loan_IDLP001594         1.125e+03         NA      NA       NA
Loan_IDLP001603        -2.390e+02         NA      NA       NA
Loan_IDLP001606        -1.086e+03         NA      NA       NA
Loan_IDLP001608        -2.538e+03         NA      NA       NA
Loan_IDLP001610         9.330e+02         NA      NA       NA
Loan_IDLP001616        -8.330e+02         NA      NA       NA
Loan_IDLP001630        -2.250e+03         NA      NA       NA
Loan_IDLP001633         1.817e+03         NA      NA       NA
Loan_IDLP001636         1.700e+01         NA      NA       NA
Loan_IDLP001637         2.926e+04         NA      NA       NA
Loan_IDLP001639        -9.580e+02         NA      NA       NA
Loan_IDLP001640         3.456e+04         NA      NA       NA
Loan_IDLP001641        -2.405e+03         NA      NA       NA
Loan_IDLP001644        -3.909e+03         NA      NA       NA
Loan_IDLP001647         4.745e+03         NA      NA       NA
Loan_IDLP001653         3.020e+02         NA      NA       NA
Loan_IDLP001656         7.417e+03         NA      NA       NA
Loan_IDLP001657         1.450e+03         NA      NA       NA
Loan_IDLP001658        -7.250e+02         NA      NA       NA
Loan_IDLP001664        -3.920e+02         NA      NA       NA
Loan_IDLP001665        -1.458e+03         NA      NA       NA
Loan_IDLP001666         3.750e+03         NA      NA       NA
Loan_IDLP001673         6.417e+03         NA      NA       NA
Loan_IDLP001674        -1.983e+03         NA      NA       NA
Loan_IDLP001677         3.400e+02         NA      NA       NA
Loan_IDLP001688        -1.083e+03         NA      NA       NA
Loan_IDLP001691        -6.660e+02         NA      NA       NA
Loan_IDLP001692        -1.750e+02         NA      NA       NA
Loan_IDLP001693        -1.339e+03         NA      NA       NA
Loan_IDLP001698        -6.080e+02         NA      NA       NA
Loan_IDLP001699        -2.104e+03         NA      NA       NA
Loan_IDLP001702        -1.165e+03         NA      NA       NA
Loan_IDLP001708         5.417e+03         NA      NA       NA
Loan_IDLP001711        -1.153e+03         NA      NA       NA
Loan_IDLP001713         3.204e+03         NA      NA       NA
Loan_IDLP001715         1.120e+03         NA      NA       NA
Loan_IDLP001716        -1.410e+03         NA      NA       NA
Loan_IDLP001720        -7.330e+02         NA      NA       NA
Loan_IDLP001722        -4.433e+03         NA      NA       NA
Loan_IDLP001726        -8.560e+02         NA      NA       NA
Loan_IDLP001732         4.170e+02         NA      NA       NA
Loan_IDLP001736        -2.362e+03         NA      NA       NA
Loan_IDLP001743        -5.740e+02         NA      NA       NA
Loan_IDLP001744        -1.612e+03         NA      NA       NA
Loan_IDLP001750         1.667e+03         NA      NA       NA
Loan_IDLP001751        -1.333e+03         NA      NA       NA
Loan_IDLP001754         1.520e+02         NA      NA       NA
Loan_IDLP001758         1.667e+03         NA      NA       NA
Loan_IDLP001760         1.750e+02         NA      NA       NA
Loan_IDLP001761         1.817e+03         NA      NA       NA
Loan_IDLP001765        -2.092e+03         NA      NA       NA
Loan_IDLP001768        -8.670e+02         NA      NA       NA
Loan_IDLP001776         3.750e+03         NA      NA       NA
Loan_IDLP001778        -1.428e+03         NA      NA       NA
Loan_IDLP001784         9.170e+02         NA      NA       NA
Loan_IDLP001790        -7.710e+02         NA      NA       NA
Loan_IDLP001792        -1.268e+03         NA      NA       NA
Loan_IDLP001798         1.236e+03         NA      NA       NA
Loan_IDLP001800        -2.073e+03         NA      NA       NA
Loan_IDLP001806        -1.618e+03         NA      NA       NA
Loan_IDLP001807         1.667e+03         NA      NA       NA
Loan_IDLP001811        -1.177e+03         NA      NA       NA
Loan_IDLP001813         1.467e+03         NA      NA       NA
Loan_IDLP001814         5.120e+03         NA      NA       NA
Loan_IDLP001819         2.025e+03         NA      NA       NA
Loan_IDLP001824        -1.701e+03         NA      NA       NA
Loan_IDLP001825        -2.774e+03         NA      NA       NA
Loan_IDLP001835        -2.915e+03         NA      NA       NA
Loan_IDLP001836        -1.156e+03         NA      NA       NA
Loan_IDLP001841        -2.000e+03         NA      NA       NA
Loan_IDLP001843        -1.922e+03         NA      NA       NA
Loan_IDLP001844         1.167e+04         NA      NA       NA
Loan_IDLP001846        -1.500e+03         NA      NA       NA
Loan_IDLP001849         1.462e+03         NA      NA       NA
Loan_IDLP001854         6.670e+02         NA      NA       NA
Loan_IDLP001859         1.010e+04         NA      NA       NA
Loan_IDLP001868        -2.523e+03         NA      NA       NA
Loan_IDLP001870        -1.102e+03         NA      NA       NA
Loan_IDLP001871         2.617e+03         NA      NA       NA
Loan_IDLP001872         5.830e+02         NA      NA       NA
Loan_IDLP001875        -4.880e+02         NA      NA       NA
Loan_IDLP001877         1.250e+02         NA      NA       NA
Loan_IDLP001882        -2.500e+02         NA      NA       NA
Loan_IDLP001883        -1.165e+03         NA      NA       NA
Loan_IDLP001884        -1.707e+03         NA      NA       NA
Loan_IDLP001888        -1.346e+03         NA      NA       NA
Loan_IDLP001891         6.563e+03         NA      NA       NA
Loan_IDLP001892        -1.750e+03         NA      NA       NA
Loan_IDLP001894        -1.963e+03         NA      NA       NA
Loan_IDLP001896        -6.830e+02         NA      NA       NA
Loan_IDLP001900        -1.833e+03         NA      NA       NA
Loan_IDLP001903        -5.900e+02         NA      NA       NA
Loan_IDLP001904        -1.480e+03         NA      NA       NA
Loan_IDLP001907         1.000e+04         NA      NA       NA
Loan_IDLP001910        -5.300e+02         NA      NA       NA
Loan_IDLP001914        -6.560e+02         NA      NA       NA
Loan_IDLP001915        -2.282e+03         NA      NA       NA
Loan_IDLP001917        -2.772e+03         NA      NA       NA
Loan_IDLP001924        -1.425e+03         NA      NA       NA
Loan_IDLP001925        -1.983e+03         NA      NA       NA
Loan_IDLP001926        -8.790e+02         NA      NA       NA
Loan_IDLP001931        -4.590e+02         NA      NA       NA
Loan_IDLP001935         4.925e+03         NA      NA       NA
Loan_IDLP001936        -1.508e+03         NA      NA       NA
Loan_IDLP001938        -1.830e+02         NA      NA       NA
[ reached getOption("max.print") -- omitted 297 rows ]

Residual standard error: NaN on 0 degrees of freedom
(85 observations deleted due to missingness)
Multiple R-squared:      1,	Adjusted R-squared:    NaN 
F-statistic:   NaN on 528 and 0 DF,  p-value: NA

> View(loan_data_se)
Error in View : object 'loan_data_se' not found
> View(loan_data_set)
> is.na(loan_data_set)
Loan_ID Gender Married Dependents Education Self_employed ApplicantIncome CoapplicantIncome Loanamount
[1,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE       TRUE
[2,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[3,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[4,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[5,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[6,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[7,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[8,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[9,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[10,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[11,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[12,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[13,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[14,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[15,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[16,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[17,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[18,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[19,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[20,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[21,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[22,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[23,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[24,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[25,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[26,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[27,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[28,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[29,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[30,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[31,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[32,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[33,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[34,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[35,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[36,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE       TRUE
[37,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[38,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[39,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[40,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[41,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[42,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[43,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[44,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[45,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[46,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[47,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[48,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[49,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[50,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[51,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[52,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[53,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[54,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[55,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[56,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[57,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[58,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[59,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[60,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[61,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[62,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[63,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[64,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE       TRUE
[65,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[66,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[67,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[68,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[69,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[70,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[71,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[72,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[73,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[74,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[75,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
[76,]   FALSE  FALSE   FALSE      FALSE     FALSE         FALSE           FALSE             FALSE      FALSE
loan_amount_term credit_history property_area loan_status
[1,]            FALSE          FALSE         FALSE       FALSE
[2,]            FALSE          FALSE         FALSE       FALSE
[3,]            FALSE          FALSE         FALSE       FALSE
[4,]            FALSE          FALSE         FALSE       FALSE
[5,]            FALSE          FALSE         FALSE       FALSE
[6,]            FALSE          FALSE         FALSE       FALSE
[7,]            FALSE          FALSE         FALSE       FALSE
[8,]            FALSE          FALSE         FALSE       FALSE
[9,]            FALSE          FALSE         FALSE       FALSE
[10,]            FALSE          FALSE         FALSE       FALSE
[11,]            FALSE          FALSE         FALSE       FALSE
[12,]            FALSE          FALSE         FALSE       FALSE
[13,]            FALSE          FALSE         FALSE       FALSE
[14,]            FALSE          FALSE         FALSE       FALSE
[15,]            FALSE          FALSE         FALSE       FALSE
[16,]            FALSE          FALSE         FALSE       FALSE
[17,]            FALSE           TRUE         FALSE       FALSE
[18,]            FALSE          FALSE         FALSE       FALSE
[19,]            FALSE          FALSE         FALSE       FALSE
[20,]             TRUE          FALSE         FALSE       FALSE
[21,]            FALSE          FALSE         FALSE       FALSE
[22,]            FALSE          FALSE         FALSE       FALSE
[23,]            FALSE          FALSE         FALSE       FALSE
[24,]            FALSE          FALSE         FALSE       FALSE
[25,]            FALSE           TRUE         FALSE       FALSE
[26,]            FALSE          FALSE         FALSE       FALSE
[27,]            FALSE          FALSE         FALSE       FALSE
[28,]            FALSE          FALSE         FALSE       FALSE
[29,]            FALSE          FALSE         FALSE       FALSE
[30,]            FALSE          FALSE         FALSE       FALSE
[31,]            FALSE           TRUE         FALSE       FALSE
[32,]            FALSE          FALSE         FALSE       FALSE
[33,]            FALSE          FALSE         FALSE       FALSE
[34,]            FALSE          FALSE         FALSE       FALSE
[35,]            FALSE          FALSE         FALSE       FALSE
[36,]            FALSE          FALSE         FALSE       FALSE
[37,]             TRUE          FALSE         FALSE       FALSE
[38,]            FALSE          FALSE         FALSE       FALSE
[39,]            FALSE          FALSE         FALSE       FALSE
[40,]            FALSE          FALSE         FALSE       FALSE
[41,]            FALSE          FALSE         FALSE       FALSE
[42,]            FALSE          FALSE         FALSE       FALSE
[43,]            FALSE           TRUE         FALSE       FALSE
[44,]            FALSE          FALSE         FALSE       FALSE
[45,]             TRUE          FALSE         FALSE       FALSE
[46,]             TRUE          FALSE         FALSE       FALSE
[47,]            FALSE          FALSE         FALSE       FALSE
[48,]            FALSE          FALSE         FALSE       FALSE
[49,]            FALSE          FALSE         FALSE       FALSE
[50,]            FALSE          FALSE         FALSE       FALSE
[51,]            FALSE          FALSE         FALSE       FALSE
[52,]            FALSE          FALSE         FALSE       FALSE
[53,]            FALSE          FALSE         FALSE       FALSE
[54,]            FALSE          FALSE         FALSE       FALSE
[55,]            FALSE          FALSE         FALSE       FALSE
[56,]            FALSE          FALSE         FALSE       FALSE
[57,]            FALSE          FALSE         FALSE       FALSE
[58,]            FALSE          FALSE         FALSE       FALSE
[59,]            FALSE          FALSE         FALSE       FALSE
[60,]            FALSE          FALSE         FALSE       FALSE
[61,]            FALSE          FALSE         FALSE       FALSE
[62,]            FALSE          FALSE         FALSE       FALSE
[63,]            FALSE          FALSE         FALSE       FALSE
[64,]            FALSE          FALSE         FALSE       FALSE
[65,]            FALSE          FALSE         FALSE       FALSE
[66,]            FALSE          FALSE         FALSE       FALSE
[67,]            FALSE          FALSE         FALSE       FALSE
[68,]            FALSE          FALSE         FALSE       FALSE
[69,]            FALSE          FALSE         FALSE       FALSE
[70,]            FALSE          FALSE         FALSE       FALSE
[71,]            FALSE          FALSE         FALSE       FALSE
[72,]            FALSE          FALSE         FALSE       FALSE
[73,]            FALSE          FALSE         FALSE       FALSE
[74,]             TRUE          FALSE         FALSE       FALSE
[75,]            FALSE          FALSE         FALSE       FALSE
[76,]            FALSE          FALSE         FALSE       FALSE
[ reached getOption("max.print") -- omitted 538 rows ]
> sum(is.na(loan_data_set))
[1] 86
> mean(is.na(loan_data_set))
[1] 0.01077424
> colSums(is.na(loan_data_set))
Loan_ID            Gender           Married        Dependents         Education     Self_employed 
0                 0                 0                 0                 0                 0 
ApplicantIncome CoapplicantIncome        Loanamount  loan_amount_term    credit_history     property_area 
0                 0                22                14                50                 0 
loan_status 
0 
> loan_data_set.clean<-na.omit(loan_data_set)
> Loanamountterm <- loan_data_set.clean$loan_amount_term
> is.na(Loanamountterm)
[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[19] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[37] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[55] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[73] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[91] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[109] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[127] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[145] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[163] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[181] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[199] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[217] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[235] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[253] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[271] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[289] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[307] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[325] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[343] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[361] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[379] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[397] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[415] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[433] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[451] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[469] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[487] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[505] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[523] FALSE FALSE FALSE FALSE FALSE FALSE FALSE
> which(is.na(Loanamountterm))
integer(0)
> Loanamountterm[which(is.na(Loanamountterm))] <- 0
> Loanamountterm[which(is.na(Loanamountterm))] <- mean(Loanamountterm,na.rm = TRUE)
> View(Loanamountterm)
> Credithistory <- loan_data_set.clean$credit_history
> is.na(Credithistory)
[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[19] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[37] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[55] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[73] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[91] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[109] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[127] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[145] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[163] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[181] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[199] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[217] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[235] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[253] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[271] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[289] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[307] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[325] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[343] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[361] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[379] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[397] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[415] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[433] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[451] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[469] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[487] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[505] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[523] FALSE FALSE FALSE FALSE FALSE FALSE FALSE
> which(is.na(Credithistory))
integer(0)
> Credithistory[which(is.na(Credithistory))] <- 0
> Credithistory[which(is.na(Credithistory))] <- mean(Credithistory,na.rm = TRUE)
> view Credithistory
Error: unexpected symbol in "view Credithistory"
> View(Credithistory)
> colSums(is.na(loan_data_set.clean))
Loan_ID            Gender           Married        Dependents         Education     Self_employed 
0                 0                 0                 0                 0                 0 
ApplicantIncome CoapplicantIncome        Loanamount  loan_amount_term    credit_history     property_area 
0                 0                 0                 0                 0                 0 
loan_status 
0 
> View(loan_data_set.clean)
> dependents <- loan_data_set.clean$Dependents
> is.na(dependents)
[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[19] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[37] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[55] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[73] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[91] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[109] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[127] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[145] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[163] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[181] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[199] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[217] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[235] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[253] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[271] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[289] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[307] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[325] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[343] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[361] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[379] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[397] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[415] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[433] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[451] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[469] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[487] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[505] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[523] FALSE FALSE FALSE FALSE FALSE FALSE FALSE
> which(is.na(dependents))
integer(0)
> dependents[which(is.na(dependents))] <- 0
>  dependents[which(is.na(dependents))] <- mean(dependents,na.rm = TRUE)
Warning message:
  In mean.default(dependents, na.rm = TRUE) :
  argument is not numeric or logical: returning NA
> dependents[which(is.na(dependents))] <- 0
> dependents[which(is.na(dependents))] <- mean(dependents,na.rm = TRUE)
Warning message:
  In mean.default(dependents, na.rm = TRUE) :
  argument is not numeric or logical: returning NA
> dependents[which(is.na(dependents))] <- mean(dependents,na.rm = FALSE)
Warning message:
  In mean.default(dependents, na.rm = FALSE) :
  argument is not numeric or logical: returning NA


/* ENCODING WINDOWS-1252 */



libname library 'p:\research\emr\austsurveys\national components is\timss & pirls\1. ti15 cycle admin\8. data management\2. main study\timss 2015_final data files\year 8\sas\' ;

proc format library = library ;
   value IDCNTRY
      999999 = 'Omitted or invalid' ;
   value IDSCHOOL
      9999 = 'Omitted or invalid' ;
   value ITCOURSE
      1 = 'Mathematics'  
      2 = 'Physics'  
      3 = 'Biology'  
      4 = 'Chemistry'  
      5 = 'Earth science'  
      6 = 'Integrated science'  
      7 = 'Mathematics and Science'  
      8 = 'Physics/Chemistry'  
      9 = 'Biology/Earth science'  
      10 = 'Biology/Chemistry'  
      11 = 'Physics/Biology'  
      12 = 'Physics/Earth science'  
      13 = 'Chemistry/Earth science'  
      14 = 'Natural science'  
      15 = 'Science work'  
      16 = '<>'  
      17 = '<>'  
      99 = 'Omitted or invalid' ;
   value IDTEALIN
      99999999 = 'Omitted or invalid' ;
   value IDTEACH
      999999 = 'Omitted or invalid' ;
   value IDLINK
      99 = 'Omitted or invalid' ;
   value BTBG01F
      99 = 'Omitted or invalid' ;
   value BTBG02F
      1 = 'Female'  
      2 = 'Male'  
      9 = 'Omitted or invalid' ;
   value BTBG03F
      1 = 'Under 25'  
      2 = '25–29'  
      3 = '30–39'  
      4 = '40–49'  
      5 = '50–59'  
      6 = '60 or more'  
      9 = 'Omitted or invalid' ;
   value BTBG04F
      1 = 'Did not complete Upper secondary'  
      2 = 'Upper secondary'  
      3 = 'Post-secondary, non-tertiary'  
      4 = 'Short-cycle tertiary'  
      5 = 'Bachelor’s or equivalent'  
      6 = 'Master’s or equivalent'  
      7 = 'Doctor or equivalent'  
      99 = 'Omitted or invalid' ;
   value BTBG05A
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBG05B
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBG05C
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBG05D
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBG05E
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBG05F
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBG05G
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBG05H
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBG05I
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBG06A
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06B
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06C
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06D
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06E
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06F
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06G
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06H
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06I
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06J
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06K
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06L
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06M
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06N
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06O
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06P
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG06Q
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BTBG07A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG07B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG07C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG07D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG07E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG07F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG07G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG07H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG08A
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BTBG08B
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BTBG08C
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BTBG08D
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BTBG08E
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BTBG08F
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BTBG08G
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BTBG09A
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG09B
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG09C
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG09D
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG09E
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG09F
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG09G
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG10A
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG10B
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG10C
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG10D
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG10E
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG10F
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG10G
      1 = 'Very often'  
      2 = 'Often'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BTBG11A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG11B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG11C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG11D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG11E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG11F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG11G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG11H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BTBG12F
      99 = 'Omitted or invalid' ;
   value BTBG13F
      99 = 'Omitted or invalid' ;
   value BTBG14A
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBG14B
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBG14C
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBG14D
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBG14E
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBG14F
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBG14G
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBG15A
      1 = 'Not at all'  
      2 = 'Some'  
      3 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BTBG15B
      1 = 'Not at all'  
      2 = 'Some'  
      3 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BTBG15C
      1 = 'Not at all'  
      2 = 'Some'  
      3 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BTBG15D
      1 = 'Not at all'  
      2 = 'Some'  
      3 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BTBG15E
      1 = 'Not at all'  
      2 = 'Some'  
      3 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BTBG15F
      1 = 'Not at all'  
      2 = 'Some'  
      3 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BTBG15G
      1 = 'Not at all'  
      2 = 'Some'  
      3 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BTBS16F
      9999 = 'Omitted or invalid' ;
   value BTBS17A
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      9 = 'Omitted or invalid' ;
   value BTBS17B
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      9 = 'Omitted or invalid' ;
   value BTBS17C
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      9 = 'Omitted or invalid' ;
   value BTBS17D
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      9 = 'Omitted or invalid' ;
   value BTBS17E
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      9 = 'Omitted or invalid' ;
   value BTBS17F
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      9 = 'Omitted or invalid' ;
   value BTBS17G
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      9 = 'Omitted or invalid' ;
   value BTBS17H
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      9 = 'Omitted or invalid' ;
   value BTBS17I
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      9 = 'Omitted or invalid' ;
   value BTBS17J
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      9 = 'Omitted or invalid' ;
   value BTBS18A
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18B
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18C
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18D
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18E
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18F
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18G
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18H
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18I
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18J
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18K
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18L
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18M
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18N
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS18O
      1 = 'Every or almost every lesson'  
      2 = 'About half the lessons'  
      3 = 'Some lessons'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BTBS19A
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BTBS19BA
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS19BB
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS19BC
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS19CA
      1 = 'Every or almost every day'  
      2 = 'Once or twice a week'  
      3 = 'Once or twice a month'  
      4 = 'Never or almost never'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS19CB
      1 = 'Every or almost every day'  
      2 = 'Once or twice a week'  
      3 = 'Once or twice a month'  
      4 = 'Never or almost never'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS19CC
      1 = 'Every or almost every day'  
      2 = 'Once or twice a week'  
      3 = 'Once or twice a month'  
      4 = 'Never or almost never'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS19CD
      1 = 'Every or almost every day'  
      2 = 'Once or twice a week'  
      3 = 'Once or twice a month'  
      4 = 'Never or almost never'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS19CE
      1 = 'Every or almost every day'  
      2 = 'Once or twice a week'  
      3 = 'Once or twice a month'  
      4 = 'Never or almost never'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS20AA
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20AB
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20AC
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20AD
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20AE
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20AF
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20AG
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20BA
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20BB
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20BC
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20BD
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20BE
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20BF
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20CA
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20CB
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20CC
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20CD
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20CE
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20DA
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20DB
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20DC
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS20DD
      1 = 'Mostly taught before this year'  
      2 = 'Mostly taught this year'  
      3 = 'Not yet taught or just introduced'  
      9 = 'Omitted or invalid' ;
   value BTBS21A
      1 = 'No science homework'  
      2 = 'Less than once a week'  
      3 = '1 or 2 times a week'  
      4 = '3 or 4 times a week'  
      5 = 'Every day'  
      9 = 'Omitted or invalid' ;
   value BTBS21B
      1 = '15 minutes or less'  
      2 = '16–30 minutes'  
      3 = '31–60 minutes'  
      4 = '61–90 minutes'  
      5 = 'More than 90 minutes'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS21CA
      1 = 'Always or almost always'  
      2 = 'Sometimes'  
      3 = 'Never or almost never'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS21CB
      1 = 'Always or almost always'  
      2 = 'Sometimes'  
      3 = 'Never or almost never'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS21CC
      1 = 'Always or almost always'  
      2 = 'Sometimes'  
      3 = 'Never or almost never'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS21CD
      1 = 'Always or almost always'  
      2 = 'Sometimes'  
      3 = 'Never or almost never'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS21CE
      1 = 'Always or almost always'  
      2 = 'Sometimes'  
      3 = 'Never or almost never'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BTBS22A
      1 = 'Major emphasis'  
      2 = 'Some emphasis'  
      3 = 'Little or no emphasis'  
      9 = 'Omitted or invalid' ;
   value BTBS22B
      1 = 'Major emphasis'  
      2 = 'Some emphasis'  
      3 = 'Little or no emphasis'  
      9 = 'Omitted or invalid' ;
   value BTBS22C
      1 = 'Major emphasis'  
      2 = 'Some emphasis'  
      3 = 'Little or no emphasis'  
      9 = 'Omitted or invalid' ;
   value BTBS23A
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BTBS23B
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BTBS23C
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BTBS23D
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BTBS23E
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BTBS23F
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BTBS23G
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BTBS24F
      1 = 'None'  
      2 = 'Less than 6 hours'  
      3 = '6–15 hours'  
      4 = '16–35 hours'  
      5 = 'More than 35 hours'  
      9 = 'Omitted or invalid' ;
   value BTBS25AA
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25AB
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25AC
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25AD
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25AE
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25AF
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25AG
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25BA
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25BB
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25BC
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25BD
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25BE
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25BF
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25CA
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25CB
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25CC
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25CD
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25CE
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25DA
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25DB
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25DC
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value BTBS25DD
      1 = 'Not applicable'  
      2 = 'Very well prepared'  
      3 = 'Somewhat prepared'  
      4 = 'Not well prepared'  
      9 = 'Omitted or invalid' ;
   value IDPOP
      1 = 'Pop 1'  
      2 = 'Pop 2'  
      3 = 'Pop 3'  
      9 = 'Omitted or invalid' ;
   value IDGRADE
      3 = 'Grade 3'  
      4 = 'Grade 4'  
      5 = 'Grade 5'  
      6 = 'Grade 6'  
      7 = 'Grade 7'  
      8 = 'Grade 8'  
      9 = 'Grade 9'  
      10 = 'Grade 10'  
      99 = 'Omitted or invalid' ;
   value IDGRADER
      1 = 'Lower Grade'  
      2 = 'Upper Grade'  
      9 = 'Omitted or invalid' ;
   value IDSUBJ
      1 = 'Mathematics'  
      2 = 'Science'  
      9 = 'Omitted or invalid' ;
   value BTBGEAS
      999999 = 'Omitted or invalid' ;
   value BTDGEAS
      1 = 'Very High Emphasis'  
      2 = 'High Emphasis'  
      3 = 'Medium Emphasis'  
      9 = 'Omitted or invalid' ;
   value BTBGSOS
      999999 = 'Omitted or invalid' ;
   value BTDGSOS
      1 = 'Very Safe and Orderly'  
      2 = 'Safe and Orderly'  
      3 = 'Less than Safe and Orderly'  
      9 = 'Omitted or invalid' ;
   value BTBGSCR
      999999 = 'Omitted or invalid' ;
   value BTDGSCR
      1 = 'Hardly Any Problems'  
      2 = 'Minor Problems'  
      3 = 'Moderate to Severe Problems'  
      9 = 'Omitted or invalid' ;
   value BTBGTJS
      999999 = 'Omitted or invalid' ;
   value BTDGTJS
      1 = 'Very Satisfied'  
      2 = 'Satisfied'  
      3 = 'Less than Satisfied'  
      9 = 'Omitted or invalid' ;
   value BTBGCFT
      999999 = 'Omitted or invalid' ;
   value BTDGCFT
      1 = 'Few Challenges'  
      2 = 'Some Challenges'  
      3 = 'Many Challenges'  
      9 = 'Omitted or invalid' ;
   value BTBGLSN
      999999 = 'Omitted or invalid' ;
   value BTDGLSN
      1 = 'Not Limited'  
      2 = 'Somewhat Limited'  
      3 = 'Very Limited'  
      9 = 'Omitted or invalid' ;
   value BTBSESI
      999999 = 'Omitted or invalid' ;
   value BTDSESI
      1 = 'About Half the Lessons or More'  
      2 = 'Less than Half the Lessons'  
      9 = 'Omitted or invalid' ;
   value BTDS05F
      1 = 'Major in Science and Science Ed'  
      2 = 'Major in Science but not in Science Ed'  
      3 = 'Major in Science Ed but not in Science'  
      4 = 'All Other Majors'  
      5 = 'No Formal Ed Beyond Upper Secondary'  
      9 = 'Omitted or invalid' ;
   value BTDS20BI
      9996 = 'Logically not applicable'  
      9999 = 'Omitted or invalid' ;
   value BTDS20CH
      9996 = 'Logically not applicable'  
      9999 = 'Omitted or invalid' ;
   value BTDS20PH
      9996 = 'Logically not applicable'  
      9999 = 'Omitted or invalid' ;
   value BTDS20ES
      9996 = 'Logically not applicable'  
      9999 = 'Omitted or invalid' ;
   value BTDBHW
      9996 = 'Logically not applicable'  
      9999 = 'Omitted or invalid' ;
   value BTDCHW
      9996 = 'Logically not applicable'  
      9999 = 'Omitted or invalid' ;
   value BTDPHW
      9996 = 'Logically not applicable'  
      9999 = 'Omitted or invalid' ;
   value BTDEHW
      9996 = 'Logically not applicable'  
      9999 = 'Omitted or invalid' ;
   value VERSION
      99 = 'Omitted or invalid' ;
   value BTNG04F
      1 = 'A TAFE college diploma'  
      2 = 'An undergraduate or bachelor''s degree'  
      3 = 'A graduate or postgraduate diploma'  
      4 = 'A master''s degree'  
      5 = 'A PhD or doctorate'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;

proc datasets library = library ;
modify BTSAUSM6;
   format   IDCNTRY IDCNTRY.;
   format  IDSCHOOL IDSCHOOL.;
   format  ITCOURSE ITCOURSE.;
   format  IDTEALIN IDTEALIN.;
   format   IDTEACH IDTEACH.;
   format    IDLINK IDLINK.;
   format    BTBG01 BTBG01F.;
   format    BTBG02 BTBG02F.;
   format    BTBG03 BTBG03F.;
   format    BTBG04 BTBG04F.;
   format   BTBG05A BTBG05A.;
   format   BTBG05B BTBG05B.;
   format   BTBG05C BTBG05C.;
   format   BTBG05D BTBG05D.;
   format   BTBG05E BTBG05E.;
   format   BTBG05F BTBG05F.;
   format   BTBG05G BTBG05G.;
   format   BTBG05H BTBG05H.;
   format   BTBG05I BTBG05I.;
   format   BTBG06A BTBG06A.;
   format   BTBG06B BTBG06B.;
   format   BTBG06C BTBG06C.;
   format   BTBG06D BTBG06D.;
   format   BTBG06E BTBG06E.;
   format   BTBG06F BTBG06F.;
   format   BTBG06G BTBG06G.;
   format   BTBG06H BTBG06H.;
   format   BTBG06I BTBG06I.;
   format   BTBG06J BTBG06J.;
   format   BTBG06K BTBG06K.;
   format   BTBG06L BTBG06L.;
   format   BTBG06M BTBG06M.;
   format   BTBG06N BTBG06N.;
   format   BTBG06O BTBG06O.;
   format   BTBG06P BTBG06P.;
   format   BTBG06Q BTBG06Q.;
   format   BTBG07A BTBG07A.;
   format   BTBG07B BTBG07B.;
   format   BTBG07C BTBG07C.;
   format   BTBG07D BTBG07D.;
   format   BTBG07E BTBG07E.;
   format   BTBG07F BTBG07F.;
   format   BTBG07G BTBG07G.;
   format   BTBG07H BTBG07H.;
   format   BTBG08A BTBG08A.;
   format   BTBG08B BTBG08B.;
   format   BTBG08C BTBG08C.;
   format   BTBG08D BTBG08D.;
   format   BTBG08E BTBG08E.;
   format   BTBG08F BTBG08F.;
   format   BTBG08G BTBG08G.;
   format   BTBG09A BTBG09A.;
   format   BTBG09B BTBG09B.;
   format   BTBG09C BTBG09C.;
   format   BTBG09D BTBG09D.;
   format   BTBG09E BTBG09E.;
   format   BTBG09F BTBG09F.;
   format   BTBG09G BTBG09G.;
   format   BTBG10A BTBG10A.;
   format   BTBG10B BTBG10B.;
   format   BTBG10C BTBG10C.;
   format   BTBG10D BTBG10D.;
   format   BTBG10E BTBG10E.;
   format   BTBG10F BTBG10F.;
   format   BTBG10G BTBG10G.;
   format   BTBG11A BTBG11A.;
   format   BTBG11B BTBG11B.;
   format   BTBG11C BTBG11C.;
   format   BTBG11D BTBG11D.;
   format   BTBG11E BTBG11E.;
   format   BTBG11F BTBG11F.;
   format   BTBG11G BTBG11G.;
   format   BTBG11H BTBG11H.;
   format    BTBG12 BTBG12F.;
   format    BTBG13 BTBG13F.;
   format   BTBG14A BTBG14A.;
   format   BTBG14B BTBG14B.;
   format   BTBG14C BTBG14C.;
   format   BTBG14D BTBG14D.;
   format   BTBG14E BTBG14E.;
   format   BTBG14F BTBG14F.;
   format   BTBG14G BTBG14G.;
   format   BTBG15A BTBG15A.;
   format   BTBG15B BTBG15B.;
   format   BTBG15C BTBG15C.;
   format   BTBG15D BTBG15D.;
   format   BTBG15E BTBG15E.;
   format   BTBG15F BTBG15F.;
   format   BTBG15G BTBG15G.;
   format    BTBS16 BTBS16F.;
   format   BTBS17A BTBS17A.;
   format   BTBS17B BTBS17B.;
   format   BTBS17C BTBS17C.;
   format   BTBS17D BTBS17D.;
   format   BTBS17E BTBS17E.;
   format   BTBS17F BTBS17F.;
   format   BTBS17G BTBS17G.;
   format   BTBS17H BTBS17H.;
   format   BTBS17I BTBS17I.;
   format   BTBS17J BTBS17J.;
   format   BTBS18A BTBS18A.;
   format   BTBS18B BTBS18B.;
   format   BTBS18C BTBS18C.;
   format   BTBS18D BTBS18D.;
   format   BTBS18E BTBS18E.;
   format   BTBS18F BTBS18F.;
   format   BTBS18G BTBS18G.;
   format   BTBS18H BTBS18H.;
   format   BTBS18I BTBS18I.;
   format   BTBS18J BTBS18J.;
   format   BTBS18K BTBS18K.;
   format   BTBS18L BTBS18L.;
   format   BTBS18M BTBS18M.;
   format   BTBS18N BTBS18N.;
   format   BTBS18O BTBS18O.;
   format   BTBS19A BTBS19A.;
   format  BTBS19BA BTBS19BA.;
   format  BTBS19BB BTBS19BB.;
   format  BTBS19BC BTBS19BC.;
   format  BTBS19CA BTBS19CA.;
   format  BTBS19CB BTBS19CB.;
   format  BTBS19CC BTBS19CC.;
   format  BTBS19CD BTBS19CD.;
   format  BTBS19CE BTBS19CE.;
   format  BTBS20AA BTBS20AA.;
   format  BTBS20AB BTBS20AB.;
   format  BTBS20AC BTBS20AC.;
   format  BTBS20AD BTBS20AD.;
   format  BTBS20AE BTBS20AE.;
   format  BTBS20AF BTBS20AF.;
   format  BTBS20AG BTBS20AG.;
   format  BTBS20BA BTBS20BA.;
   format  BTBS20BB BTBS20BB.;
   format  BTBS20BC BTBS20BC.;
   format  BTBS20BD BTBS20BD.;
   format  BTBS20BE BTBS20BE.;
   format  BTBS20BF BTBS20BF.;
   format  BTBS20CA BTBS20CA.;
   format  BTBS20CB BTBS20CB.;
   format  BTBS20CC BTBS20CC.;
   format  BTBS20CD BTBS20CD.;
   format  BTBS20CE BTBS20CE.;
   format  BTBS20DA BTBS20DA.;
   format  BTBS20DB BTBS20DB.;
   format  BTBS20DC BTBS20DC.;
   format  BTBS20DD BTBS20DD.;
   format   BTBS21A BTBS21A.;
   format   BTBS21B BTBS21B.;
   format  BTBS21CA BTBS21CA.;
   format  BTBS21CB BTBS21CB.;
   format  BTBS21CC BTBS21CC.;
   format  BTBS21CD BTBS21CD.;
   format  BTBS21CE BTBS21CE.;
   format   BTBS22A BTBS22A.;
   format   BTBS22B BTBS22B.;
   format   BTBS22C BTBS22C.;
   format   BTBS23A BTBS23A.;
   format   BTBS23B BTBS23B.;
   format   BTBS23C BTBS23C.;
   format   BTBS23D BTBS23D.;
   format   BTBS23E BTBS23E.;
   format   BTBS23F BTBS23F.;
   format   BTBS23G BTBS23G.;
   format    BTBS24 BTBS24F.;
   format  BTBS25AA BTBS25AA.;
   format  BTBS25AB BTBS25AB.;
   format  BTBS25AC BTBS25AC.;
   format  BTBS25AD BTBS25AD.;
   format  BTBS25AE BTBS25AE.;
   format  BTBS25AF BTBS25AF.;
   format  BTBS25AG BTBS25AG.;
   format  BTBS25BA BTBS25BA.;
   format  BTBS25BB BTBS25BB.;
   format  BTBS25BC BTBS25BC.;
   format  BTBS25BD BTBS25BD.;
   format  BTBS25BE BTBS25BE.;
   format  BTBS25BF BTBS25BF.;
   format  BTBS25CA BTBS25CA.;
   format  BTBS25CB BTBS25CB.;
   format  BTBS25CC BTBS25CC.;
   format  BTBS25CD BTBS25CD.;
   format  BTBS25CE BTBS25CE.;
   format  BTBS25DA BTBS25DA.;
   format  BTBS25DB BTBS25DB.;
   format  BTBS25DC BTBS25DC.;
   format  BTBS25DD BTBS25DD.;
   format     IDPOP IDPOP.;
   format   IDGRADE IDGRADE.;
   format  IDGRADER IDGRADER.;
   format    IDSUBJ IDSUBJ.;
   format   BTBGEAS BTBGEAS.;
   format   BTDGEAS BTDGEAS.;
   format   BTBGSOS BTBGSOS.;
   format   BTDGSOS BTDGSOS.;
   format   BTBGSCR BTBGSCR.;
   format   BTDGSCR BTDGSCR.;
   format   BTBGTJS BTBGTJS.;
   format   BTDGTJS BTDGTJS.;
   format   BTBGCFT BTBGCFT.;
   format   BTDGCFT BTDGCFT.;
   format   BTBGLSN BTBGLSN.;
   format   BTDGLSN BTDGLSN.;
   format   BTBSESI BTBSESI.;
   format   BTDSESI BTDSESI.;
   format    BTDS05 BTDS05F.;
   format  BTDS20BI BTDS20BI.;
   format  BTDS20CH BTDS20CH.;
   format  BTDS20PH BTDS20PH.;
   format  BTDS20ES BTDS20ES.;
   format    BTDBHW BTDBHW.;
   format    BTDCHW BTDCHW.;
   format    BTDPHW BTDPHW.;
   format    BTDEHW BTDEHW.;
   format   VERSION VERSION.;
   format    BTNG04 BTNG04F.;
quit;

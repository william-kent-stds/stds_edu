/* ENCODING WINDOWS-1252 */



libname library 'p:\research\emr\austsurveys\national components is\timss & pirls\1. ti15 cycle admin\8. data management\2. main study\timss 2015_final data files\year 8\sas\' ;

proc format library = library ;
   value IDCNTRY
      999999 = 'Omitted or invalid' ;
   value IDSCHOOL
      9999 = 'Omitted or invalid' ;
   value BCBG03A
      1 = '0 to 10%'  
      2 = '11 to 25%'  
      3 = '26 to 50%'  
      4 = 'More than 50%'  
      9 = 'Omitted or invalid' ;
   value BCBG03B
      1 = '0 to 10%'  
      2 = '11 to 25%'  
      3 = '26 to 50%'  
      4 = 'More than 50%'  
      9 = 'Omitted or invalid' ;
   value BCBG04F
      1 = 'More than 90%'  
      2 = '76 to 90%'  
      3 = '51 to 75%'  
      4 = '26 to 50%'  
      5 = '25% or less'  
      9 = 'Omitted or invalid' ;
   value BCBG05A
      1 = 'More than 500,000'  
      2 = '100,001 to 500,000'  
      3 = '50,001 to 100,000'  
      4 = '30,001 to 50,000'  
      5 = '15,001 to 30,000'  
      6 = '3,001 to 15,000'  
      7 = '3,000 or fewer'  
      99 = 'Omitted or invalid' ;
   value BCBG05B
      1 = 'Urban, densely populated'  
      2 = 'Suburban, on fringe of urban area'  
      3 = 'Medium size city or large town'  
      4 = 'Small town or village'  
      5 = 'Remote rural'  
      9 = 'Omitted or invalid' ;
   value BCBG06A
      1 = 'Yes, for all students'  
      2 = 'Yes, for some students'  
      3 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG06B
      1 = 'Yes, for all students'  
      2 = 'Yes, for some students'  
      3 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG07A
      999 = 'Omitted or invalid' ;
   value BCBG07B
      999 = 'Omitted or invalid' ;
   value BCBG07C
      1 = '6 days'  
      2 = '5 one-half days'  
      3 = '5 days'  
      4 = '4 one-half days'  
      5 = '4 days'  
      6 = 'Other'  
      9 = 'Omitted or invalid' ;
   value BCBG08A
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG08B
      1 = 'Yes'  
      2 = 'No'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BCBG09A
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG09B
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG10F
      9999 = 'Omitted or invalid' ;
   value BCBG11A
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG11B
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG12F
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG12AA
      1 = '250 or fewer'  
      2 = '251–500'  
      3 = '501–2,000'  
      4 = '2,001–5,000'  
      5 = '5,001–10,000'  
      6 = 'More than 10,000'  
      96 = 'Logically not applicable'  
      99 = 'Omitted or invalid' ;
   value BCBG12AB
      1 = '250 or fewer'  
      2 = '251–500'  
      3 = '501–2,000'  
      4 = '2,001–5,000'  
      5 = '5,001–10,000'  
      6 = 'More than 10,000'  
      96 = 'Logically not applicable'  
      99 = 'Omitted or invalid' ;
   value BCBG12BA
      1 = '0'  
      2 = '1–5'  
      3 = '6–10'  
      4 = '11–30'  
      5 = '31 or more'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BCBG12BB
      1 = '0'  
      2 = '1–5'  
      3 = '6–10'  
      4 = '11–30'  
      5 = '31 or more'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BCBG13AA
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13AB
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13AC
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13AD
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13AE
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13AF
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13AG
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13AH
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13AI
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13BA
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13BB
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13BC
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13BD
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13BE
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13CA
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13CB
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13CC
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13CD
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG13CE
      1 = 'Not at all'  
      2 = 'A little'  
      3 = 'Some'  
      4 = 'A lot'  
      9 = 'Omitted or invalid' ;
   value BCBG14A
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14B
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14C
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14D
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14E
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14F
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14G
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14H
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14I
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14J
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14K
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14L
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG14M
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      9 = 'Omitted or invalid' ;
   value BCBG15A
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG15B
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG15C
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG15D
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG15E
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG15F
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG15G
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG15H
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG15I
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG15J
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG15K
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG16A
      1 = 'Were no vacancies in this subject'  
      2 = 'Easy to fill vacancies'  
      3 = 'Somewhat difficult'  
      4 = 'Very difficult'  
      9 = 'Omitted or invalid' ;
   value BCBG16B
      1 = 'Were no vacancies in this subject'  
      2 = 'Easy to fill vacancies'  
      3 = 'Somewhat difficult'  
      4 = 'Very difficult'  
      9 = 'Omitted or invalid' ;
   value BCBG16C
      1 = 'Were no vacancies in this subject'  
      2 = 'Easy to fill vacancies'  
      3 = 'Somewhat difficult'  
      4 = 'Very difficult'  
      9 = 'Omitted or invalid' ;
   value BCBG17A
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG17B
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG17C
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG18A
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG18B
      1 = 'Not a problem'  
      2 = 'Minor problem'  
      3 = 'Moderate problem'  
      4 = 'Serious problem'  
      9 = 'Omitted or invalid' ;
   value BCBG19F
      99 = 'Omitted or invalid' ;
   value BCBG20F
      99 = 'Omitted or invalid' ;
   value BCBG21F
      1 = 'Did not complete Bachelor’s or equivalent'  
      2 = 'Bachelor’s or equivalent'  
      3 = 'Master’s or equivalent'  
      4 = 'Doctor or equivalent'  
      9 = 'Omitted or invalid' ;
   value BCBG22A
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BCBG22B
      1 = 'Yes'  
      2 = 'No'  
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
   value SCHWGT
      999999 = 'Omitted or invalid' ;
   value STOTWGTU
      999999 = 'Omitted or invalid' ;
   value JKCREP
      9 = 'Omitted or invalid' ;
   value JKCZONE
      99 = 'Omitted or invalid' ;
   value BCBGMRS
      999999 = 'Omitted or invalid' ;
   value BCDGMRS
      1 = 'Not Affected'  
      2 = 'Affected'  
      3 = 'Affected A Lot'  
      9 = 'Omitted or invalid' ;
   value BCBGSRS
      999999 = 'Omitted or invalid' ;
   value BCDGSRS
      1 = 'Not Affected'  
      2 = 'Affected'  
      3 = 'Affected A Lot'  
      9 = 'Omitted or invalid' ;
   value BCBGEAS
      999999 = 'Omitted or invalid' ;
   value BCDGEAS
      1 = 'Very High Emphasis'  
      2 = 'High Emphasis'  
      3 = 'Medium Emphasis'  
      9 = 'Omitted or invalid' ;
   value BCBGDAS
      999999 = 'Omitted or invalid' ;
   value BCDGDAS
      1 = 'Hardly Any Problems'  
      2 = 'Minor Problems'  
      3 = 'Moderate to Severe Problems'  
      9 = 'Omitted or invalid' ;
   value BCDG03F
      1 = 'More Affluent'  
      2 = 'Neither More Affluent nor More Disadvantaged'  
      3 = 'More Disadvantaged'  
      9 = 'Omitted or invalid' ;
   value BCDG07HY
      9999 = 'Omitted or invalid' ;
   value VERSION
      99 = 'Omitted or invalid' ;
   value BCNG05A
      1 = 'More than 500,000 people'  
      2 = '100,001 to 500,000 people'  
      3 = '50,001 to 100,000 people'  
      4 = '30,001 to 50,000 people'  
      5 = '15,001 to 30,000 people'  
      6 = '3,001 to 15,000 people'  
      7 = '1,001 to 3,000 people'  
      8 = 'Fewer than 1,000 people'  
      98 = 'Not administered'  
      99 = 'Omitted or invalid' ;
   value BCG14A
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14B
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14C
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14D
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14E
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14F
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14G
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14H
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14I
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14J
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14K
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14L
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCG14M
      1 = 'Very high'  
      2 = 'High'  
      3 = 'Medium'  
      4 = 'Low'  
      5 = 'Very low'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BCNG21F
      1 = 'A TAFE or college diploma'  
      2 = 'An undergraduate or bachelor''s degree'  
      3 = 'A graduate or postgraduate diploma'  
      4 = 'A master''s degree'  
      5 = 'A PhD or doctorate'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;

proc datasets library = library ;
modify BCGAUSM6;
   format   IDCNTRY IDCNTRY.;
   format  IDSCHOOL IDSCHOOL.;
   format   BCBG03A BCBG03A.;
   format   BCBG03B BCBG03B.;
   format    BCBG04 BCBG04F.;
   format   BCBG05A BCBG05A.;
   format   BCBG05B BCBG05B.;
   format   BCBG06A BCBG06A.;
   format   BCBG06B BCBG06B.;
   format   BCBG07A BCBG07A.;
   format   BCBG07B BCBG07B.;
   format   BCBG07C BCBG07C.;
   format   BCBG08A BCBG08A.;
   format   BCBG08B BCBG08B.;
   format   BCBG09A BCBG09A.;
   format   BCBG09B BCBG09B.;
   format    BCBG10 BCBG10F.;
   format   BCBG11A BCBG11A.;
   format   BCBG11B BCBG11B.;
   format    BCBG12 BCBG12F.;
   format  BCBG12AA BCBG12AA.;
   format  BCBG12AB BCBG12AB.;
   format  BCBG12BA BCBG12BA.;
   format  BCBG12BB BCBG12BB.;
   format  BCBG13AA BCBG13AA.;
   format  BCBG13AB BCBG13AB.;
   format  BCBG13AC BCBG13AC.;
   format  BCBG13AD BCBG13AD.;
   format  BCBG13AE BCBG13AE.;
   format  BCBG13AF BCBG13AF.;
   format  BCBG13AG BCBG13AG.;
   format  BCBG13AH BCBG13AH.;
   format  BCBG13AI BCBG13AI.;
   format  BCBG13BA BCBG13BA.;
   format  BCBG13BB BCBG13BB.;
   format  BCBG13BC BCBG13BC.;
   format  BCBG13BD BCBG13BD.;
   format  BCBG13BE BCBG13BE.;
   format  BCBG13CA BCBG13CA.;
   format  BCBG13CB BCBG13CB.;
   format  BCBG13CC BCBG13CC.;
   format  BCBG13CD BCBG13CD.;
   format  BCBG13CE BCBG13CE.;
   format   BCBG14A BCBG14A.;
   format   BCBG14B BCBG14B.;
   format   BCBG14C BCBG14C.;
   format   BCBG14D BCBG14D.;
   format   BCBG14E BCBG14E.;
   format   BCBG14F BCBG14F.;
   format   BCBG14G BCBG14G.;
   format   BCBG14H BCBG14H.;
   format   BCBG14I BCBG14I.;
   format   BCBG14J BCBG14J.;
   format   BCBG14K BCBG14K.;
   format   BCBG14L BCBG14L.;
   format   BCBG14M BCBG14M.;
   format   BCBG15A BCBG15A.;
   format   BCBG15B BCBG15B.;
   format   BCBG15C BCBG15C.;
   format   BCBG15D BCBG15D.;
   format   BCBG15E BCBG15E.;
   format   BCBG15F BCBG15F.;
   format   BCBG15G BCBG15G.;
   format   BCBG15H BCBG15H.;
   format   BCBG15I BCBG15I.;
   format   BCBG15J BCBG15J.;
   format   BCBG15K BCBG15K.;
   format   BCBG16A BCBG16A.;
   format   BCBG16B BCBG16B.;
   format   BCBG16C BCBG16C.;
   format   BCBG17A BCBG17A.;
   format   BCBG17B BCBG17B.;
   format   BCBG17C BCBG17C.;
   format   BCBG18A BCBG18A.;
   format   BCBG18B BCBG18B.;
   format    BCBG19 BCBG19F.;
   format    BCBG20 BCBG20F.;
   format    BCBG21 BCBG21F.;
   format   BCBG22A BCBG22A.;
   format   BCBG22B BCBG22B.;
   format     IDPOP IDPOP.;
   format   IDGRADE IDGRADE.;
   format  IDGRADER IDGRADER.;
   format    SCHWGT SCHWGT.;
   format  STOTWGTU STOTWGTU.;
   format    JKCREP JKCREP.;
   format   JKCZONE JKCZONE.;
   format   BCBGMRS BCBGMRS.;
   format   BCDGMRS BCDGMRS.;
   format   BCBGSRS BCBGSRS.;
   format   BCDGSRS BCDGSRS.;
   format   BCBGEAS BCBGEAS.;
   format   BCDGEAS BCDGEAS.;
   format   BCBGDAS BCBGDAS.;
   format   BCDGDAS BCDGDAS.;
   format    BCDG03 BCDG03F.;
   format  BCDG07HY BCDG07HY.;
   format   VERSION VERSION.;
   format   BCNG05A BCNG05A.;
   format    BCG14A BCG14A.;
   format    BCG14B BCG14B.;
   format    BCG14C BCG14C.;
   format    BCG14D BCG14D.;
   format    BCG14E BCG14E.;
   format    BCG14F BCG14F.;
   format    BCG14G BCG14G.;
   format    BCG14H BCG14H.;
   format    BCG14I BCG14I.;
   format    BCG14J BCG14J.;
   format    BCG14K BCG14K.;
   format    BCG14L BCG14L.;
   format    BCG14M BCG14M.;
   format    BCNG21 BCNG21F.;
quit;

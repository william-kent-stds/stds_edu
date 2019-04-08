/* ENCODING WINDOWS-1252 */



libname library 'p:\research\emr\austsurveys\national components is\timss & pirls\1. ti15 cycle admin\8. data management\2. main study\timss 2015_final data files\year 8\sas\' ;

proc format library = library ;
   value IDCNTRY
      999999 = 'Omitted or invalid' ;
   value IDBOOK
      0 = 'No booklet assigned as student is excluded'  
      1 = 'Booklet 01'  
      2 = 'Booklet 02'  
      3 = 'Booklet 03'  
      4 = 'Booklet 04'  
      5 = 'Booklet 05'  
      6 = 'Booklet 06'  
      7 = 'Booklet 07'  
      8 = 'Booklet 08'  
      9 = 'Booklet 09'  
      10 = 'Booklet 10'  
      11 = 'Booklet 11'  
      12 = 'Booklet 12'  
      13 = 'Booklet 13'  
      14 = 'Booklet 14'  
      99 = 'Omitted or invalid' ;
   value IDSCHOOL
      9999 = 'Omitted or invalid' ;
   value IDCLASS
      999999 = 'Omitted or invalid' ;
   value IDSTUD
      99999999 = 'Omitted or invalid' ;
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
   value ITSEX
      1 = 'Female'  
      2 = 'Male'  
      9 = 'Omitted or invalid' ;
   value ITADMINI
      1 = 'National Center Staff'  
      2 = 'Teacher from School'  
      3 = 'Other'  
      9 = 'Omitted or invalid' ;
   value ITLANG
      1 = 'English'  
      2 = 'Spanish'  
      3 = 'French'  
      4 = 'Afrikaans'  
      5 = 'Albanian'  
      7 = 'Belarus'  
      8 = 'Bokmal'  
      9 = 'Bulgarian'  
      10 = 'Chinese'  
      11 = 'Danish'  
      12 = 'Dutch'  
      14 = 'Georgian'  
      15 = 'German'  
      16 = 'Hebrew'  
      17 = 'Hungarian'  
      18 = 'Icelandic'  
      19 = 'Indonesian'  
      20 = 'Italian'  
      21 = 'Latvian'  
      22 = 'Lithuanian'  
      23 = 'Macedonian'  
      24 = 'Maori'  
      25 = 'Moldovian'  
      26 = 'Nynorsk'  
      27 = 'Polish'  
      28 = 'Romanian'  
      29 = 'Russian'  
      30 = 'Slovak'  
      31 = 'Slovene'  
      32 = 'Swedish'  
      33 = '<Other>'  
      34 = 'Czech'  
      35 = 'Turkish'  
      36 = 'Bosnian'  
      37 = 'Serbian'  
      38 = 'Ukrainian'  
      39 = 'Kazakh'  
      40 = 'Bosnian_Cyrillic'  
      41 = 'Irish'  
      42 = 'Thai'  
      43 = 'Finnish'  
      44 = 'Greek'  
      45 = 'Portuguese'  
      46 = 'Estonian'  
      47 = 'Korean'  
      48 = 'Maltese'  
      49 = 'Catalan'  
      50 = 'Gallego'  
      51 = 'Basque'  
      52 = 'Valencian'  
      53 = 'Arabic'  
      54 = 'Armenian'  
      55 = 'Azeri'  
      56 = 'Croatian'  
      57 = 'Galician'  
      58 = 'Japanese'  
      59 = 'Malay'  
      60 = 'Mongolian'  
      62 = 'Norwegian'  
      63 = 'Persian'  
      64 = 'Sami'  
      65 = 'Syriac'  
      66 = 'Tatar'  
      67 = 'isiNdebele'  
      68 = 'isiXhosa'  
      69 = 'isiZulu'  
      70 = 'Sepedi (Sesotho sa Leboa)'  
      71 = 'Sesotho'  
      72 = 'Setswana'  
      73 = 'siSwati'  
      74 = 'Tshivenda'  
      75 = 'Xitsonga'  
      99 = 'Omitted or invalid' ;
   value BSBG01F
      1 = 'Girl'  
      2 = 'Boy'  
      9 = 'Omitted or invalid' ;
   value BSBG03F
      1 = 'Always'  
      2 = 'Almost always'  
      3 = 'Sometimes'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBG04F
      1 = '0–10 books'  
      2 = '11–25 books'  
      3 = '26–100 books'  
      4 = '101–200 books'  
      5 = 'More than 200'  
      9 = 'Omitted or invalid' ;
   value BSBG05F
      1 = 'None'  
      2 = '1-3 devices'  
      3 = '4-6 devices'  
      4 = '7-10 devices'  
      5 = 'More than 10 devices'  
      9 = 'Omitted or invalid' ;
   value BSBG06A
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG06B
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG06C
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG06D
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG06E
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG06F
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG06G
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG06H
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG06I
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG06J
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG06K
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG07A
      1 = 'Some Primary or Lower secondary or did not go to school'  
      2 = 'Lower secondary'  
      3 = 'Upper secondary'  
      4 = 'Post-secondary, non-tertiary'  
      5 = 'Short-cycle tertiary'  
      6 = 'Bachelor’s or equivalent'  
      7 = 'Postgraduate degree'  
      8 = 'Don’t know'  
      99 = 'Omitted or invalid' ;
   value BSBG07B
      1 = 'Some Primary or Lower secondary or did not go to school'  
      2 = 'Lower secondary'  
      3 = 'Upper secondary'  
      4 = 'Post-secondary, non-tertiary'  
      5 = 'Short-cycle tertiary'  
      6 = 'Bachelor’s or equivalent'  
      7 = 'Postgraduate degree'  
      8 = 'Don’t know'  
      99 = 'Omitted or invalid' ;
   value BSBG08F
      1 = 'Finish Lower secondary'  
      2 = 'Finish Upper secondary'  
      3 = 'Finish Post-secondary, non-tertiary'  
      4 = 'Finish Short-cycle tertiary'  
      5 = 'Finish Bachelor’s or equivalent'  
      6 = 'Finish Postgraduate degree'  
      9 = 'Omitted or invalid' ;
   value BSBG09A
      1 = 'Yes'  
      2 = 'No'  
      3 = 'I don''t know'  
      9 = 'Omitted or invalid' ;
   value BSBG09B
      1 = 'Yes'  
      2 = 'No'  
      3 = 'I don''t know'  
      9 = 'Omitted or invalid' ;
   value BSBG10A
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG10B
      1 = 'Older than 10 years old'  
      2 = '5 to 10 years old'  
      3 = 'Younger than 5 years old'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBG11F
      1 = 'Once a week or more'  
      2 = 'Once every two weeks'  
      3 = 'Once a month'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BSBG12F
      1 = 'Every day'  
      2 = 'Most days'  
      3 = 'Sometimes'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BSBG13A
      1 = 'Every day or almost every day'  
      2 = 'Once or twice a week'  
      3 = 'Once or twice a month'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BSBG13B
      1 = 'Every day or almost every day'  
      2 = 'Once or twice a week'  
      3 = 'Once or twice a month'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BSBG13C
      1 = 'Every day or almost every day'  
      2 = 'Once or twice a week'  
      3 = 'Once or twice a month'  
      4 = 'Never or almost never'  
      9 = 'Omitted or invalid' ;
   value BSBG14A
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG14B
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG14C
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG14D
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG14E
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG14F
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBG15A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBG15B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBG15C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBG15D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBG15E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBG15F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBG15G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBG16A
      1 = 'At least once a week'  
      2 = 'Once or twice a month'  
      3 = 'A few times a year'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBG16B
      1 = 'At least once a week'  
      2 = 'Once or twice a month'  
      3 = 'A few times a year'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBG16C
      1 = 'At least once a week'  
      2 = 'Once or twice a month'  
      3 = 'A few times a year'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBG16D
      1 = 'At least once a week'  
      2 = 'Once or twice a month'  
      3 = 'A few times a year'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBG16E
      1 = 'At least once a week'  
      2 = 'Once or twice a month'  
      3 = 'A few times a year'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBG16F
      1 = 'At least once a week'  
      2 = 'Once or twice a month'  
      3 = 'A few times a year'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBG16G
      1 = 'At least once a week'  
      2 = 'Once or twice a month'  
      3 = 'A few times a year'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBG16H
      1 = 'At least once a week'  
      2 = 'Once or twice a month'  
      3 = 'A few times a year'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBG16I
      1 = 'At least once a week'  
      2 = 'Once or twice a month'  
      3 = 'A few times a year'  
      4 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBM17A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM17B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM17C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM17D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM17E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM17F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM17G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM17H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM17I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM18A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM18B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM18C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM18D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM18E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM18F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM18G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM18H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM18I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM18J
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM19A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM19B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM19C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM19D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM19E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM19F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM19G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM19H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM19I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM20A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM20B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM20C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM20D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM20E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM20F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM20G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM20H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM20I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS21A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS21B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS21C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS21D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS21E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS21F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS21G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS21H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS21I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS22A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS22B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS22C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS22D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS22E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS22F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS22G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS22H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS22I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS22J
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS23A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS23B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS23C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS23D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS23E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS23F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS23G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS23H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS24A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS24B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS24C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS24D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS24E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS24F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS24G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS24H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS24I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM25AA
      1 = 'Every day'  
      2 = '3 or 4 times a week'  
      3 = '1 or 2 times a week'  
      4 = 'Less than once a week'  
      5 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBS25AB
      1 = 'Every day'  
      2 = '3 or 4 times a week'  
      3 = '1 or 2 times a week'  
      4 = 'Less than once a week'  
      5 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBM25BA
      1 = 'No mathematics homework'  
      2 = '1–15 minutes'  
      3 = '16–30 minutes'  
      4 = '31–60 minutes'  
      5 = '61–90 minutes'  
      6 = 'More than 90 minutes'  
      96 = 'Logically not applicable'  
      99 = 'Omitted or invalid' ;
   value BSBS25BB
      1 = 'No science homework'  
      2 = '1–15 minutes'  
      3 = '16–30 minutes'  
      4 = '31–60 minutes'  
      5 = '61–90 minutes'  
      6 = 'More than 90 minutes'  
      96 = 'Logically not applicable'  
      99 = 'Omitted or invalid' ;
   value BSBM26AA
      1 = 'Yes, to excel in class'  
      2 = 'Yes, to keep up in class'  
      3 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBS26AB
      1 = 'Yes, to excel in class'  
      2 = 'Yes, to keep up in class'  
      3 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBM26BA
      1 = 'Did not attend'  
      2 = 'Less than 4 months'  
      3 = '4-8 months'  
      4 = 'More than 8 months'  
      9 = 'Omitted or invalid' ;
   value BSBS26BB
      1 = 'Did not attend'  
      2 = 'Less than 4 months'  
      3 = '4-8 months'  
      4 = 'More than 8 months'  
      9 = 'Omitted or invalid' ;
   value BSBB21F
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBB22A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB22B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB22C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB22D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB22E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB22F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB22G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB22H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB22I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB23A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB23B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB23C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB23D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB23E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB23F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB23G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB23H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB23I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB23J
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB24A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB24B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB24C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB24D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB24E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB24F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB24G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBB24H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE25F
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBE26A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE26B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE26C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE26D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE26E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE26F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE26G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE26H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE26I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE27A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE27B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE27C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE27D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE27E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE27F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE27G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE27H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE27I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE27J
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE28A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE28B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE28C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE28D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE28E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE28F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE28G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBE28H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC29F
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBC30A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC30B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC30C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC30D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC30E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC30F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC30G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC30H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC30I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC31A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC31B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC31C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC31D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC31E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC31F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC31G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC31H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC31I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC31J
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC32A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC32B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC32C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC32D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC32E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC32F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC32G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBC32H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP33F
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBP34A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP34B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP34C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP34D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP34E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP34F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP34G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP34H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP34I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP35A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP35B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP35C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP35D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP35E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP35F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP35G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP35H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP35I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP35J
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP36A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP36B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP36C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP36D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP36E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP36F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP36G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBP36H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBS37A
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS37B
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS37C
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS37D
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS37E
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS37F
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS37G
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS37H
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBS37I
      1 = 'Agree a lot'  
      2 = 'Agree a little'  
      3 = 'Disagree a little'  
      4 = 'Disagree a lot'  
      9 = 'Omitted or invalid' ;
   value BSBM38AA
      1 = 'Every day'  
      2 = '3 or 4 times a week'  
      3 = '1 or 2 times a week'  
      4 = 'Less than once a week'  
      5 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBB38AB
      1 = 'Every day'  
      2 = '3 or 4 times a week'  
      3 = '1 or 2 times a week'  
      4 = 'Less than once a week'  
      5 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBE38AC
      1 = 'Every day'  
      2 = '3 or 4 times a week'  
      3 = '1 or 2 times a week'  
      4 = 'Less than once a week'  
      5 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBC38AD
      1 = 'Every day'  
      2 = '3 or 4 times a week'  
      3 = '1 or 2 times a week'  
      4 = 'Less than once a week'  
      5 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBP38AE
      1 = 'Every day'  
      2 = '3 or 4 times a week'  
      3 = '1 or 2 times a week'  
      4 = 'Less than once a week'  
      5 = 'Never'  
      9 = 'Omitted or invalid' ;
   value BSBM38BA
      1 = 'No mathematics homework'  
      2 = '1–15 minutes'  
      3 = '16–30 minutes'  
      4 = '31–60 minutes'  
      5 = '61–90 minutes'  
      6 = 'More than 90 minutes'  
      96 = 'Logically not applicable'  
      99 = 'Omitted or invalid' ;
   value BSBB38BB
      1 = 'No biology homework'  
      2 = '1–15 minutes'  
      3 = '16–30 minutes'  
      4 = '31–60 minutes'  
      5 = '61–90 minutes'  
      6 = 'More than 90 minutes'  
      96 = 'Logically not applicable'  
      99 = 'Omitted or invalid' ;
   value BSBE38BC
      1 = 'No science homework'  
      2 = '1–15 minutes'  
      3 = '16–30 minutes'  
      4 = '31–60 minutes'  
      5 = '61–90 minutes'  
      6 = 'More than 90 minutes'  
      96 = 'Logically not applicable'  
      99 = 'Omitted or invalid' ;
   value BSBC38BD
      1 = 'No chemistry homework'  
      2 = '1–15 minutes'  
      3 = '16–30 minutes'  
      4 = '31–60 minutes'  
      5 = '61–90 minutes'  
      6 = 'More than 90 minutes'  
      96 = 'Logically not applicable'  
      99 = 'Omitted or invalid' ;
   value BSBP38BE
      1 = 'No physics homework'  
      2 = '1–15 minutes'  
      3 = '16–30 minutes'  
      4 = '31–60 minutes'  
      5 = '61–90 minutes'  
      6 = 'More than 90 minutes'  
      96 = 'Logically not applicable'  
      99 = 'Omitted or invalid' ;
   value BSBM39AA
      1 = 'Yes, to excel in class'  
      2 = 'Yes, to keep up in class'  
      3 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBS39AB
      1 = 'Yes, to excel in class'  
      2 = 'Yes, to keep up in class'  
      3 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSBM39BA
      1 = 'Did not attend'  
      2 = 'Less than 4 months'  
      3 = '4-8 months'  
      4 = 'More than 8 months'  
      9 = 'Omitted or invalid' ;
   value BSBS39BB
      1 = 'Did not attend'  
      2 = 'Less than 4 months'  
      3 = '4-8 months'  
      4 = 'More than 8 months'  
      9 = 'Omitted or invalid' ;
   value ITACCOMM1F
      0 = 'No Special Accommodation'  
      1 = 'Special Accommodation'  
      9 = 'Omitted or invalid' ;
   value IDPOP
      1 = 'Pop 1'  
      2 = 'Pop 2'  
      3 = 'Pop 3'  
      9 = 'Omitted or invalid' ;
   value IDGRADER
      1 = 'Lower Grade'  
      2 = 'Upper Grade'  
      9 = 'Omitted or invalid' ;
   value BSDAGE
      99 = 'Omitted or invalid' ;
   value TOTWGT
      999999 = 'Omitted or invalid' ;
   value HOUWGT
      999999 = 'Omitted or invalid' ;
   value SENWGT
      999999 = 'Omitted or invalid' ;
   value JKZONE
      99 = 'Omitted or invalid' ;
   value JKREP
      9 = 'Omitted or invalid' ;
   value BSMMAT01F
      999 = 'Omitted or invalid' ;
   value BSMMAT02F
      999 = 'Omitted or invalid' ;
   value BSMMAT03F
      999 = 'Omitted or invalid' ;
   value BSMMAT04F
      999 = 'Omitted or invalid' ;
   value BSMMAT05F
      999 = 'Omitted or invalid' ;
   value BSSSCI01F
      999 = 'Omitted or invalid' ;
   value BSSSCI02F
      999 = 'Omitted or invalid' ;
   value BSSSCI03F
      999 = 'Omitted or invalid' ;
   value BSSSCI04F
      999 = 'Omitted or invalid' ;
   value BSSSCI05F
      999 = 'Omitted or invalid' ;
   value BSMALG01F
      999 = 'Omitted or invalid' ;
   value BSMALG02F
      999 = 'Omitted or invalid' ;
   value BSMALG03F
      999 = 'Omitted or invalid' ;
   value BSMALG04F
      999 = 'Omitted or invalid' ;
   value BSMALG05F
      999 = 'Omitted or invalid' ;
   value BSMDAT01F
      999 = 'Omitted or invalid' ;
   value BSMDAT02F
      999 = 'Omitted or invalid' ;
   value BSMDAT03F
      999 = 'Omitted or invalid' ;
   value BSMDAT04F
      999 = 'Omitted or invalid' ;
   value BSMDAT05F
      999 = 'Omitted or invalid' ;
   value BSMNUM01F
      999 = 'Omitted or invalid' ;
   value BSMNUM02F
      999 = 'Omitted or invalid' ;
   value BSMNUM03F
      999 = 'Omitted or invalid' ;
   value BSMNUM04F
      999 = 'Omitted or invalid' ;
   value BSMNUM05F
      999 = 'Omitted or invalid' ;
   value BSMGEO01F
      999 = 'Omitted or invalid' ;
   value BSMGEO02F
      999 = 'Omitted or invalid' ;
   value BSMGEO03F
      999 = 'Omitted or invalid' ;
   value BSMGEO04F
      999 = 'Omitted or invalid' ;
   value BSMGEO05F
      999 = 'Omitted or invalid' ;
   value BSSCHE01F
      999 = 'Omitted or invalid' ;
   value BSSCHE02F
      999 = 'Omitted or invalid' ;
   value BSSCHE03F
      999 = 'Omitted or invalid' ;
   value BSSCHE04F
      999 = 'Omitted or invalid' ;
   value BSSCHE05F
      999 = 'Omitted or invalid' ;
   value BSSEAR01F
      999 = 'Omitted or invalid' ;
   value BSSEAR02F
      999 = 'Omitted or invalid' ;
   value BSSEAR03F
      999 = 'Omitted or invalid' ;
   value BSSEAR04F
      999 = 'Omitted or invalid' ;
   value BSSEAR05F
      999 = 'Omitted or invalid' ;
   value BSSBIO01F
      999 = 'Omitted or invalid' ;
   value BSSBIO02F
      999 = 'Omitted or invalid' ;
   value BSSBIO03F
      999 = 'Omitted or invalid' ;
   value BSSBIO04F
      999 = 'Omitted or invalid' ;
   value BSSBIO05F
      999 = 'Omitted or invalid' ;
   value BSSPHY01F
      999 = 'Omitted or invalid' ;
   value BSSPHY02F
      999 = 'Omitted or invalid' ;
   value BSSPHY03F
      999 = 'Omitted or invalid' ;
   value BSSPHY04F
      999 = 'Omitted or invalid' ;
   value BSSPHY05F
      999 = 'Omitted or invalid' ;
   value BSMKNO01F
      999 = 'Omitted or invalid' ;
   value BSMKNO02F
      999 = 'Omitted or invalid' ;
   value BSMKNO03F
      999 = 'Omitted or invalid' ;
   value BSMKNO04F
      999 = 'Omitted or invalid' ;
   value BSMKNO05F
      999 = 'Omitted or invalid' ;
   value BSMAPP01F
      999 = 'Omitted or invalid' ;
   value BSMAPP02F
      999 = 'Omitted or invalid' ;
   value BSMAPP03F
      999 = 'Omitted or invalid' ;
   value BSMAPP04F
      999 = 'Omitted or invalid' ;
   value BSMAPP05F
      999 = 'Omitted or invalid' ;
   value BSMREA01F
      999 = 'Omitted or invalid' ;
   value BSMREA02F
      999 = 'Omitted or invalid' ;
   value BSMREA03F
      999 = 'Omitted or invalid' ;
   value BSMREA04F
      999 = 'Omitted or invalid' ;
   value BSMREA05F
      999 = 'Omitted or invalid' ;
   value BSSKNO01F
      999 = 'Omitted or invalid' ;
   value BSSKNO02F
      999 = 'Omitted or invalid' ;
   value BSSKNO03F
      999 = 'Omitted or invalid' ;
   value BSSKNO04F
      999 = 'Omitted or invalid' ;
   value BSSKNO05F
      999 = 'Omitted or invalid' ;
   value BSSAPP01F
      999 = 'Omitted or invalid' ;
   value BSSAPP02F
      999 = 'Omitted or invalid' ;
   value BSSAPP03F
      999 = 'Omitted or invalid' ;
   value BSSAPP04F
      999 = 'Omitted or invalid' ;
   value BSSAPP05F
      999 = 'Omitted or invalid' ;
   value BSSREA01F
      999 = 'Omitted or invalid' ;
   value BSSREA02F
      999 = 'Omitted or invalid' ;
   value BSSREA03F
      999 = 'Omitted or invalid' ;
   value BSSREA04F
      999 = 'Omitted or invalid' ;
   value BSSREA05F
      999 = 'Omitted or invalid' ;
   value BSMIBM01F
      9 = 'Omitted or invalid' ;
   value BSMIBM02F
      9 = 'Omitted or invalid' ;
   value BSMIBM03F
      9 = 'Omitted or invalid' ;
   value BSMIBM04F
      9 = 'Omitted or invalid' ;
   value BSMIBM05F
      9 = 'Omitted or invalid' ;
   value BSSIBM01F
      9 = 'Omitted or invalid' ;
   value BSSIBM02F
      9 = 'Omitted or invalid' ;
   value BSSIBM03F
      9 = 'Omitted or invalid' ;
   value BSSIBM04F
      9 = 'Omitted or invalid' ;
   value BSSIBM05F
      9 = 'Omitted or invalid' ;
   value BSBGHER
      999999 = 'Omitted or invalid' ;
   value BSDGHER
      1 = 'Many Resources'  
      2 = 'Some Resources'  
      3 = 'Few Resources'  
      9 = 'Omitted or invalid' ;
   value BSBGSSB
      999999 = 'Omitted or invalid' ;
   value BSDGSSB
      1 = 'High Sense of School Belonging'  
      2 = 'Sense of School Belonging'  
      3 = 'Little Sense of School Belonging'  
      9 = 'Omitted or invalid' ;
   value BSBGSB
      999999 = 'Omitted or invalid' ;
   value BSDGSB
      1 = 'Almost Never'  
      2 = 'About Monthly'  
      3 = 'About Weekly'  
      9 = 'Omitted or invalid' ;
   value BSBGSLM
      999999 = 'Omitted or invalid' ;
   value BSDGSLM
      1 = 'Very Much Like Learning Mathematics'  
      2 = 'Like Learning Mathematics'  
      3 = 'Do Not Like Learning Mathematics'  
      9 = 'Omitted or invalid' ;
   value BSBGEML
      999999 = 'Omitted or invalid' ;
   value BSDGEML
      1 = 'Very Engaging Teaching'  
      2 = 'Engaging Teaching'  
      3 = 'Less than Engaging Teaching'  
      9 = 'Omitted or invalid' ;
   value BSBGSCM
      999999 = 'Omitted or invalid' ;
   value BSDGSCM
      1 = 'Very Confident in Mathematics'  
      2 = 'Confident in Mathematics'  
      3 = 'Not Confident in Mathematics'  
      9 = 'Omitted or invalid' ;
   value BSBGSVM
      999999 = 'Omitted or invalid' ;
   value BSDGSVM
      1 = 'Strongly Value Mathematics'  
      2 = 'Value Mathematics'  
      3 = 'Do Not Value Mathematics'  
      9 = 'Omitted or invalid' ;
   value BSBGSLS
      999999 = 'Omitted or invalid' ;
   value BSDGSLS
      1 = 'Very Much Like Learning Science'  
      2 = 'Like Learning Science'  
      3 = 'Do Not Like Learning Science'  
      9 = 'Omitted or invalid' ;
   value BSBGESL
      999999 = 'Omitted or invalid' ;
   value BSDGESL
      1 = 'Very Engaging Teaching'  
      2 = 'Engaging Teaching'  
      3 = 'Less than Engaging Teaching'  
      9 = 'Omitted or invalid' ;
   value BSBGSCS
      999999 = 'Omitted or invalid' ;
   value BSDGSCS
      1 = 'Very Confident in Science'  
      2 = 'Confident in Science'  
      3 = 'Not Confident in Science'  
      9 = 'Omitted or invalid' ;
   value BSBGSVS
      999999 = 'Omitted or invalid' ;
   value BSDGSVS
      1 = 'Strongly Value Science'  
      2 = 'Value Science'  
      3 = 'Do Not Value Science'  
      9 = 'Omitted or invalid' ;
   value BSBGSLB
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGSLB
      1 = 'Very Much Like Learning Biology'  
      2 = 'Like Learning Biology'  
      3 = 'Do Not Like Learning Biology'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBGEBL
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGEBL
      1 = 'Very Engaging Teaching'  
      2 = 'Engaging Teaching'  
      3 = 'Less than Engaging Teaching'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBGSCB
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGSCB
      1 = 'Very Confident in Biology'  
      2 = 'Confident in Biology'  
      3 = 'Not Confident in Biology'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBGSLE
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGSLE
      1 = 'Very Much Like Learning Earth Science'  
      2 = 'Like Learning Earth Science'  
      3 = 'Do Not Like Learning Earth Science'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBGEEL
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGEEL
      1 = 'Very Engaging Teaching'  
      2 = 'Engaging Teaching'  
      3 = 'Less than Engaging Teaching'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBGSCE
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGSCE
      1 = 'Very Confident in Earth Science'  
      2 = 'Confident in Earth Science'  
      3 = 'Not Confident in Earth Science'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBGSLC
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGSLC
      1 = 'Very Much Like Learning Chemistry'  
      2 = 'Like Learning Chemistry'  
      3 = 'Do Not Like Learning Chemistry'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBGECL
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGECL
      1 = 'Very Engaging Teaching'  
      2 = 'Engaging Teaching'  
      3 = 'Less than Engaging Teaching'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBGSCC
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGSCC
      1 = 'Very Confident in Chemistry'  
      2 = 'Confident in Chemistry'  
      3 = 'Not Confident in Chemistry'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBGSLP
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGSLP
      1 = 'Very Much Like Learning Physics'  
      2 = 'Like Learning Physics'  
      3 = 'Do Not Like Learning Physics'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBGEPL
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGEPL
      1 = 'Very Engaging Teaching'  
      2 = 'Engaging Teaching'  
      3 = 'Less than Engaging Teaching'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSBGSCP
      999996 = 'Logically not applicable'  
      999999 = 'Omitted or invalid' ;
   value BSDGSCP
      1 = 'Very Confident in Physics'  
      2 = 'Confident in Physics'  
      3 = 'Not Confident in Physics'  
      6 = 'Logically not applicable'  
      9 = 'Omitted or invalid' ;
   value BSDG06S
      0 = 'Neither Own Room nor Internet Connection'  
      1 = 'Either Own Room or Internet Connection'  
      2 = 'Both Own Room and Internet Connection'  
      9 = 'Omitted or invalid' ;
   value BSDGEDUP
      1 = 'University or Higher'  
      2 = 'Post-secondary but not University'  
      3 = 'Upper Secondary'  
      4 = 'Lower Secondary'  
      5 = 'Some Primary, Lower Secondary or No School'  
      6 = 'Don''t Know'  
      9 = 'Omitted or invalid' ;
   value BSDMLOWP
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSDSLOWP
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BSDMWKHW
      1 = '3 Hours or More'  
      2 = 'More than 45 minutes but Less than 3 Hours'  
      3 = '45 Minutes or Less'  
      9 = 'Omitted or invalid' ;
   value BSDSWKHS
      1 = '3 Hours or More'  
      2 = 'More than 45 minutes but Less than 3 Hours'  
      3 = '45 Minutes or Less'  
      9 = 'Omitted or invalid' ;
   value BSDBWKHB
      1 = '3 Hours or More'  
      2 = 'More than 45 minutes but Less than 3 Hours'  
      3 = '45 Minutes or Less'  
      9 = 'Omitted or invalid' ;
   value BSDCWKHC
      1 = '3 Hours or More'  
      2 = 'More than 45 minutes but Less than 3 Hours'  
      3 = '45 Minutes or Less'  
      9 = 'Omitted or invalid' ;
   value BSDPWKHP
      1 = '3 Hours or More'  
      2 = 'More than 45 minutes but Less than 3 Hours'  
      3 = '45 Minutes or Less'  
      9 = 'Omitted or invalid' ;
   value BSDEWKHE
      1 = '3 Hours or More'  
      2 = 'More than 45 minutes but Less than 3 Hours'  
      3 = '45 Minutes or Less'  
      9 = 'Omitted or invalid' ;
   value VERSION
      99 = 'Omitted or invalid' ;
   value BSNG07A
      1 = 'Some primary school or did not go to school'  
      2 = 'Finished primary school'  
      3 = 'Finished secondary school'  
      4 = 'Finished a TAFE training certificate, apprenticeship or traineeship'  
      5 = 'Finished a TAFE or college diploma (e.g. Diploma of Information Technology)'  
      6 = 'Finished an undergraduate degree (e.g. Bachelor of Arts)'  
      7 = 'Finished a graduate or postgraduate diploma (e.g. Postgraduate Diploma of Education)'  
      8 = 'Finished a master''s degree, PhD or doctorate'  
      9 = 'I don''t know'  
      98 = 'Not administered'  
      99 = 'Omitted or invalid' ;
   value BSNG07B
      1 = 'Some primary school or did not go to school'  
      2 = 'Finished primary school'  
      3 = 'Finished secondary school'  
      4 = 'Finished a TAFE training certificate, apprenticeship or traineeship'  
      5 = 'Finished a TAFE or college diploma (e.g. Diploma of Information Technology)'  
      6 = 'Finished an undergraduate degree (e.g. Bachelor of Arts)'  
      7 = 'Finished a graduate or postgraduate diploma (e.g. Postgraduate Diploma of Education)'  
      8 = 'Finished a master''s degree, PhD or doctorate'  
      9 = 'I don''t know'  
      98 = 'Not administered'  
      99 = 'Omitted or invalid' ;
   value BSNG08F
      1 = 'Finish Year 10'  
      2 = 'Finish Year 12'  
      3 = 'Finish a TAFE training certificate, apprenticeship or traineeship'  
      4 = 'Finish a TAFE or college diploma (e.g. Diploma of Information Technology)'  
      5 = 'Finish an undergraduate degree (e.g. Bachelor of Arts)'  
      6 = 'Finish a graduate or postgraduate diploma (e.g. Postgraduate Diploma of Education)'  
      7 = 'Finish a master''s degree, PhD or doctorate'  
      8 = 'Not administered'  
      9 = 'Omitted or invalid' ;
   value BSXG28A
      1 = 'Has never worked for pay'  
      2 = 'Small Business Owner'  
      3 = 'Clerk'  
      4 = 'Service or Sales Worker'  
      5 = 'Skilled Agricultural or Fishery Worker'  
      6 = 'Craft or Trade Worker'  
      7 = 'Plant or Machine Operator'  
      8 = 'General Labourers'  
      9 = 'Corporate Manager or Senior Official'  
      10 = 'Professional'  
      11 = 'Technician or Associate Professional'  
      12 = 'Not Applicable'  
      98 = 'Not administered'  
      99 = 'Omitted or invalid' ;
   value BSXG28B
      1 = 'Has never worked for pay'  
      2 = 'Small Business Owner'  
      3 = 'Clerk'  
      4 = 'Service or Sales Worker'  
      5 = 'Skilled Agricultural or Fishery Worker'  
      6 = 'Craft or Trade Worker'  
      7 = 'Plant or Machine Operator'  
      8 = 'General Labourers'  
      9 = 'Corporate Manager or Senior Official'  
      10 = 'Professional'  
      11 = 'Technician or Associate Professional'  
      12 = 'Not Applicable'  
      98 = 'Not administered'  
      99 = 'Omitted or invalid' ;
   value STATE
      1 = 'ACT'  
      2 = 'NSW'  
      3 = 'VIC'  
      4 = 'QLD'  
      5 = 'SA'  
      6 = 'WA'  
      7 = 'TAS'  
      8 = 'NT' ;
   value GEOLOCATION
      1 = 'Metropolitan'  
      2 = 'Provincial'  
      3 = 'Remote' ;
   value INDIG
      0 = 'Not Indigenous'  
      1 = 'Indigenous' ;

proc datasets library = library ;
modify BSGAUSM6;
   format   IDCNTRY IDCNTRY.;
   format    IDBOOK IDBOOK.;
   format  IDSCHOOL IDSCHOOL.;
   format   IDCLASS IDCLASS.;
   format    IDSTUD IDSTUD.;
   format   IDGRADE IDGRADE.;
   format     ITSEX ITSEX.;
   format  ITADMINI ITADMINI.;
   format    ITLANG ITLANG.;
   format    BSBG01 BSBG01F.;
   format    BSBG03 BSBG03F.;
   format    BSBG04 BSBG04F.;
   format    BSBG05 BSBG05F.;
   format   BSBG06A BSBG06A.;
   format   BSBG06B BSBG06B.;
   format   BSBG06C BSBG06C.;
   format   BSBG06D BSBG06D.;
   format   BSBG06E BSBG06E.;
   format   BSBG06F BSBG06F.;
   format   BSBG06G BSBG06G.;
   format   BSBG06H BSBG06H.;
   format   BSBG06I BSBG06I.;
   format   BSBG06J BSBG06J.;
   format   BSBG06K BSBG06K.;
   format   BSBG07A BSBG07A.;
   format   BSBG07B BSBG07B.;
   format    BSBG08 BSBG08F.;
   format   BSBG09A BSBG09A.;
   format   BSBG09B BSBG09B.;
   format   BSBG10A BSBG10A.;
   format   BSBG10B BSBG10B.;
   format    BSBG11 BSBG11F.;
   format    BSBG12 BSBG12F.;
   format   BSBG13A BSBG13A.;
   format   BSBG13B BSBG13B.;
   format   BSBG13C BSBG13C.;
   format   BSBG14A BSBG14A.;
   format   BSBG14B BSBG14B.;
   format   BSBG14C BSBG14C.;
   format   BSBG14D BSBG14D.;
   format   BSBG14E BSBG14E.;
   format   BSBG14F BSBG14F.;
   format   BSBG15A BSBG15A.;
   format   BSBG15B BSBG15B.;
   format   BSBG15C BSBG15C.;
   format   BSBG15D BSBG15D.;
   format   BSBG15E BSBG15E.;
   format   BSBG15F BSBG15F.;
   format   BSBG15G BSBG15G.;
   format   BSBG16A BSBG16A.;
   format   BSBG16B BSBG16B.;
   format   BSBG16C BSBG16C.;
   format   BSBG16D BSBG16D.;
   format   BSBG16E BSBG16E.;
   format   BSBG16F BSBG16F.;
   format   BSBG16G BSBG16G.;
   format   BSBG16H BSBG16H.;
   format   BSBG16I BSBG16I.;
   format   BSBM17A BSBM17A.;
   format   BSBM17B BSBM17B.;
   format   BSBM17C BSBM17C.;
   format   BSBM17D BSBM17D.;
   format   BSBM17E BSBM17E.;
   format   BSBM17F BSBM17F.;
   format   BSBM17G BSBM17G.;
   format   BSBM17H BSBM17H.;
   format   BSBM17I BSBM17I.;
   format   BSBM18A BSBM18A.;
   format   BSBM18B BSBM18B.;
   format   BSBM18C BSBM18C.;
   format   BSBM18D BSBM18D.;
   format   BSBM18E BSBM18E.;
   format   BSBM18F BSBM18F.;
   format   BSBM18G BSBM18G.;
   format   BSBM18H BSBM18H.;
   format   BSBM18I BSBM18I.;
   format   BSBM18J BSBM18J.;
   format   BSBM19A BSBM19A.;
   format   BSBM19B BSBM19B.;
   format   BSBM19C BSBM19C.;
   format   BSBM19D BSBM19D.;
   format   BSBM19E BSBM19E.;
   format   BSBM19F BSBM19F.;
   format   BSBM19G BSBM19G.;
   format   BSBM19H BSBM19H.;
   format   BSBM19I BSBM19I.;
   format   BSBM20A BSBM20A.;
   format   BSBM20B BSBM20B.;
   format   BSBM20C BSBM20C.;
   format   BSBM20D BSBM20D.;
   format   BSBM20E BSBM20E.;
   format   BSBM20F BSBM20F.;
   format   BSBM20G BSBM20G.;
   format   BSBM20H BSBM20H.;
   format   BSBM20I BSBM20I.;
   format   BSBS21A BSBS21A.;
   format   BSBS21B BSBS21B.;
   format   BSBS21C BSBS21C.;
   format   BSBS21D BSBS21D.;
   format   BSBS21E BSBS21E.;
   format   BSBS21F BSBS21F.;
   format   BSBS21G BSBS21G.;
   format   BSBS21H BSBS21H.;
   format   BSBS21I BSBS21I.;
   format   BSBS22A BSBS22A.;
   format   BSBS22B BSBS22B.;
   format   BSBS22C BSBS22C.;
   format   BSBS22D BSBS22D.;
   format   BSBS22E BSBS22E.;
   format   BSBS22F BSBS22F.;
   format   BSBS22G BSBS22G.;
   format   BSBS22H BSBS22H.;
   format   BSBS22I BSBS22I.;
   format   BSBS22J BSBS22J.;
   format   BSBS23A BSBS23A.;
   format   BSBS23B BSBS23B.;
   format   BSBS23C BSBS23C.;
   format   BSBS23D BSBS23D.;
   format   BSBS23E BSBS23E.;
   format   BSBS23F BSBS23F.;
   format   BSBS23G BSBS23G.;
   format   BSBS23H BSBS23H.;
   format   BSBS24A BSBS24A.;
   format   BSBS24B BSBS24B.;
   format   BSBS24C BSBS24C.;
   format   BSBS24D BSBS24D.;
   format   BSBS24E BSBS24E.;
   format   BSBS24F BSBS24F.;
   format   BSBS24G BSBS24G.;
   format   BSBS24H BSBS24H.;
   format   BSBS24I BSBS24I.;
   format  BSBM25AA BSBM25AA.;
   format  BSBS25AB BSBS25AB.;
   format  BSBM25BA BSBM25BA.;
   format  BSBS25BB BSBS25BB.;
   format  BSBM26AA BSBM26AA.;
   format  BSBS26AB BSBS26AB.;
   format  BSBM26BA BSBM26BA.;
   format  BSBS26BB BSBS26BB.;
   format    BSBB21 BSBB21F.;
   format   BSBB22A BSBB22A.;
   format   BSBB22B BSBB22B.;
   format   BSBB22C BSBB22C.;
   format   BSBB22D BSBB22D.;
   format   BSBB22E BSBB22E.;
   format   BSBB22F BSBB22F.;
   format   BSBB22G BSBB22G.;
   format   BSBB22H BSBB22H.;
   format   BSBB22I BSBB22I.;
   format   BSBB23A BSBB23A.;
   format   BSBB23B BSBB23B.;
   format   BSBB23C BSBB23C.;
   format   BSBB23D BSBB23D.;
   format   BSBB23E BSBB23E.;
   format   BSBB23F BSBB23F.;
   format   BSBB23G BSBB23G.;
   format   BSBB23H BSBB23H.;
   format   BSBB23I BSBB23I.;
   format   BSBB23J BSBB23J.;
   format   BSBB24A BSBB24A.;
   format   BSBB24B BSBB24B.;
   format   BSBB24C BSBB24C.;
   format   BSBB24D BSBB24D.;
   format   BSBB24E BSBB24E.;
   format   BSBB24F BSBB24F.;
   format   BSBB24G BSBB24G.;
   format   BSBB24H BSBB24H.;
   format    BSBE25 BSBE25F.;
   format   BSBE26A BSBE26A.;
   format   BSBE26B BSBE26B.;
   format   BSBE26C BSBE26C.;
   format   BSBE26D BSBE26D.;
   format   BSBE26E BSBE26E.;
   format   BSBE26F BSBE26F.;
   format   BSBE26G BSBE26G.;
   format   BSBE26H BSBE26H.;
   format   BSBE26I BSBE26I.;
   format   BSBE27A BSBE27A.;
   format   BSBE27B BSBE27B.;
   format   BSBE27C BSBE27C.;
   format   BSBE27D BSBE27D.;
   format   BSBE27E BSBE27E.;
   format   BSBE27F BSBE27F.;
   format   BSBE27G BSBE27G.;
   format   BSBE27H BSBE27H.;
   format   BSBE27I BSBE27I.;
   format   BSBE27J BSBE27J.;
   format   BSBE28A BSBE28A.;
   format   BSBE28B BSBE28B.;
   format   BSBE28C BSBE28C.;
   format   BSBE28D BSBE28D.;
   format   BSBE28E BSBE28E.;
   format   BSBE28F BSBE28F.;
   format   BSBE28G BSBE28G.;
   format   BSBE28H BSBE28H.;
   format    BSBC29 BSBC29F.;
   format   BSBC30A BSBC30A.;
   format   BSBC30B BSBC30B.;
   format   BSBC30C BSBC30C.;
   format   BSBC30D BSBC30D.;
   format   BSBC30E BSBC30E.;
   format   BSBC30F BSBC30F.;
   format   BSBC30G BSBC30G.;
   format   BSBC30H BSBC30H.;
   format   BSBC30I BSBC30I.;
   format   BSBC31A BSBC31A.;
   format   BSBC31B BSBC31B.;
   format   BSBC31C BSBC31C.;
   format   BSBC31D BSBC31D.;
   format   BSBC31E BSBC31E.;
   format   BSBC31F BSBC31F.;
   format   BSBC31G BSBC31G.;
   format   BSBC31H BSBC31H.;
   format   BSBC31I BSBC31I.;
   format   BSBC31J BSBC31J.;
   format   BSBC32A BSBC32A.;
   format   BSBC32B BSBC32B.;
   format   BSBC32C BSBC32C.;
   format   BSBC32D BSBC32D.;
   format   BSBC32E BSBC32E.;
   format   BSBC32F BSBC32F.;
   format   BSBC32G BSBC32G.;
   format   BSBC32H BSBC32H.;
   format    BSBP33 BSBP33F.;
   format   BSBP34A BSBP34A.;
   format   BSBP34B BSBP34B.;
   format   BSBP34C BSBP34C.;
   format   BSBP34D BSBP34D.;
   format   BSBP34E BSBP34E.;
   format   BSBP34F BSBP34F.;
   format   BSBP34G BSBP34G.;
   format   BSBP34H BSBP34H.;
   format   BSBP34I BSBP34I.;
   format   BSBP35A BSBP35A.;
   format   BSBP35B BSBP35B.;
   format   BSBP35C BSBP35C.;
   format   BSBP35D BSBP35D.;
   format   BSBP35E BSBP35E.;
   format   BSBP35F BSBP35F.;
   format   BSBP35G BSBP35G.;
   format   BSBP35H BSBP35H.;
   format   BSBP35I BSBP35I.;
   format   BSBP35J BSBP35J.;
   format   BSBP36A BSBP36A.;
   format   BSBP36B BSBP36B.;
   format   BSBP36C BSBP36C.;
   format   BSBP36D BSBP36D.;
   format   BSBP36E BSBP36E.;
   format   BSBP36F BSBP36F.;
   format   BSBP36G BSBP36G.;
   format   BSBP36H BSBP36H.;
   format   BSBS37A BSBS37A.;
   format   BSBS37B BSBS37B.;
   format   BSBS37C BSBS37C.;
   format   BSBS37D BSBS37D.;
   format   BSBS37E BSBS37E.;
   format   BSBS37F BSBS37F.;
   format   BSBS37G BSBS37G.;
   format   BSBS37H BSBS37H.;
   format   BSBS37I BSBS37I.;
   format  BSBM38AA BSBM38AA.;
   format  BSBB38AB BSBB38AB.;
   format  BSBE38AC BSBE38AC.;
   format  BSBC38AD BSBC38AD.;
   format  BSBP38AE BSBP38AE.;
   format  BSBM38BA BSBM38BA.;
   format  BSBB38BB BSBB38BB.;
   format  BSBE38BC BSBE38BC.;
   format  BSBC38BD BSBC38BD.;
   format  BSBP38BE BSBP38BE.;
   format  BSBM39AA BSBM39AA.;
   format  BSBS39AB BSBS39AB.;
   format  BSBM39BA BSBM39BA.;
   format  BSBS39BB BSBS39BB.;
   format ITACCOMM1 ITACCOMM1F.;
   format     IDPOP IDPOP.;
   format  IDGRADER IDGRADER.;
   format    BSDAGE BSDAGE.;
   format    TOTWGT TOTWGT.;
   format    HOUWGT HOUWGT.;
   format    SENWGT SENWGT.;
   format    JKZONE JKZONE.;
   format     JKREP JKREP.;
   format  BSMMAT01 BSMMAT01F.;
   format  BSMMAT02 BSMMAT02F.;
   format  BSMMAT03 BSMMAT03F.;
   format  BSMMAT04 BSMMAT04F.;
   format  BSMMAT05 BSMMAT05F.;
   format  BSSSCI01 BSSSCI01F.;
   format  BSSSCI02 BSSSCI02F.;
   format  BSSSCI03 BSSSCI03F.;
   format  BSSSCI04 BSSSCI04F.;
   format  BSSSCI05 BSSSCI05F.;
   format  BSMALG01 BSMALG01F.;
   format  BSMALG02 BSMALG02F.;
   format  BSMALG03 BSMALG03F.;
   format  BSMALG04 BSMALG04F.;
   format  BSMALG05 BSMALG05F.;
   format  BSMDAT01 BSMDAT01F.;
   format  BSMDAT02 BSMDAT02F.;
   format  BSMDAT03 BSMDAT03F.;
   format  BSMDAT04 BSMDAT04F.;
   format  BSMDAT05 BSMDAT05F.;
   format  BSMNUM01 BSMNUM01F.;
   format  BSMNUM02 BSMNUM02F.;
   format  BSMNUM03 BSMNUM03F.;
   format  BSMNUM04 BSMNUM04F.;
   format  BSMNUM05 BSMNUM05F.;
   format  BSMGEO01 BSMGEO01F.;
   format  BSMGEO02 BSMGEO02F.;
   format  BSMGEO03 BSMGEO03F.;
   format  BSMGEO04 BSMGEO04F.;
   format  BSMGEO05 BSMGEO05F.;
   format  BSSCHE01 BSSCHE01F.;
   format  BSSCHE02 BSSCHE02F.;
   format  BSSCHE03 BSSCHE03F.;
   format  BSSCHE04 BSSCHE04F.;
   format  BSSCHE05 BSSCHE05F.;
   format  BSSEAR01 BSSEAR01F.;
   format  BSSEAR02 BSSEAR02F.;
   format  BSSEAR03 BSSEAR03F.;
   format  BSSEAR04 BSSEAR04F.;
   format  BSSEAR05 BSSEAR05F.;
   format  BSSBIO01 BSSBIO01F.;
   format  BSSBIO02 BSSBIO02F.;
   format  BSSBIO03 BSSBIO03F.;
   format  BSSBIO04 BSSBIO04F.;
   format  BSSBIO05 BSSBIO05F.;
   format  BSSPHY01 BSSPHY01F.;
   format  BSSPHY02 BSSPHY02F.;
   format  BSSPHY03 BSSPHY03F.;
   format  BSSPHY04 BSSPHY04F.;
   format  BSSPHY05 BSSPHY05F.;
   format  BSMKNO01 BSMKNO01F.;
   format  BSMKNO02 BSMKNO02F.;
   format  BSMKNO03 BSMKNO03F.;
   format  BSMKNO04 BSMKNO04F.;
   format  BSMKNO05 BSMKNO05F.;
   format  BSMAPP01 BSMAPP01F.;
   format  BSMAPP02 BSMAPP02F.;
   format  BSMAPP03 BSMAPP03F.;
   format  BSMAPP04 BSMAPP04F.;
   format  BSMAPP05 BSMAPP05F.;
   format  BSMREA01 BSMREA01F.;
   format  BSMREA02 BSMREA02F.;
   format  BSMREA03 BSMREA03F.;
   format  BSMREA04 BSMREA04F.;
   format  BSMREA05 BSMREA05F.;
   format  BSSKNO01 BSSKNO01F.;
   format  BSSKNO02 BSSKNO02F.;
   format  BSSKNO03 BSSKNO03F.;
   format  BSSKNO04 BSSKNO04F.;
   format  BSSKNO05 BSSKNO05F.;
   format  BSSAPP01 BSSAPP01F.;
   format  BSSAPP02 BSSAPP02F.;
   format  BSSAPP03 BSSAPP03F.;
   format  BSSAPP04 BSSAPP04F.;
   format  BSSAPP05 BSSAPP05F.;
   format  BSSREA01 BSSREA01F.;
   format  BSSREA02 BSSREA02F.;
   format  BSSREA03 BSSREA03F.;
   format  BSSREA04 BSSREA04F.;
   format  BSSREA05 BSSREA05F.;
   format  BSMIBM01 BSMIBM01F.;
   format  BSMIBM02 BSMIBM02F.;
   format  BSMIBM03 BSMIBM03F.;
   format  BSMIBM04 BSMIBM04F.;
   format  BSMIBM05 BSMIBM05F.;
   format  BSSIBM01 BSSIBM01F.;
   format  BSSIBM02 BSSIBM02F.;
   format  BSSIBM03 BSSIBM03F.;
   format  BSSIBM04 BSSIBM04F.;
   format  BSSIBM05 BSSIBM05F.;
   format   BSBGHER BSBGHER.;
   format   BSDGHER BSDGHER.;
   format   BSBGSSB BSBGSSB.;
   format   BSDGSSB BSDGSSB.;
   format    BSBGSB BSBGSB.;
   format    BSDGSB BSDGSB.;
   format   BSBGSLM BSBGSLM.;
   format   BSDGSLM BSDGSLM.;
   format   BSBGEML BSBGEML.;
   format   BSDGEML BSDGEML.;
   format   BSBGSCM BSBGSCM.;
   format   BSDGSCM BSDGSCM.;
   format   BSBGSVM BSBGSVM.;
   format   BSDGSVM BSDGSVM.;
   format   BSBGSLS BSBGSLS.;
   format   BSDGSLS BSDGSLS.;
   format   BSBGESL BSBGESL.;
   format   BSDGESL BSDGESL.;
   format   BSBGSCS BSBGSCS.;
   format   BSDGSCS BSDGSCS.;
   format   BSBGSVS BSBGSVS.;
   format   BSDGSVS BSDGSVS.;
   format   BSBGSLB BSBGSLB.;
   format   BSDGSLB BSDGSLB.;
   format   BSBGEBL BSBGEBL.;
   format   BSDGEBL BSDGEBL.;
   format   BSBGSCB BSBGSCB.;
   format   BSDGSCB BSDGSCB.;
   format   BSBGSLE BSBGSLE.;
   format   BSDGSLE BSDGSLE.;
   format   BSBGEEL BSBGEEL.;
   format   BSDGEEL BSDGEEL.;
   format   BSBGSCE BSBGSCE.;
   format   BSDGSCE BSDGSCE.;
   format   BSBGSLC BSBGSLC.;
   format   BSDGSLC BSDGSLC.;
   format   BSBGECL BSBGECL.;
   format   BSDGECL BSDGECL.;
   format   BSBGSCC BSBGSCC.;
   format   BSDGSCC BSDGSCC.;
   format   BSBGSLP BSBGSLP.;
   format   BSDGSLP BSDGSLP.;
   format   BSBGEPL BSBGEPL.;
   format   BSDGEPL BSDGEPL.;
   format   BSBGSCP BSBGSCP.;
   format   BSDGSCP BSDGSCP.;
   format   BSDG06S BSDG06S.;
   format  BSDGEDUP BSDGEDUP.;
   format  BSDMLOWP BSDMLOWP.;
   format  BSDSLOWP BSDSLOWP.;
   format  BSDMWKHW BSDMWKHW.;
   format  BSDSWKHS BSDSWKHS.;
   format  BSDBWKHB BSDBWKHB.;
   format  BSDCWKHC BSDCWKHC.;
   format  BSDPWKHP BSDPWKHP.;
   format  BSDEWKHE BSDEWKHE.;
   format   VERSION VERSION.;
   format   BSNG07A BSNG07A.;
   format   BSNG07B BSNG07B.;
   format    BSNG08 BSNG08F.;
   format   BSXG28A BSXG28A.;
   format   BSXG28B BSXG28B.;
   format     STATE STATE.;
   format GEOLOCATION GEOLOCATION.;
   format     INDIG INDIG.;
quit;

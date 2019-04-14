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
   value MR42081F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      72 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42302A
      10 = 'PARTIALLY CORRECT RESPONSE'  
      11 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42302B
      10 = 'PARTIALLY CORRECT RESPONSE'  
      11 = 'PARTIALLY CORRECT RESPONSE'  
      12 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      21 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42302C
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42093F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42159F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42164F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      12 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42167F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62111A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62111B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62237F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62314F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62183F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62286F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52035F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52016F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52126F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52041F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52417F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52501F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62151F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62346F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62056F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62317F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62078F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62287F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62345A
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42019F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42023F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42197F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42066F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42248F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42229A
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42229B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42080A
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42080B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42264F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42224F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52217F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52021F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52095F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52094F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52121B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52042F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52047F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42194F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42114A
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42114B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42050F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42074A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42074B
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      12 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42074C
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR42151F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62139F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62142F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62027F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62244F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62300F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      11 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62254F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62132A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52174A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52174B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52110F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52105F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52036F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52502F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52117F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62150F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62002F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62241F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62105F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62288F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      11 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62173F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52364F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52215F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52087F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52048F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52039F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52421F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62152F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62215F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      11 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62143F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62030F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62301F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62344F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      12 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62296F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52058A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52058B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52229F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52146A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR52146B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62214F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62154F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62250A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62250B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62170F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62192F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MR62072F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042081F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      72 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042302A
      10 = 'PARTIALLY CORRECT RESPONSE'  
      11 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042302B
      10 = 'PARTIALLY CORRECT RESPONSE'  
      11 = 'PARTIALLY CORRECT RESPONSE'  
      12 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      21 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042302C
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042093F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042159F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042164F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      12 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042167F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062111A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062111B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062237F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062314F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062183F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062286F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052035F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052016F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052126F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052041F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052417F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052501F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062151F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062346F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062056F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062317F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062078F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062287F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062345A
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042019F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042023F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042197F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042066F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042248F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042229A
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042229B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042080A
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042080B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042264F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042224F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052217F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052021F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052095F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052094F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052121B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052042F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052047F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042194F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042114A
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042114B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042050F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042074A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042074B
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      12 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042074C
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042151F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062139F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062142F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062027F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062244F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062300F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      11 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062254F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062132A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052174A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052174B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052110F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052105F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052036F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052502F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052117F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062150F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062002F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062241F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062105F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062288F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      11 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062173F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052364F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052215F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052087F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052048F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052039F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052421F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062152F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062215F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      11 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062143F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062030F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062301F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062344F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      12 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062296F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052058A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052058B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052229F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052146A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052146B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062214F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062154F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062250A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062250B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062170F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062192F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062072F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42081F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42302A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42302B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42302C
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42093F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42159F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42164F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42167F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62111A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62111B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62237F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62314F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62183F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62286F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52035F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52016F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52126F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52041F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52417F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52501F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62151F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62346F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62056F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62317F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62078F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62287F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62345A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42019F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42023F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42197F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42066F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42248F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42229A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42229B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42080A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42080B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42264F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42224F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52217F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52021F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52095F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52094F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52121B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52042F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52047F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42194F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42114A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42114B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42050F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42074A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42074B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42074C
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI42151F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62139F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62142F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62027F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62244F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62300F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62254F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62132A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52174A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52174B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52110F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52105F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52036F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52502F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52117F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62150F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62002F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62241F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62105F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62288F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62173F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52364F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52215F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52087F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52048F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52039F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52421F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62152F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62215F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62143F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62030F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62301F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62344F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62296F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52058A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52058B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52229F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52146A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI52146B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62214F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62154F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62250A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62250B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62170F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62192F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value MI62072F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42005F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42300A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42300B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42300C
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42319F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      12 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42094F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42293A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42293B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42195F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42400F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62118F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62103B
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62051F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62046F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62149F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62234F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52092A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52092B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52092C
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52092D
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52263A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52263B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52265F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52233F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52289C
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62095F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62064F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62163F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62143F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62276F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62050F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62024B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42408F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42049A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42049B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42402F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42228A
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42228B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42228C
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42176F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42211F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      12 = 'CORRECT RESPONSE'  
      19 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42135F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52303B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52145F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52049F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52141F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52116F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52110F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42030F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42222A
      10 = 'CORRECT RESPONSE'  
      19 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42222B
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      19 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42088F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42104F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42064F
      10 = 'CORRECT RESPONSE'  
      19 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42273F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42301F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR42406F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      72 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62275F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62111F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62116A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62116B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62116C
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62162F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52272F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52085A
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52085B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52094F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52146F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52214F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52101F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62274F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62098A
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62098B
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62043F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62005F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62175F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52090B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52273F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52051F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52189F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52099F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52118F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62112F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62093F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62006F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62067F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62211A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62211B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62033F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52006F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52021F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52054F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52243A
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52243B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR52112B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62100F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62101F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62128F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62042F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62250F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62056F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SR62243F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042005F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042300A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042300B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042300C
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042319F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      12 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042094F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042293A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042293B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042195F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042400F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062118F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062103B
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062051F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062046F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062149F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062234F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052092A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052092B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052092C
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052092D
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052263A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052263B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052265F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052233F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052289C
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062095F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062064F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062163F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062143F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062276F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062050F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062024B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042408F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042049A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042049B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042402F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042228A
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042228B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042228C
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042176F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042211F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      12 = 'CORRECT RESPONSE'  
      19 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042135F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052303B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052145F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052049F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052141F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052116F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052110F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042030F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042222A
      10 = 'CORRECT RESPONSE'  
      19 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042222B
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      19 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042088F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042104F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042064F
      10 = 'CORRECT RESPONSE'  
      19 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042273F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042301F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042406F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      72 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062275F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062111F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062116A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062116B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062116C
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062162F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052272F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052085A
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052085B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052094F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052146F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052214F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052101F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062274F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062098A
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062098B
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062043F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062005F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062175F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052090B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052273F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052051F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052189F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052099F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052118F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062112F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062093F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062006F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062067F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062211A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062211B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062033F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052006F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052021F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052054F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052243A
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052243B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052112B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062100F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062101F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062128F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062042F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062250F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062056F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062243F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42005F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42300A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42300B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42300C
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42319F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42094F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42293A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42293B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42195F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42400F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62118F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62103B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62051F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62046F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62149F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62234F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52092A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52092B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52092C
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52092D
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52263A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52263B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52265F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52233F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52289C
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62095F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62064F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62163F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62143F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62276F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62050F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62024B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42408F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42049A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42049B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42402F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42228A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42228B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42228C
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42176F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42211F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42135F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52303B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52145F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52049F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52141F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52116F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52110F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42030F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42222A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42222B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42088F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42104F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42064F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42273F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42301F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI42406F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62275F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62111F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62116A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62116B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62116C
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62162F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52272F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52085A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52085B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52094F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52146F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52214F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52101F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62274F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62098A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62098B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62043F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62005F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62175F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52090B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52273F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52051F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52189F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52099F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52118F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62112F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62093F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62006F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62067F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62211A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62211B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62033F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52006F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52021F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52054F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52243A
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52243B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI52112B
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62100F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62101F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62128F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62042F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62250F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62056F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value SI62243F
      0 = 'Identical codes (both digits in the original and second scores)'  
      1 = 'Identical score levels, but different diagnostic codes (first digit of both scores are the same, second different)'  
      2 = 'Different score levels (first digit of both scores are different)'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value IDPOP
      1 = 'Pop 1'  
      2 = 'Pop 2'  
      3 = 'Pop 3'  
      9 = 'Omitted or invalid' ;
   value IDGRADER
      1 = 'Lower Grade'  
      2 = 'Upper Grade'  
      9 = 'Omitted or invalid' ;
   value VERSION
      99 = 'Omitted or invalid' ;

proc datasets library = library ;
modify BSRAUSM6;
   format   IDCNTRY IDCNTRY.;
   format    IDBOOK IDBOOK.;
   format  IDSCHOOL IDSCHOOL.;
   format   IDCLASS IDCLASS.;
   format    IDSTUD IDSTUD.;
   format   IDGRADE IDGRADE.;
   format    ITLANG ITLANG.;
   format   MR42081 MR42081F.;
   format  MR42302A MR42302A.;
   format  MR42302B MR42302B.;
   format  MR42302C MR42302C.;
   format   MR42093 MR42093F.;
   format   MR42159 MR42159F.;
   format   MR42164 MR42164F.;
   format   MR42167 MR42167F.;
   format  MR62111A MR62111A.;
   format  MR62111B MR62111B.;
   format   MR62237 MR62237F.;
   format   MR62314 MR62314F.;
   format   MR62183 MR62183F.;
   format   MR62286 MR62286F.;
   format   MR52035 MR52035F.;
   format   MR52016 MR52016F.;
   format   MR52126 MR52126F.;
   format   MR52041 MR52041F.;
   format   MR52417 MR52417F.;
   format   MR52501 MR52501F.;
   format   MR62151 MR62151F.;
   format   MR62346 MR62346F.;
   format   MR62056 MR62056F.;
   format   MR62317 MR62317F.;
   format   MR62078 MR62078F.;
   format   MR62287 MR62287F.;
   format  MR62345A MR62345A.;
   format   MR42019 MR42019F.;
   format   MR42023 MR42023F.;
   format   MR42197 MR42197F.;
   format   MR42066 MR42066F.;
   format   MR42248 MR42248F.;
   format  MR42229A MR42229A.;
   format  MR42229B MR42229B.;
   format  MR42080A MR42080A.;
   format  MR42080B MR42080B.;
   format   MR42264 MR42264F.;
   format   MR42224 MR42224F.;
   format   MR52217 MR52217F.;
   format   MR52021 MR52021F.;
   format   MR52095 MR52095F.;
   format   MR52094 MR52094F.;
   format  MR52121B MR52121B.;
   format   MR52042 MR52042F.;
   format   MR52047 MR52047F.;
   format   MR42194 MR42194F.;
   format  MR42114A MR42114A.;
   format  MR42114B MR42114B.;
   format   MR42050 MR42050F.;
   format  MR42074A MR42074A.;
   format  MR42074B MR42074B.;
   format  MR42074C MR42074C.;
   format   MR42151 MR42151F.;
   format   MR62139 MR62139F.;
   format   MR62142 MR62142F.;
   format   MR62027 MR62027F.;
   format   MR62244 MR62244F.;
   format   MR62300 MR62300F.;
   format   MR62254 MR62254F.;
   format  MR62132A MR62132A.;
   format  MR52174A MR52174A.;
   format  MR52174B MR52174B.;
   format   MR52110 MR52110F.;
   format   MR52105 MR52105F.;
   format   MR52036 MR52036F.;
   format   MR52502 MR52502F.;
   format   MR52117 MR52117F.;
   format   MR62150 MR62150F.;
   format   MR62002 MR62002F.;
   format   MR62241 MR62241F.;
   format   MR62105 MR62105F.;
   format   MR62288 MR62288F.;
   format   MR62173 MR62173F.;
   format   MR52364 MR52364F.;
   format   MR52215 MR52215F.;
   format   MR52087 MR52087F.;
   format   MR52048 MR52048F.;
   format   MR52039 MR52039F.;
   format   MR52421 MR52421F.;
   format   MR62152 MR62152F.;
   format   MR62215 MR62215F.;
   format   MR62143 MR62143F.;
   format   MR62030 MR62030F.;
   format   MR62301 MR62301F.;
   format   MR62344 MR62344F.;
   format   MR62296 MR62296F.;
   format  MR52058A MR52058A.;
   format  MR52058B MR52058B.;
   format   MR52229 MR52229F.;
   format  MR52146A MR52146A.;
   format  MR52146B MR52146B.;
   format   MR62214 MR62214F.;
   format   MR62154 MR62154F.;
   format  MR62250A MR62250A.;
   format  MR62250B MR62250B.;
   format   MR62170 MR62170F.;
   format   MR62192 MR62192F.;
   format   MR62072 MR62072F.;
   format   M042081 M042081F.;
   format  M042302A M042302A.;
   format  M042302B M042302B.;
   format  M042302C M042302C.;
   format   M042093 M042093F.;
   format   M042159 M042159F.;
   format   M042164 M042164F.;
   format   M042167 M042167F.;
   format  M062111A M062111A.;
   format  M062111B M062111B.;
   format   M062237 M062237F.;
   format   M062314 M062314F.;
   format   M062183 M062183F.;
   format   M062286 M062286F.;
   format   M052035 M052035F.;
   format   M052016 M052016F.;
   format   M052126 M052126F.;
   format   M052041 M052041F.;
   format   M052417 M052417F.;
   format   M052501 M052501F.;
   format   M062151 M062151F.;
   format   M062346 M062346F.;
   format   M062056 M062056F.;
   format   M062317 M062317F.;
   format   M062078 M062078F.;
   format   M062287 M062287F.;
   format  M062345A M062345A.;
   format   M042019 M042019F.;
   format   M042023 M042023F.;
   format   M042197 M042197F.;
   format   M042066 M042066F.;
   format   M042248 M042248F.;
   format  M042229A M042229A.;
   format  M042229B M042229B.;
   format  M042080A M042080A.;
   format  M042080B M042080B.;
   format   M042264 M042264F.;
   format   M042224 M042224F.;
   format   M052217 M052217F.;
   format   M052021 M052021F.;
   format   M052095 M052095F.;
   format   M052094 M052094F.;
   format  M052121B M052121B.;
   format   M052042 M052042F.;
   format   M052047 M052047F.;
   format   M042194 M042194F.;
   format  M042114A M042114A.;
   format  M042114B M042114B.;
   format   M042050 M042050F.;
   format  M042074A M042074A.;
   format  M042074B M042074B.;
   format  M042074C M042074C.;
   format   M042151 M042151F.;
   format   M062139 M062139F.;
   format   M062142 M062142F.;
   format   M062027 M062027F.;
   format   M062244 M062244F.;
   format   M062300 M062300F.;
   format   M062254 M062254F.;
   format  M062132A M062132A.;
   format  M052174A M052174A.;
   format  M052174B M052174B.;
   format   M052110 M052110F.;
   format   M052105 M052105F.;
   format   M052036 M052036F.;
   format   M052502 M052502F.;
   format   M052117 M052117F.;
   format   M062150 M062150F.;
   format   M062002 M062002F.;
   format   M062241 M062241F.;
   format   M062105 M062105F.;
   format   M062288 M062288F.;
   format   M062173 M062173F.;
   format   M052364 M052364F.;
   format   M052215 M052215F.;
   format   M052087 M052087F.;
   format   M052048 M052048F.;
   format   M052039 M052039F.;
   format   M052421 M052421F.;
   format   M062152 M062152F.;
   format   M062215 M062215F.;
   format   M062143 M062143F.;
   format   M062030 M062030F.;
   format   M062301 M062301F.;
   format   M062344 M062344F.;
   format   M062296 M062296F.;
   format  M052058A M052058A.;
   format  M052058B M052058B.;
   format   M052229 M052229F.;
   format  M052146A M052146A.;
   format  M052146B M052146B.;
   format   M062214 M062214F.;
   format   M062154 M062154F.;
   format  M062250A M062250A.;
   format  M062250B M062250B.;
   format   M062170 M062170F.;
   format   M062192 M062192F.;
   format   M062072 M062072F.;
   format   MI42081 MI42081F.;
   format  MI42302A MI42302A.;
   format  MI42302B MI42302B.;
   format  MI42302C MI42302C.;
   format   MI42093 MI42093F.;
   format   MI42159 MI42159F.;
   format   MI42164 MI42164F.;
   format   MI42167 MI42167F.;
   format  MI62111A MI62111A.;
   format  MI62111B MI62111B.;
   format   MI62237 MI62237F.;
   format   MI62314 MI62314F.;
   format   MI62183 MI62183F.;
   format   MI62286 MI62286F.;
   format   MI52035 MI52035F.;
   format   MI52016 MI52016F.;
   format   MI52126 MI52126F.;
   format   MI52041 MI52041F.;
   format   MI52417 MI52417F.;
   format   MI52501 MI52501F.;
   format   MI62151 MI62151F.;
   format   MI62346 MI62346F.;
   format   MI62056 MI62056F.;
   format   MI62317 MI62317F.;
   format   MI62078 MI62078F.;
   format   MI62287 MI62287F.;
   format  MI62345A MI62345A.;
   format   MI42019 MI42019F.;
   format   MI42023 MI42023F.;
   format   MI42197 MI42197F.;
   format   MI42066 MI42066F.;
   format   MI42248 MI42248F.;
   format  MI42229A MI42229A.;
   format  MI42229B MI42229B.;
   format  MI42080A MI42080A.;
   format  MI42080B MI42080B.;
   format   MI42264 MI42264F.;
   format   MI42224 MI42224F.;
   format   MI52217 MI52217F.;
   format   MI52021 MI52021F.;
   format   MI52095 MI52095F.;
   format   MI52094 MI52094F.;
   format  MI52121B MI52121B.;
   format   MI52042 MI52042F.;
   format   MI52047 MI52047F.;
   format   MI42194 MI42194F.;
   format  MI42114A MI42114A.;
   format  MI42114B MI42114B.;
   format   MI42050 MI42050F.;
   format  MI42074A MI42074A.;
   format  MI42074B MI42074B.;
   format  MI42074C MI42074C.;
   format   MI42151 MI42151F.;
   format   MI62139 MI62139F.;
   format   MI62142 MI62142F.;
   format   MI62027 MI62027F.;
   format   MI62244 MI62244F.;
   format   MI62300 MI62300F.;
   format   MI62254 MI62254F.;
   format  MI62132A MI62132A.;
   format  MI52174A MI52174A.;
   format  MI52174B MI52174B.;
   format   MI52110 MI52110F.;
   format   MI52105 MI52105F.;
   format   MI52036 MI52036F.;
   format   MI52502 MI52502F.;
   format   MI52117 MI52117F.;
   format   MI62150 MI62150F.;
   format   MI62002 MI62002F.;
   format   MI62241 MI62241F.;
   format   MI62105 MI62105F.;
   format   MI62288 MI62288F.;
   format   MI62173 MI62173F.;
   format   MI52364 MI52364F.;
   format   MI52215 MI52215F.;
   format   MI52087 MI52087F.;
   format   MI52048 MI52048F.;
   format   MI52039 MI52039F.;
   format   MI52421 MI52421F.;
   format   MI62152 MI62152F.;
   format   MI62215 MI62215F.;
   format   MI62143 MI62143F.;
   format   MI62030 MI62030F.;
   format   MI62301 MI62301F.;
   format   MI62344 MI62344F.;
   format   MI62296 MI62296F.;
   format  MI52058A MI52058A.;
   format  MI52058B MI52058B.;
   format   MI52229 MI52229F.;
   format  MI52146A MI52146A.;
   format  MI52146B MI52146B.;
   format   MI62214 MI62214F.;
   format   MI62154 MI62154F.;
   format  MI62250A MI62250A.;
   format  MI62250B MI62250B.;
   format   MI62170 MI62170F.;
   format   MI62192 MI62192F.;
   format   MI62072 MI62072F.;
   format   SR42005 SR42005F.;
   format  SR42300A SR42300A.;
   format  SR42300B SR42300B.;
   format  SR42300C SR42300C.;
   format   SR42319 SR42319F.;
   format   SR42094 SR42094F.;
   format  SR42293A SR42293A.;
   format  SR42293B SR42293B.;
   format   SR42195 SR42195F.;
   format   SR42400 SR42400F.;
   format   SR62118 SR62118F.;
   format  SR62103B SR62103B.;
   format   SR62051 SR62051F.;
   format   SR62046 SR62046F.;
   format   SR62149 SR62149F.;
   format   SR62234 SR62234F.;
   format  SR52092A SR52092A.;
   format  SR52092B SR52092B.;
   format  SR52092C SR52092C.;
   format  SR52092D SR52092D.;
   format  SR52263A SR52263A.;
   format  SR52263B SR52263B.;
   format   SR52265 SR52265F.;
   format   SR52233 SR52233F.;
   format  SR52289C SR52289C.;
   format   SR62095 SR62095F.;
   format   SR62064 SR62064F.;
   format   SR62163 SR62163F.;
   format   SR62143 SR62143F.;
   format   SR62276 SR62276F.;
   format   SR62050 SR62050F.;
   format  SR62024B SR62024B.;
   format   SR42408 SR42408F.;
   format  SR42049A SR42049A.;
   format  SR42049B SR42049B.;
   format   SR42402 SR42402F.;
   format  SR42228A SR42228A.;
   format  SR42228B SR42228B.;
   format  SR42228C SR42228C.;
   format   SR42176 SR42176F.;
   format   SR42211 SR42211F.;
   format   SR42135 SR42135F.;
   format  SR52303B SR52303B.;
   format   SR52145 SR52145F.;
   format   SR52049 SR52049F.;
   format   SR52141 SR52141F.;
   format   SR52116 SR52116F.;
   format   SR52110 SR52110F.;
   format   SR42030 SR42030F.;
   format  SR42222A SR42222A.;
   format  SR42222B SR42222B.;
   format   SR42088 SR42088F.;
   format   SR42104 SR42104F.;
   format   SR42064 SR42064F.;
   format   SR42273 SR42273F.;
   format   SR42301 SR42301F.;
   format   SR42406 SR42406F.;
   format   SR62275 SR62275F.;
   format   SR62111 SR62111F.;
   format  SR62116A SR62116A.;
   format  SR62116B SR62116B.;
   format  SR62116C SR62116C.;
   format   SR62162 SR62162F.;
   format   SR52272 SR52272F.;
   format  SR52085A SR52085A.;
   format  SR52085B SR52085B.;
   format   SR52094 SR52094F.;
   format   SR52146 SR52146F.;
   format   SR52214 SR52214F.;
   format   SR52101 SR52101F.;
   format   SR62274 SR62274F.;
   format  SR62098A SR62098A.;
   format  SR62098B SR62098B.;
   format   SR62043 SR62043F.;
   format   SR62005 SR62005F.;
   format   SR62175 SR62175F.;
   format  SR52090B SR52090B.;
   format   SR52273 SR52273F.;
   format   SR52051 SR52051F.;
   format   SR52189 SR52189F.;
   format   SR52099 SR52099F.;
   format   SR52118 SR52118F.;
   format   SR62112 SR62112F.;
   format   SR62093 SR62093F.;
   format   SR62006 SR62006F.;
   format   SR62067 SR62067F.;
   format  SR62211A SR62211A.;
   format  SR62211B SR62211B.;
   format   SR62033 SR62033F.;
   format   SR52006 SR52006F.;
   format   SR52021 SR52021F.;
   format   SR52054 SR52054F.;
   format  SR52243A SR52243A.;
   format  SR52243B SR52243B.;
   format  SR52112B SR52112B.;
   format   SR62100 SR62100F.;
   format   SR62101 SR62101F.;
   format   SR62128 SR62128F.;
   format   SR62042 SR62042F.;
   format   SR62250 SR62250F.;
   format   SR62056 SR62056F.;
   format   SR62243 SR62243F.;
   format   S042005 S042005F.;
   format  S042300A S042300A.;
   format  S042300B S042300B.;
   format  S042300C S042300C.;
   format   S042319 S042319F.;
   format   S042094 S042094F.;
   format  S042293A S042293A.;
   format  S042293B S042293B.;
   format   S042195 S042195F.;
   format   S042400 S042400F.;
   format   S062118 S062118F.;
   format  S062103B S062103B.;
   format   S062051 S062051F.;
   format   S062046 S062046F.;
   format   S062149 S062149F.;
   format   S062234 S062234F.;
   format  S052092A S052092A.;
   format  S052092B S052092B.;
   format  S052092C S052092C.;
   format  S052092D S052092D.;
   format  S052263A S052263A.;
   format  S052263B S052263B.;
   format   S052265 S052265F.;
   format   S052233 S052233F.;
   format  S052289C S052289C.;
   format   S062095 S062095F.;
   format   S062064 S062064F.;
   format   S062163 S062163F.;
   format   S062143 S062143F.;
   format   S062276 S062276F.;
   format   S062050 S062050F.;
   format  S062024B S062024B.;
   format   S042408 S042408F.;
   format  S042049A S042049A.;
   format  S042049B S042049B.;
   format   S042402 S042402F.;
   format  S042228A S042228A.;
   format  S042228B S042228B.;
   format  S042228C S042228C.;
   format   S042176 S042176F.;
   format   S042211 S042211F.;
   format   S042135 S042135F.;
   format  S052303B S052303B.;
   format   S052145 S052145F.;
   format   S052049 S052049F.;
   format   S052141 S052141F.;
   format   S052116 S052116F.;
   format   S052110 S052110F.;
   format   S042030 S042030F.;
   format  S042222A S042222A.;
   format  S042222B S042222B.;
   format   S042088 S042088F.;
   format   S042104 S042104F.;
   format   S042064 S042064F.;
   format   S042273 S042273F.;
   format   S042301 S042301F.;
   format   S042406 S042406F.;
   format   S062275 S062275F.;
   format   S062111 S062111F.;
   format  S062116A S062116A.;
   format  S062116B S062116B.;
   format  S062116C S062116C.;
   format   S062162 S062162F.;
   format   S052272 S052272F.;
   format  S052085A S052085A.;
   format  S052085B S052085B.;
   format   S052094 S052094F.;
   format   S052146 S052146F.;
   format   S052214 S052214F.;
   format   S052101 S052101F.;
   format   S062274 S062274F.;
   format  S062098A S062098A.;
   format  S062098B S062098B.;
   format   S062043 S062043F.;
   format   S062005 S062005F.;
   format   S062175 S062175F.;
   format  S052090B S052090B.;
   format   S052273 S052273F.;
   format   S052051 S052051F.;
   format   S052189 S052189F.;
   format   S052099 S052099F.;
   format   S052118 S052118F.;
   format   S062112 S062112F.;
   format   S062093 S062093F.;
   format   S062006 S062006F.;
   format   S062067 S062067F.;
   format  S062211A S062211A.;
   format  S062211B S062211B.;
   format   S062033 S062033F.;
   format   S052006 S052006F.;
   format   S052021 S052021F.;
   format   S052054 S052054F.;
   format  S052243A S052243A.;
   format  S052243B S052243B.;
   format  S052112B S052112B.;
   format   S062100 S062100F.;
   format   S062101 S062101F.;
   format   S062128 S062128F.;
   format   S062042 S062042F.;
   format   S062250 S062250F.;
   format   S062056 S062056F.;
   format   S062243 S062243F.;
   format   SI42005 SI42005F.;
   format  SI42300A SI42300A.;
   format  SI42300B SI42300B.;
   format  SI42300C SI42300C.;
   format   SI42319 SI42319F.;
   format   SI42094 SI42094F.;
   format  SI42293A SI42293A.;
   format  SI42293B SI42293B.;
   format   SI42195 SI42195F.;
   format   SI42400 SI42400F.;
   format   SI62118 SI62118F.;
   format  SI62103B SI62103B.;
   format   SI62051 SI62051F.;
   format   SI62046 SI62046F.;
   format   SI62149 SI62149F.;
   format   SI62234 SI62234F.;
   format  SI52092A SI52092A.;
   format  SI52092B SI52092B.;
   format  SI52092C SI52092C.;
   format  SI52092D SI52092D.;
   format  SI52263A SI52263A.;
   format  SI52263B SI52263B.;
   format   SI52265 SI52265F.;
   format   SI52233 SI52233F.;
   format  SI52289C SI52289C.;
   format   SI62095 SI62095F.;
   format   SI62064 SI62064F.;
   format   SI62163 SI62163F.;
   format   SI62143 SI62143F.;
   format   SI62276 SI62276F.;
   format   SI62050 SI62050F.;
   format  SI62024B SI62024B.;
   format   SI42408 SI42408F.;
   format  SI42049A SI42049A.;
   format  SI42049B SI42049B.;
   format   SI42402 SI42402F.;
   format  SI42228A SI42228A.;
   format  SI42228B SI42228B.;
   format  SI42228C SI42228C.;
   format   SI42176 SI42176F.;
   format   SI42211 SI42211F.;
   format   SI42135 SI42135F.;
   format  SI52303B SI52303B.;
   format   SI52145 SI52145F.;
   format   SI52049 SI52049F.;
   format   SI52141 SI52141F.;
   format   SI52116 SI52116F.;
   format   SI52110 SI52110F.;
   format   SI42030 SI42030F.;
   format  SI42222A SI42222A.;
   format  SI42222B SI42222B.;
   format   SI42088 SI42088F.;
   format   SI42104 SI42104F.;
   format   SI42064 SI42064F.;
   format   SI42273 SI42273F.;
   format   SI42301 SI42301F.;
   format   SI42406 SI42406F.;
   format   SI62275 SI62275F.;
   format   SI62111 SI62111F.;
   format  SI62116A SI62116A.;
   format  SI62116B SI62116B.;
   format  SI62116C SI62116C.;
   format   SI62162 SI62162F.;
   format   SI52272 SI52272F.;
   format  SI52085A SI52085A.;
   format  SI52085B SI52085B.;
   format   SI52094 SI52094F.;
   format   SI52146 SI52146F.;
   format   SI52214 SI52214F.;
   format   SI52101 SI52101F.;
   format   SI62274 SI62274F.;
   format  SI62098A SI62098A.;
   format  SI62098B SI62098B.;
   format   SI62043 SI62043F.;
   format   SI62005 SI62005F.;
   format   SI62175 SI62175F.;
   format  SI52090B SI52090B.;
   format   SI52273 SI52273F.;
   format   SI52051 SI52051F.;
   format   SI52189 SI52189F.;
   format   SI52099 SI52099F.;
   format   SI52118 SI52118F.;
   format   SI62112 SI62112F.;
   format   SI62093 SI62093F.;
   format   SI62006 SI62006F.;
   format   SI62067 SI62067F.;
   format  SI62211A SI62211A.;
   format  SI62211B SI62211B.;
   format   SI62033 SI62033F.;
   format   SI52006 SI52006F.;
   format   SI52021 SI52021F.;
   format   SI52054 SI52054F.;
   format  SI52243A SI52243A.;
   format  SI52243B SI52243B.;
   format  SI52112B SI52112B.;
   format   SI62100 SI62100F.;
   format   SI62101 SI62101F.;
   format   SI62128 SI62128F.;
   format   SI62042 SI62042F.;
   format   SI62250 SI62250F.;
   format   SI62056 SI62056F.;
   format   SI62243 SI62243F.;
   format     IDPOP IDPOP.;
   format  IDGRADER IDGRADER.;
   format   VERSION VERSION.;
quit;

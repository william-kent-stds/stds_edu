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
   value M042182F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042081F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      72 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042049F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042052F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042076F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M042100F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042202F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042240F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042093F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042271F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042268F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M062208A
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062208B
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062208C
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062208D
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062208F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062153F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M062074F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062183F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062202F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062246F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062286F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062325F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062106F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062124F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052209F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052142F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052006F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M052064F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052126F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052103F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052066F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052041F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052057F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M052410F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052170F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062329F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M062212F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M062350F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062078F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062284F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062245F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M062345BA
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062345BB
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062345BC
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062345BD
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062345B
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062115F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042183F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042060F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M042234F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042066F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042243F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M042229Z
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
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
   value M042120F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042203F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042264F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M042255F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042224F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052017F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M052131F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052090F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052121A
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M052044F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052422A
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052422B
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052505F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042015F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042196F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M042112F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042109F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M042132F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042257F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042158F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042252F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M042261F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062005F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062139F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062164F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062142F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062084F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062351F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062223F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062027F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062174F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062244F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062261F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M062132B
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052413F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052134F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052078F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052034F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M052130F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052073F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M052407F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M052426F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062150F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062335F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062219F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062002F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062149F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062241F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062342F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062105F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062040F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M062133F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062123A
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062123B
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052079F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052204F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M052147F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052067F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052068F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M052208F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052419A
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052419B
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052115F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052421F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062271F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M062230F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062095F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062076F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062030F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062171F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062301F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062194F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062344F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      12 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062320F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062296F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052024F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M052125F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052229F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M052063F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052072F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M052092F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052046F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052083F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052082F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052161F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052418A
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M052418B
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062001F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062214F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062146F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062154F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062067F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062341F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062242F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value M062048A
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062048B
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062048C
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value M062048F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value M062120F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042258F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042005F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042016F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S042068F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042216F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042249F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S042401F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042164F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062189A
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062189B
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062189C
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062189D
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062189E
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062189F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062094F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062118F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062103A
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062103B
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062010A
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062010B
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062010C
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062010D
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062010F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062253F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062051F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062044F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S062268F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062170F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062234F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062271F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052261F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S052092Z
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
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
   value S052280F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052256F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052043A
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052043B
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052043C
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052043D
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052043Z
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052194F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052179F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052233F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052159F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052289A
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052289B
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052289C
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062099F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062095F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062106F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062064F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062132F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062163F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062153F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062018A
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062018B
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062018C
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062018D
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062018E
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062018F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
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
   value S062205F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062190F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062024A
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062024B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042053F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042408F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042015F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042309F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S042182F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S042126F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042210F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S042257F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052003F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052071F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052246F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052276F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052303A
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052303B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052125F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S052063F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052192F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052232F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052141F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052096F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S042042F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042030F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042003F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042110F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S042222C
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042065F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042280F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042088F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S042218F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S042312F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042217F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S042406F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      72 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062055F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062007F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062275F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062225F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S062262F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062035F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062144F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062162F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062233F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062272F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062171F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052076F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S052248F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052146F
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052282F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052299F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052144F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052214F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052221F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052101F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052113F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052107F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062090F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062274F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062284F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S062032F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062043F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062158F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062159F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062005F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062075F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062004F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062175F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062173AA
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062173AB
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062173AC
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062173AD
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062173A
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062173B
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052090A
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052090B
      10 = 'CORRECT RESPONSE'  
      70 = 'INCORRECT RESPONSE'  
      71 = 'INCORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052262F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052267F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052273F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052015A
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052015B
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052015C
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052015D
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052015E
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052015F
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052015Z
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052051F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052026F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052130F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052028F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052189F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052217F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052038F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S062279F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062112F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062119F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062093F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062089F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S062247F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062177F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062186F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S062036F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062033F
      10 = 'CORRECT RESPONSE'  
      11 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062037F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062242A
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062242B
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062242C
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062242D
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062242E
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062242F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052006F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052069F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052012F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052021F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052095A
      1 = 'A*(ONLY VALID ENTRY CODE)'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052095B
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052095C
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052095D
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052095Z
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052134F
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052054F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052150F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
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
   value S052243C
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052206F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052112A
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S052112B
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S052294F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062091A
      1 = 'A'  
      2 = 'B*'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062091B
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062100F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062097F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062101F
      10 = 'PARTIALLY CORRECT RESPONSE'  
      20 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062266F
      1 = 'A'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062128F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062047A
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062047B
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062047C
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062047F
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
   value S062246F
      1 = 'A'  
      2 = 'B'  
      3 = 'C*'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062056F
      10 = 'CORRECT RESPONSE'  
      79 = 'INCORRECT RESPONSE'  
      96 = 'Not reached'  
      99 = 'Omitted or invalid' ;
   value S062235F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062180F
      1 = 'A*'  
      2 = 'B'  
      3 = 'C'  
      4 = 'D'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062022A
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062022B
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062022C
      1 = 'A*'  
      2 = 'B'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062022D
      1 = 'A'  
      2 = 'B*'  
      6 = 'Not reached'  
      9 = 'Omitted or invalid' ;
   value S062022F
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
   value BNRGCAL1F
      1 = 'Yes'  
      2 = 'No'  
      9 = 'Omitted or invalid' ;
   value BNRGCAL2F
      1 = 'not at all'  
      2 = 'very little (for fewer than 5 questions)'  
      3 = 'somewhat (for between 5 and 10 questions)'  
      4 = 'quite a lot (for more than 10 questions)'  
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
   value ITSEX
      1 = 'Female'  
      2 = 'Male'  
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
   value ILRELIAB
      0 = 'Students Booklet not used for Reliability Scoring'  
      1 = 'Students Booklet was used for Reliability Scoring'  
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
   value VERSION
      99 = 'Omitted or invalid' ;

proc datasets library = library ;
modify BSAAUSM6;
   format   IDCNTRY IDCNTRY.;
   format    IDBOOK IDBOOK.;
   format  IDSCHOOL IDSCHOOL.;
   format   IDCLASS IDCLASS.;
   format    IDSTUD IDSTUD.;
   format   M042182 M042182F.;
   format   M042081 M042081F.;
   format   M042049 M042049F.;
   format   M042052 M042052F.;
   format   M042076 M042076F.;
   format  M042302A M042302A.;
   format  M042302B M042302B.;
   format  M042302C M042302C.;
   format   M042100 M042100F.;
   format   M042202 M042202F.;
   format   M042240 M042240F.;
   format   M042093 M042093F.;
   format   M042271 M042271F.;
   format   M042268 M042268F.;
   format   M042159 M042159F.;
   format   M042164 M042164F.;
   format   M042167 M042167F.;
   format  M062208A M062208A.;
   format  M062208B M062208B.;
   format  M062208C M062208C.;
   format  M062208D M062208D.;
   format   M062208 M062208F.;
   format   M062153 M062153F.;
   format  M062111A M062111A.;
   format  M062111B M062111B.;
   format   M062237 M062237F.;
   format   M062314 M062314F.;
   format   M062074 M062074F.;
   format   M062183 M062183F.;
   format   M062202 M062202F.;
   format   M062246 M062246F.;
   format   M062286 M062286F.;
   format   M062325 M062325F.;
   format   M062106 M062106F.;
   format   M062124 M062124F.;
   format   M052209 M052209F.;
   format   M052142 M052142F.;
   format   M052006 M052006F.;
   format   M052035 M052035F.;
   format   M052016 M052016F.;
   format   M052064 M052064F.;
   format   M052126 M052126F.;
   format   M052103 M052103F.;
   format   M052066 M052066F.;
   format   M052041 M052041F.;
   format   M052057 M052057F.;
   format   M052417 M052417F.;
   format   M052501 M052501F.;
   format   M052410 M052410F.;
   format   M052170 M052170F.;
   format   M062329 M062329F.;
   format   M062151 M062151F.;
   format   M062346 M062346F.;
   format   M062212 M062212F.;
   format   M062056 M062056F.;
   format   M062317 M062317F.;
   format   M062350 M062350F.;
   format   M062078 M062078F.;
   format   M062284 M062284F.;
   format   M062245 M062245F.;
   format   M062287 M062287F.;
   format  M062345A M062345A.;
   format M062345BA M062345BA.;
   format M062345BB M062345BB.;
   format M062345BC M062345BC.;
   format M062345BD M062345BD.;
   format  M062345B M062345B.;
   format   M062115 M062115F.;
   format   M042183 M042183F.;
   format   M042060 M042060F.;
   format   M042019 M042019F.;
   format   M042023 M042023F.;
   format   M042197 M042197F.;
   format   M042234 M042234F.;
   format   M042066 M042066F.;
   format   M042243 M042243F.;
   format   M042248 M042248F.;
   format  M042229A M042229A.;
   format  M042229B M042229B.;
   format  M042229Z M042229Z.;
   format  M042080A M042080A.;
   format  M042080B M042080B.;
   format   M042120 M042120F.;
   format   M042203 M042203F.;
   format   M042264 M042264F.;
   format   M042255 M042255F.;
   format   M042224 M042224F.;
   format   M052017 M052017F.;
   format   M052217 M052217F.;
   format   M052021 M052021F.;
   format   M052095 M052095F.;
   format   M052094 M052094F.;
   format   M052131 M052131F.;
   format   M052090 M052090F.;
   format  M052121A M052121A.;
   format  M052121B M052121B.;
   format   M052042 M052042F.;
   format   M052047 M052047F.;
   format   M052044 M052044F.;
   format  M052422A M052422A.;
   format  M052422B M052422B.;
   format   M052505 M052505F.;
   format   M042015 M042015F.;
   format   M042196 M042196F.;
   format   M042194 M042194F.;
   format  M042114A M042114A.;
   format  M042114B M042114B.;
   format   M042112 M042112F.;
   format   M042109 M042109F.;
   format   M042050 M042050F.;
   format  M042074A M042074A.;
   format  M042074B M042074B.;
   format  M042074C M042074C.;
   format   M042151 M042151F.;
   format   M042132 M042132F.;
   format   M042257 M042257F.;
   format   M042158 M042158F.;
   format   M042252 M042252F.;
   format   M042261 M042261F.;
   format   M062005 M062005F.;
   format   M062139 M062139F.;
   format   M062164 M062164F.;
   format   M062142 M062142F.;
   format   M062084 M062084F.;
   format   M062351 M062351F.;
   format   M062223 M062223F.;
   format   M062027 M062027F.;
   format   M062174 M062174F.;
   format   M062244 M062244F.;
   format   M062261 M062261F.;
   format   M062300 M062300F.;
   format   M062254 M062254F.;
   format  M062132A M062132A.;
   format  M062132B M062132B.;
   format   M052413 M052413F.;
   format   M052134 M052134F.;
   format   M052078 M052078F.;
   format   M052034 M052034F.;
   format  M052174A M052174A.;
   format  M052174B M052174B.;
   format   M052130 M052130F.;
   format   M052073 M052073F.;
   format   M052110 M052110F.;
   format   M052105 M052105F.;
   format   M052407 M052407F.;
   format   M052036 M052036F.;
   format   M052502 M052502F.;
   format   M052117 M052117F.;
   format   M052426 M052426F.;
   format   M062150 M062150F.;
   format   M062335 M062335F.;
   format   M062219 M062219F.;
   format   M062002 M062002F.;
   format   M062149 M062149F.;
   format   M062241 M062241F.;
   format   M062342 M062342F.;
   format   M062105 M062105F.;
   format   M062040 M062040F.;
   format   M062288 M062288F.;
   format   M062173 M062173F.;
   format   M062133 M062133F.;
   format  M062123A M062123A.;
   format  M062123B M062123B.;
   format   M052079 M052079F.;
   format   M052204 M052204F.;
   format   M052364 M052364F.;
   format   M052215 M052215F.;
   format   M052147 M052147F.;
   format   M052067 M052067F.;
   format   M052068 M052068F.;
   format   M052087 M052087F.;
   format   M052048 M052048F.;
   format   M052039 M052039F.;
   format   M052208 M052208F.;
   format  M052419A M052419A.;
   format  M052419B M052419B.;
   format   M052115 M052115F.;
   format   M052421 M052421F.;
   format   M062271 M062271F.;
   format   M062152 M062152F.;
   format   M062215 M062215F.;
   format   M062143 M062143F.;
   format   M062230 M062230F.;
   format   M062095 M062095F.;
   format   M062076 M062076F.;
   format   M062030 M062030F.;
   format   M062171 M062171F.;
   format   M062301 M062301F.;
   format   M062194 M062194F.;
   format   M062344 M062344F.;
   format   M062320 M062320F.;
   format   M062296 M062296F.;
   format   M052024 M052024F.;
   format  M052058A M052058A.;
   format  M052058B M052058B.;
   format   M052125 M052125F.;
   format   M052229 M052229F.;
   format   M052063 M052063F.;
   format   M052072 M052072F.;
   format  M052146A M052146A.;
   format  M052146B M052146B.;
   format   M052092 M052092F.;
   format   M052046 M052046F.;
   format   M052083 M052083F.;
   format   M052082 M052082F.;
   format   M052161 M052161F.;
   format  M052418A M052418A.;
   format  M052418B M052418B.;
   format   M062001 M062001F.;
   format   M062214 M062214F.;
   format   M062146 M062146F.;
   format   M062154 M062154F.;
   format   M062067 M062067F.;
   format   M062341 M062341F.;
   format   M062242 M062242F.;
   format  M062250A M062250A.;
   format  M062250B M062250B.;
   format   M062170 M062170F.;
   format   M062192 M062192F.;
   format   M062072 M062072F.;
   format  M062048A M062048A.;
   format  M062048B M062048B.;
   format  M062048C M062048C.;
   format   M062048 M062048F.;
   format   M062120 M062120F.;
   format   S042258 S042258F.;
   format   S042005 S042005F.;
   format   S042016 S042016F.;
   format  S042300A S042300A.;
   format  S042300B S042300B.;
   format  S042300C S042300C.;
   format   S042319 S042319F.;
   format   S042068 S042068F.;
   format   S042216 S042216F.;
   format   S042249 S042249F.;
   format   S042094 S042094F.;
   format  S042293A S042293A.;
   format  S042293B S042293B.;
   format   S042195 S042195F.;
   format   S042400 S042400F.;
   format   S042401 S042401F.;
   format   S042164 S042164F.;
   format  S062189A S062189A.;
   format  S062189B S062189B.;
   format  S062189C S062189C.;
   format  S062189D S062189D.;
   format  S062189E S062189E.;
   format   S062189 S062189F.;
   format   S062094 S062094F.;
   format   S062118 S062118F.;
   format  S062103A S062103A.;
   format  S062103B S062103B.;
   format  S062010A S062010A.;
   format  S062010B S062010B.;
   format  S062010C S062010C.;
   format  S062010D S062010D.;
   format   S062010 S062010F.;
   format   S062253 S062253F.;
   format   S062051 S062051F.;
   format   S062044 S062044F.;
   format   S062046 S062046F.;
   format   S062149 S062149F.;
   format   S062268 S062268F.;
   format   S062170 S062170F.;
   format   S062234 S062234F.;
   format   S062271 S062271F.;
   format   S052261 S052261F.;
   format  S052092A S052092A.;
   format  S052092B S052092B.;
   format  S052092C S052092C.;
   format  S052092D S052092D.;
   format  S052092Z S052092Z.;
   format  S052263A S052263A.;
   format  S052263B S052263B.;
   format   S052265 S052265F.;
   format   S052280 S052280F.;
   format   S052256 S052256F.;
   format  S052043A S052043A.;
   format  S052043B S052043B.;
   format  S052043C S052043C.;
   format  S052043D S052043D.;
   format  S052043Z S052043Z.;
   format   S052194 S052194F.;
   format   S052179 S052179F.;
   format   S052233 S052233F.;
   format   S052159 S052159F.;
   format  S052289A S052289A.;
   format  S052289B S052289B.;
   format  S052289C S052289C.;
   format   S062099 S062099F.;
   format   S062095 S062095F.;
   format   S062106 S062106F.;
   format   S062064 S062064F.;
   format   S062132 S062132F.;
   format   S062163 S062163F.;
   format   S062153 S062153F.;
   format  S062018A S062018A.;
   format  S062018B S062018B.;
   format  S062018C S062018C.;
   format  S062018D S062018D.;
   format  S062018E S062018E.;
   format   S062018 S062018F.;
   format   S062143 S062143F.;
   format   S062276 S062276F.;
   format   S062050 S062050F.;
   format   S062205 S062205F.;
   format   S062190 S062190F.;
   format  S062024A S062024A.;
   format  S062024B S062024B.;
   format   S042053 S042053F.;
   format   S042408 S042408F.;
   format   S042015 S042015F.;
   format   S042309 S042309F.;
   format  S042049A S042049A.;
   format  S042049B S042049B.;
   format   S042182 S042182F.;
   format   S042402 S042402F.;
   format  S042228A S042228A.;
   format  S042228B S042228B.;
   format  S042228C S042228C.;
   format   S042126 S042126F.;
   format   S042210 S042210F.;
   format   S042176 S042176F.;
   format   S042211 S042211F.;
   format   S042135 S042135F.;
   format   S042257 S042257F.;
   format   S052003 S052003F.;
   format   S052071 S052071F.;
   format   S052246 S052246F.;
   format   S052276 S052276F.;
   format  S052303A S052303A.;
   format  S052303B S052303B.;
   format   S052125 S052125F.;
   format   S052145 S052145F.;
   format   S052049 S052049F.;
   format   S052063 S052063F.;
   format   S052192 S052192F.;
   format   S052232 S052232F.;
   format   S052141 S052141F.;
   format   S052096 S052096F.;
   format   S052116 S052116F.;
   format   S052110 S052110F.;
   format   S042042 S042042F.;
   format   S042030 S042030F.;
   format   S042003 S042003F.;
   format   S042110 S042110F.;
   format  S042222A S042222A.;
   format  S042222B S042222B.;
   format  S042222C S042222C.;
   format   S042065 S042065F.;
   format   S042280 S042280F.;
   format   S042088 S042088F.;
   format   S042218 S042218F.;
   format   S042104 S042104F.;
   format   S042064 S042064F.;
   format   S042273 S042273F.;
   format   S042301 S042301F.;
   format   S042312 S042312F.;
   format   S042217 S042217F.;
   format   S042406 S042406F.;
   format   S062055 S062055F.;
   format   S062007 S062007F.;
   format   S062275 S062275F.;
   format   S062225 S062225F.;
   format   S062111 S062111F.;
   format  S062116A S062116A.;
   format  S062116B S062116B.;
   format  S062116C S062116C.;
   format   S062262 S062262F.;
   format   S062035 S062035F.;
   format   S062144 S062144F.;
   format   S062162 S062162F.;
   format   S062233 S062233F.;
   format   S062272 S062272F.;
   format   S062171 S062171F.;
   format   S052076 S052076F.;
   format   S052272 S052272F.;
   format  S052085A S052085A.;
   format  S052085B S052085B.;
   format   S052094 S052094F.;
   format   S052248 S052248F.;
   format   S052146 S052146F.;
   format   S052282 S052282F.;
   format   S052299 S052299F.;
   format   S052144 S052144F.;
   format   S052214 S052214F.;
   format   S052221 S052221F.;
   format   S052101 S052101F.;
   format   S052113 S052113F.;
   format   S052107 S052107F.;
   format   S062090 S062090F.;
   format   S062274 S062274F.;
   format   S062284 S062284F.;
   format  S062098A S062098A.;
   format  S062098B S062098B.;
   format   S062032 S062032F.;
   format   S062043 S062043F.;
   format   S062158 S062158F.;
   format   S062159 S062159F.;
   format   S062005 S062005F.;
   format   S062075 S062075F.;
   format   S062004 S062004F.;
   format   S062175 S062175F.;
   format S062173AA S062173AA.;
   format S062173AB S062173AB.;
   format S062173AC S062173AC.;
   format S062173AD S062173AD.;
   format  S062173A S062173A.;
   format  S062173B S062173B.;
   format  S052090A S052090A.;
   format  S052090B S052090B.;
   format   S052262 S052262F.;
   format   S052267 S052267F.;
   format   S052273 S052273F.;
   format  S052015A S052015A.;
   format  S052015B S052015B.;
   format  S052015C S052015C.;
   format  S052015D S052015D.;
   format  S052015E S052015E.;
   format  S052015F S052015F.;
   format  S052015Z S052015Z.;
   format   S052051 S052051F.;
   format   S052026 S052026F.;
   format   S052130 S052130F.;
   format   S052028 S052028F.;
   format   S052189 S052189F.;
   format   S052217 S052217F.;
   format   S052038 S052038F.;
   format   S052099 S052099F.;
   format   S052118 S052118F.;
   format   S062279 S062279F.;
   format   S062112 S062112F.;
   format   S062119 S062119F.;
   format   S062093 S062093F.;
   format   S062089 S062089F.;
   format   S062006 S062006F.;
   format   S062067 S062067F.;
   format   S062247 S062247F.;
   format   S062177 S062177F.;
   format   S062186 S062186F.;
   format  S062211A S062211A.;
   format  S062211B S062211B.;
   format   S062036 S062036F.;
   format   S062033 S062033F.;
   format   S062037 S062037F.;
   format  S062242A S062242A.;
   format  S062242B S062242B.;
   format  S062242C S062242C.;
   format  S062242D S062242D.;
   format  S062242E S062242E.;
   format   S062242 S062242F.;
   format   S052006 S052006F.;
   format   S052069 S052069F.;
   format   S052012 S052012F.;
   format   S052021 S052021F.;
   format  S052095A S052095A.;
   format  S052095B S052095B.;
   format  S052095C S052095C.;
   format  S052095D S052095D.;
   format  S052095Z S052095Z.;
   format   S052134 S052134F.;
   format   S052054 S052054F.;
   format   S052150 S052150F.;
   format  S052243A S052243A.;
   format  S052243B S052243B.;
   format  S052243C S052243C.;
   format   S052206 S052206F.;
   format  S052112A S052112A.;
   format  S052112B S052112B.;
   format   S052294 S052294F.;
   format  S062091A S062091A.;
   format  S062091B S062091B.;
   format   S062100 S062100F.;
   format   S062097 S062097F.;
   format   S062101 S062101F.;
   format   S062266 S062266F.;
   format   S062128 S062128F.;
   format  S062047A S062047A.;
   format  S062047B S062047B.;
   format  S062047C S062047C.;
   format   S062047 S062047F.;
   format   S062042 S062042F.;
   format   S062250 S062250F.;
   format   S062246 S062246F.;
   format   S062056 S062056F.;
   format   S062235 S062235F.;
   format   S062180 S062180F.;
   format  S062022A S062022A.;
   format  S062022B S062022B.;
   format  S062022C S062022C.;
   format  S062022D S062022D.;
   format   S062022 S062022F.;
   format   S062243 S062243F.;
   format  BNRGCAL1 BNRGCAL1F.;
   format  BNRGCAL2 BNRGCAL2F.;
   format     IDPOP IDPOP.;
   format   IDGRADE IDGRADE.;
   format  IDGRADER IDGRADER.;
   format     ITSEX ITSEX.;
   format    ITLANG ITLANG.;
   format  ILRELIAB ILRELIAB.;
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
   format   VERSION VERSION.;
quit;

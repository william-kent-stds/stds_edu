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
   value IDTEACH
      999999 = 'Omitted or invalid' ;
   value IDLINK
      99 = 'Omitted or invalid' ;
   value IDTEALIN
      99999999 = 'Omitted or invalid' ;
   value IDPOP
      1 = 'Pop 1'  
      2 = 'Pop 2'  
      3 = 'Pop 3'  
      9 = 'Omitted or invalid' ;
   value IDGRADER
      1 = 'Lower Grade'  
      2 = 'Upper Grade'  
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
   value IDSUBJ
      1 = 'Mathematics'  
      2 = 'Science'  
      9 = 'Omitted or invalid' ;
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
   value MATSUBJ
      9 = 'Omitted or invalid' ;
   value SCISUBJ
      9 = 'Omitted or invalid' ;
   value NMTEACH
      9 = 'Omitted or invalid' ;
   value NSTEACH
      9 = 'Omitted or invalid' ;
   value NTEACH
      9 = 'Omitted or invalid' ;
   value JKREP
      9 = 'Omitted or invalid' ;
   value JKZONE
      99 = 'Omitted or invalid' ;
   value MATWGT
      999999 = 'Omitted or invalid' ;
   value SCIWGT
      999999 = 'Omitted or invalid' ;
   value TCHWGT
      999999 = 'Omitted or invalid' ;
   value TOTWGT
      999999 = 'Omitted or invalid' ;
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
modify BSTAUSM6;
   format   IDCNTRY IDCNTRY.;
   format    IDBOOK IDBOOK.;
   format  IDSCHOOL IDSCHOOL.;
   format   IDCLASS IDCLASS.;
   format    IDSTUD IDSTUD.;
   format   IDTEACH IDTEACH.;
   format    IDLINK IDLINK.;
   format  IDTEALIN IDTEALIN.;
   format     IDPOP IDPOP.;
   format  IDGRADER IDGRADER.;
   format   IDGRADE IDGRADE.;
   format    IDSUBJ IDSUBJ.;
   format  ITCOURSE ITCOURSE.;
   format   MATSUBJ MATSUBJ.;
   format   SCISUBJ SCISUBJ.;
   format   NMTEACH NMTEACH.;
   format   NSTEACH NSTEACH.;
   format    NTEACH NTEACH.;
   format     JKREP JKREP.;
   format    JKZONE JKZONE.;
   format    MATWGT MATWGT.;
   format    SCIWGT SCIWGT.;
   format    TCHWGT TCHWGT.;
   format    TOTWGT TOTWGT.;
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

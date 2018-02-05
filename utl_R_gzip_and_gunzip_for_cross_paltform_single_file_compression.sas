R gzip and gunzip for cross paltform single file compression

  Use R base function 'zip' and 'unzip' for more flexible
  mutiple file and directory compression.

  I sugest users limit members of zip archive to zipped
  sizes less tan 1gb. Use partitioned zip files or
  single file compression for zip sizes more than 1gb?


github hex dump of zipped file
https://github.com/rogerjdeangelis/utl_hex_dump_of_complex_text_file


INPUT
=====

 d:/csv/cars.csv

  MAKE,MODEL,TYPE,ORIGIN,DRIVETRAIN,MSRP,INVOICE,ENGINESIZE,CYLINDERS,HORSEPOWER,MPG_CITY,MPG_HIGHWAY,WEIGHT,WHEELBASE,LENGTH
  Acura,MDX,SUV,Asia,All,"$36,945","$33,337",3.5,6,265,17,23,4451,106,189
  Acura,RSX Type S 2dr,Sedan,Asia,Front,"$23,820","$21,761",2,4,200,24,31,2778,101,172
  Acura,TSX 4dr,Sedan,Asia,Front,"$26,990","$24,647",2.4,4,200,22,29,3230,105,183
  Acura,TL 4dr,Sedan,Asia,Front,"$33,195","$30,299",3.2,6,270,20,28,3575,108,186
  Acura,3.5 RL 4dr,Sedan,Asia,Front,"$43,755","$39,014",3.5,6,225,18,24,3880,115,197
  Acura,3.5 RL w/Navigation 4dr,Sedan,Asia,Front,"$46,100","$41,100",3.5,6,225,18,24,3893,115,197
  Acura,NSX coupe 2dr manual S,Sports,Asia,Rear,"$89,765","$79,978",3.2,6,290,17,24,3153,100,174
  Audi,A4 1.8T 4dr,Sedan,Europe,Front,"$25,940","$23,508",1.8,4,170,22,31,3252,104,179
  Audi,A41.8T convertible 2dr,Sedan,Europe,Front,"$35,940","$32,506",1.8,4,170,23,30,3638,105,180
  Audi,A4 3.0 4dr,Sedan,Europe,Front,"$31,840","$28,846",3,6,220,20,28,3462,104,179
  Audi,A4 3.0 Quattro 4dr manual,Sedan,Europe,All,"$33,430","$30,366",3,6,220,17,26,3583,104,179
  Audi,A4 3.0 Quattro 4dr auto,Sedan,Europe,All,"$34,480","$31,388",3,6,220,18,25,3627,104,179
  Audi,A6 3.0 4dr,Sedan,Europe,Front,"$36,640","$33,129",3,6,220,20,27,3561,109,192
  Audi,A6 3.0 Quattro 4dr,Sedan,Europe,All,"$39,640","$35,992",3,6,220,18,25,3880,109,192
  ....


WORKING CODE
============

  *ZIP (default is to remove source. I wanted to keep source therefore 'remove=FALSE';
  gzip("d:/csv/cars.csv",destname="d:/gz/cars.gz",remove=FALSE);

  *UNZIP;
  gunzip("d:/gz/cars.gz",destname="d:/csv/cars.csv",overwrite=TRUE,remove=FALSE);


OUTPUT
======

Here is what the compressed  d:/gz/cars.gz looks like

ASCII Flatfile Ruler & Hex
utlrulr
d:/gz/cars.gz
d:/txt/cars.txt

 --- Record Number ---  1   ---  Record Length ---- 100

...........}Ys.G....8......D.4./...S.....)./7.d[...h.......Zz.....p.c......3....yu.....Z..~^.....|[.
1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...1
1800000000975714BEF83F0EB0E4B3B28105199882D23965C106BC97FCC57A0E897C6EAEAAD3EFE977FEFFA5FF75BBBBB75B
FB80000006DD93B72EB98F118F74445FF453C32609AF7A4B2548082FDDCAAB69980039BACCC3BAC795DE5CAAE6EEDB9C8CBD


 --- Record Number ---  2   ---  Record Length ---- 100

..../o......}u...........:_\.>.....|.z~.....Y....0...._.....o.......g.U...cY}x3._.:[..+.Y....:{8....
1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...1
BBB926CEEFEE77FFFDEFB9B8F355F3AC7BB7F77BADBB5CDBF3BAAD5FDFCE6FECEC906B51EF6577395B35CA285BFEF373EEEF
E9CDFFE07526D5966D59CAF5FAFCEEFEFBACBAE38ECB9CFFB0F9EFFCF3B5F43D55BF7F5F6039D83FFDABCBB09E9FFAB8EAAA


 --- Record Number ---  3   ---  Record Length ---- 100

.]....:....l..~.?.T^.......?U...L%...........T...t...-.|mf..x.U.......w...../:..W....S%*U..*.*.+a..T
1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...1
F5BFFB3DAEE6BA7F3D55E9F9AAB35FAA428ABA8A9DBEC5DF07BB927766897D58EBD0D97DC0DE23C15FC1F52250C2A2C26A05
5D5856ABFAACDEEAF24E9F07C44F525EC5CE8D4C42C2C4C94438BDFCD6B98C5B61E44F7BD100FA1070AAE35A596A1A9B1D34
...
...

Also overwrites

 d:/csv/cars.csv

  MAKE,MODEL,TYPE,ORIGIN,DRIVETRAIN,MSRP,INVOICE,ENGINESIZE,CYLINDERS,HORSEPOWER,MPG_CITY,MPG_HIGHWAY,WEIGHT,WHEELBASE,LENGTH
  Acura,MDX,SUV,Asia,All,"$36,945","$33,337",3.5,6,265,17,23,4451,106,189
  Acura,RSX Type S 2dr,Sedan,Asia,Front,"$23,820","$21,761",2,4,200,24,31,2778,101,172
  Acura,TSX 4dr,Sedan,Asia,Front,"$26,990","$24,647",2.4,4,200,22,29,3230,105,183
  Acura,TL 4dr,Sedan,Asia,Front,"$33,195","$30,299",3.2,6,270,20,28,3575,108,186
  Acura,3.5 RL 4dr,Sedan,Asia,Front,"$43,755","$39,014",3.5,6,225,18,24,3880,115,197
  Acura,3.5 RL w/Navigation 4dr,Sedan,Asia,Front,"$46,100","$41,100",3.5,6,225,18,24,3893,115,197
  Acura,NSX coupe 2dr manual S,Sports,Asia,Rear,"$89,765","$79,978",3.2,6,290,17,24,3153,100,174
  Audi,A4 1.8T 4dr,Sedan,Europe,Front,"$25,940","$23,508",1.8,4,170,22,31,3252,104,179
  Audi,A41.8T convertible 2dr,Sedan,Europe,Front,"$35,940","$32,506",1.8,4,170,23,30,3638,105,180
  Audi,A4 3.0 4dr,Sedan,Europe,Front,"$31,840","$28,846",3,6,220,20,28,3462,104,179
  Audi,A4 3.0 Quattro 4dr manual,Sedan,Europe,All,"$33,430","$30,366",3,6,220,17,26,3583,104,179
  Audi,A4 3.0 Quattro 4dr auto,Sedan,Europe,All,"$34,480","$31,388",3,6,220,18,25,3627,104,179
  Audi,A6 3.0 4dr,Sedan,Europe,Front,"$36,640","$33,129",3,6,220,20,27,3561,109,192
  Audi,A6 3.0 Quattro 4dr,Sedan,Europe,All,"$39,640","$35,992",3,6,220,18,25,3880,109,192
  ....

*                _                _       _
 _ __ ___   __ _| | _____      __| | __ _| |_ __ _
| '_ ` _ \ / _` | |/ / _ \    / _` |/ _` | __/ _` |
| | | | | | (_| |   <  __/   | (_| | (_| | || (_| |
|_| |_| |_|\__,_|_|\_\___|    \__,_|\__,_|\__\__,_|

;

dm  'dexport sashelp.cars "d:/csv/cars.csv"';

*                      __
__      ___ __  ___   / / __  _ __ ___   ___   _ __
\ \ /\ / / '_ \/ __| / / '_ \| '__/ _ \ / __| | '__|
 \ V  V /| |_) \__ \/ /| |_) | | | (_) | (__  | |
  \_/\_/ | .__/|___/_/ | .__/|_|  \___/ \___| |_|
         |_|           |_|
;


* delete if exist;
%utlfkil(d:/gz/cars.gz);

%utl_submit_wps64('
options set=R_HOME "C:/Program Files/R/R-3.3.2";
proc r;
submit;
  source("C:/Program Files/R/R-3.3.2/etc/Rprofile.site", echo=T);
  library(R.utils);
  library(R.oo);
  library(R.methodsS3);
  gzip("d:/csv/cars.csv",destname="d:/gz/cars.gz",remove=FALSE);
  gunzip("d:/gz/cars.gz",destname="d:/csv/cars.csv",overwrite=TRUE,remove=FALSE);
endsubmit;
run;quit;
');



*_                     _
| |__   _____  __   __| |_   _ _ __ ___  _ __
| '_ \ / _ \ \/ /  / _` | | | | '_ ` _ \| '_ \
| | | |  __/>  <  | (_| | |_| | | | | | | |_) |
|_| |_|\___/_/\_\  \__,_|\__,_|_| |_| |_| .__/
                                        |_|
;
%utlrulr
 (
   uinflt   = d:/gz/cars.gz
  ,uprnlen  = 100    /* Linesize for Dump */
  ,ulrecl   = 100    /* maximum record length */
  ,urecfm   = F
  ,uobs     = 5        /* number of obs to dump */
  ,uotflt   = d:/txt/cars.txt
 );


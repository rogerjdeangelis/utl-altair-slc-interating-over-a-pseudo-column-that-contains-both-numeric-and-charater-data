%let pgm=utl-altair-slc-interating-over-a-pseudo-column-that-contains-both-numeric-and-charater-data;

%stop_submission;

Altair SLC interating over a pseudo column that contains both numeric and character data
Too long to post here, see github

github
https://github.com/rogerjdeangelis/utl-altair-slc-interating-over-a-pseudo-column-that-contains-both-numeric-and-charater-data

community.altair
https://community.altair.com/discussion/60998
https://community.altair.com/discussion/60998/monarch-classic-is-there-a-way-to-create-an-if-formula-to-return-a-blank-value?tab=all

PROBLEM Convert "text" to " " (pyhton can also do this)

INPUT            OUTPUT

Column list       New Column lst

[1] 1            [1] 1       still numeric
[1] "text"       [1] " "     still character
[1] 3            [1] 3       still numeric



https://community.altair.com/discussion/60998

/**************************************************************************/
/*  INPUT      |  PROCESS                               | OUTPUT          */
/*  Altair SLC |  options set=RHOME "D:\d451";          | Altair SLC      */
/*             |  proc r;                               |                 */
/*  lst        |  submit;                               |                 */
/*             |  lst <- list(a = 1, a = "text", a = 3) |  New Column lst */
/*  [1] 1      |                                        |                 */
/*  [1] "text" |  print (lst[[1]])                      | [1] 1           */
/*  [1] 3      |  print (lst[[2]])                      | [1] " "         */
/*             |  print (lst[[3]])                      | [1] 3           */
/*             |                                        |                 */
/*             |  for (i in seq_along(lst)) {           |                 */
/*             |    if (lst[[i]] == "text") {           |                 */
/*             |      lst[[i]] <- " "                   |                 */
/*             |    }                                   |                 */
/*             |  }                                     |                 */
/*             |                                        |                 */
/*             |  print (lst[[1]])                      |                 */
/*             |  print (lst[[2]])                      |                 */
/*             |  print (lst[[3]])                      |                 */
/*             |  endsubmit;                            |                 */
/*             |  run;quit;                             |                 */
/**************************************************************************/

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

lst <- list(a = 1, a = "text", a = 3)

lst

[1] 1
[1] "text"
[1] 3
/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

options set=RHOME "D:\d451";
proc r;
submit;
lst <- list(a = 1, a = "text", a = 3)

print (lst[[1]])
print (lst[[2]])
print (lst[[3]])

for (i in seq_along(lst)) {
  if (lst[[i]] == "text") {
    lst[[i]] <- " "
  }
}

print (lst[[1]])
print (lst[[2]])
print (lst[[3]])
endsubmit;
run;quit;


/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/


Altair SLC

[1] 1
[1] "text"
[1] 3

[1] 1
[1] " "
[1] 3

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/
1                                          Altair SLC     11:35 Thursday, November 27, 2025

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: AUTOEXEC source line
1       +  ï»¿;;;;
           ^
ERROR: Expected a statement keyword : found "?"
NOTE: Library workx assigned as follows:
      Engine:        SAS7BDAT
      Physical Name: d:\wpswrkx


NOTE: 1 record was written to file PRINT

NOTE: The data step took :
      real time : 0.018
      cpu time  : 0.000


NOTE: AUTOEXEC processing completed

1
2         options set=RHOME "D:\d451";
3
4         proc r;
5         submit;
6
7         lst <- list(a = 1, a = "text", a = 3)
8
9         print (lst[[1]])
10        print (lst[[2]])
11        print (lst[[3]])
12
13        for (i in seq_along(lst)) {
14          if (lst[[i]] == "text") {
15            lst[[i]] <- " "
16          }
17        }
18
19        print (lst[[1]])
20        print (lst[[2]])
21        print (lst[[3]])
22        endsubmit;
NOTE: Using R version 4.5.1 (2025-06-13 ucrt) from d:\r451

NOTE: Submitting statements to R:

>
> lst <- list(a = 1, a = "text", a = 3)
>
> print (lst[[1]])
> print (lst[[2]])
> print (lst[[3]])
>
> for (i in seq_along(lst)) {
+   if (lst[[i]] == "text") {
+     lst[[i]] <- " "
+   }
+ }
>

2

> print (lst[[1]])
> print (lst[[2]])
> print (lst[[3]])

NOTE: Processing of R statements complete

23        run;quit;
NOTE: Procedure r step took :
      real time : 0.308
      cpu time  : 0.015


24
ERROR: Error printed on page 1

NOTE: Submitted statements took :
      real time : 0.377
      cpu time  : 0.062

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/

















































































































INPUT             PROCESS                                     OUTPUT


Altair SLC        proc r;                                     New Column lst
                  submit;
lst                                                          [1] 1
                  lst <- list(a = 1, a = "text", a = 3)      [1] " "
[1] 1                                                        [1] 3
[1] "text"        print (lst[[1]])
[1] 3             print (lst[[2]])
                  print (lst[[3]])

                  for (i in seq_along(lst)) {
                    if (lst[[i]] == "text") {
                      lst[[i]] <- " "
                    }
                  }

                  print (lst[[1]])
                  print (lst[[2]])
                  print (lst[[3]])
                  endsubmit;
                  run;quit;



















options set=RHOME "D:\d451";

proc r;
submit;

lst <- list(a = 1, a = "text", a = 3)

print (lst[[1]])
print (lst[[2]])
print (lst[[3]])

for (i in seq_along(lst)) {
  if (lst[[i]] == "text") {
    lst[[i]] <- " "
  }
}

print (lst[[1]])
print (lst[[2]])
print (lst[[3]])
endsubmit;
run;quit;































options set=RHOME "D:\d451";

proc r;
submit;

lst <- list(a = 1, a = "text", a = 3)

print (lst[[1]])
print (lst[[2]])
print (lst[[3]])

for (i in seq_along(lst)) {
  if (lst[[i]] == "text") {
    lst[[i]] <- " "
  }
}

print (lst[[1]])
print (lst[[2]])
print (lst[[3]])
endsubmit;
run;quit;



options missing=" ";
data nums;
 input nums ??;
cards4;
1
2
3
A
4
5
6
;;;;
run;quit;




mixed_list <- list(
  numeric_element = 42,
  character_element = "R programming",
  numeric_vector = c(1, 2, 3),
  character_vector = c("apple", "banana", "cherry")
)





I have the following r list


options set=RHOME "D:\d451";

proc r;
submit;

lst <- list(a = 1, a = "text", a = 3)

for (i in seq_along(lst)) {
  if (lst[[i]] == "text") {
    lst[[i]] <- " "
  }
}

print(lst)
endsubmit;
run;quit;




Please provide a R reproducible example that will iterated over the list and change "text" to " ";





https://community.altair.com/discussion/60998/monarch-classic-is-there-a-way-to-create-an-if-formula-to-return-a-blank-value?tab=all







options set=RHOME "D:\d451";

proc r;
submit;

lst <- list(a = 1, a = "text", a = 3)

print (lst[[1]])
print (lst[[2]])
print (lst[[3]])

for (i in seq_along(lst)) {
  if (lst[[i]] == "text") {
    lst[[i]] <- " "
  }
}

print (lst[[1]])
print (lst[[2]])
print (lst[[3]])
endsubmit;
run;quit;







%let pgm=utl-altair-slc-comprehensive-logistic-regression-with-a-binary-response;

All data has ben fudged;

libname lgs "d:/lgs";

data lgs.lgs_raw(rename=(
    MARTIAL_STATUS                =  married
    ACS_DWELLING_TYPE             =  DWELLING
    ACS_LOAN_TO_VALUE             =  LOAN2VAL
    ACS_HOME_MARKET_VALUE         =  HOMEVAL
    ACS_HOUSEHOLD_INCOME          =  HHINCOME
    ACS_RESIDENCE_LENGTH          =  HOMEYRS
    ACS_OCCUPATION                =  OCUPASHN
    ACS_AGE                       =  AGE
    ACS_MARITAL_STATUS            =  ACSMARRIED
    ACS_GENDER                    =  ACSGENDER
    ACS_NO_ADULTS                 =  ACSADULTS
    ACS_CHILDREN_FLAG             =  CHILDREN
    ACS_PREMIUM_CARD              =  RETAILCARD
    ACS_UPSCALE_CARD              =  DEBITCARD
    STATE2REGION                  =  REGION
    STATE2DIVISION                =  DIVISION
    STATE2REGIONCDE               =  REGIONCDE
    STATE2DIVISIONCDE             =  DIVISIONCDE
    ALLRSP                        =  RESPONSE
    NETWORTH_INCOME               =  INCOME
    NETWORTH_STOCKS               =  INCOME2
    NETWORTH_REAL_ESTATE          =  RENT
    NETWORTH_INVESTMENT           =  INTEREST
    INCOME_USED                   =  INCOM_USED
    REAL_ESTATE_USED              =  SPENT
    STOCK_USED                    =  LOANS
    DQ_PROPERTY_COUNT             =  HOMES
    ACS_CENSUS_HOUSEHOLD_INCOME   =  CENINCOME
    ACS_HOME_PURCHASE_YEAR        =  HOMEYEAR
    CORE_LOAN_TO_VALUE            =  OWNHOME
    CORE_HOME_VALUE               =  LOADHOME
    ACS_PURYER                    =  PURYER
    SINGLEWIDOW                   =  SINGLEWIDOW
    NOCHILDREN                    =  NOCHILDREN
    AGEGTR65                      =  AGEGTR65
    ));
  set lgs.lgs_build;
  if uniform(1256)<100023/110588;

  drop
    RSPIND
    RESPONSE;
run;quit;

.*---- create a balanced response rate for the raing sample and the holdout sample;
proc sort data=lgs.lgs_raw out=lgs_rawsrt;
by response;
run;quit;

proc surveyselect data=lgs_rawsrt
out=lgs_rawhold
method=srs
samprate=0.30
outall
seed=123456;
strata response;
run;quit;

proc freq data=lgs_rawhold;
  tables selected*response /  norow nopct;
run;quit;
          Very Balances response  (30/70) for Training and Holdout
Response
Non Responde
Col Pct  |     Training        |       HOLDOUT            Total
---------+---------------------+--------+--------------+
       0 |  68958  Trainging   |   1041 |  Holdout     |  69999
      Pct|  70.00  Non Response|  69.96 |  Non Response|
---------+---------------------+--------+--------------+
       1 |  29554  Trainging   |    447 |  Holdout     |  30001
      Pct|  30.00  Response    |  30.04 |  Response    |
---------+---------------------+--------+--------------+
Total       98512                 1488                   100000 30%












data lgs_rawrnd;
  retain rand;
  set lgs.lgs_raw;
  rand=uniform(123456);
run;quit;

proc sort data=lgs_rawrnd out=lgs_rawrndsrt;
by rand;
run;quit;

data lgs.rawhold;
  set lgs_rawrndsrt;
  if rand<=.30 then holdout=1;
  else holdout=0;
run;quit;



proc surveyselect
  data=lgs_rawsrt
  out=lgs.lgs_rawrnd
  samprate=0.3
  outall
  method=srs
  seed=123456;

  strata response;
run;

data output_database;
set output_database;
holdout = (Selected = 1);
overall_response = response;
drop Selected;
run;



















proc sort data=lgs.lgs_raw out=lgs_rawsrt;
by response;
run;quit;

proc surveyselect data=lgs_rawsrt
out=lgs_rawhold
method=srs
samprate=0.30
outall
seed=123456;
strata response; /* ensures proportional sampling by RESP=0/1 */
run;quit;


SELECTIONPROB
frqh SAMPLINGWEIGHT













data lgs.lgs_rawrnd;
  retain rand;
  set lgs.lgs_raw;
  rand=uniform(123456);
  select
    when (response=1 and uniform(123456)<.3) then holdout=1;

run;quit;

RSPIND    ALLRSP    RESPONSE    Frequency
--------------------------------------------
    -2         1           .         414
    -1         0           .       27233
     0         0           0       81719   414/27233 0.015
     1         1           1        1222   122/81719 0.0149


proc surveyselect data=lgs.lgs_rawsrt
out=lgs_raw
method=srs
samprate=0.30
seed=123456;
strata response; /* ensures proportional sampling by RESP=0/1 */
run;



381/(481+1007);














ALLRSP                        =  ALLRESPONSE
RSPIND                        =  HOLDOUT
RESPONSE                      =  TRAINING






















frqh ACS_LOAN_TO_VALUE;

/*                             _              _
/ |  ___  __ _ _ __ ___  _ __ | | ___    ___ | |__  ___
| | / __|/ _` | `_ ` _ \| `_ \| |/ _ \  / _ \| `_ \/ __|
| | \__ \ (_| | | | | | | |_) | |  __/ | (_) | |_) \__ \
|_| |___/\__,_|_| |_| |_| .__/|_|\___|  \___/|_.__/|___/
                        |_|
*/

/*                          _                   _
/ |  _ __  _ __ ___ _ __   (_)_ __  _ __  _   _| |_
| | | `_ \| `__/ _ \ `_ \  | | `_ \| `_ \| | | | __|
| | | |_) | | |  __/ |_) | | | | | | |_) | |_| | |_
|_| | .__/|_|  \___| .__/  |_|_| |_| .__/ \__,_|\__|
    |_|            |_|             |_|
*/
proc format;
   value $chr2mis
   'Unknown',' ','UNK','NOT DONE','ND','NA','mull','ma'
            ,'UNKNOWN','Missing','MISSING','NaN','NULL','MISS' ='?'
    ;
run;quit;


data

  array chr _character_;

  do over chr;
    if chr = put(chr,$chr2mis.);
  end;

  if ACS_PREMIUM_CARD = 'PREMIUM CREDIT (DEPT STORE) CARD HOLDER' then
     ACS_PREMIUM_CARD = 'RETAIL';
  if ACS_UPSCALE_CARD = 'UPSCALE CREDIT (DEPT STORE) CARD HOLDER' then
     ACS_UPSCALE_CARD = 'DEBIT';

run;quit;


libname odm "d:/odm";

    odm.odm_buildlen



ACS_PREMIUM_CARD = ACS_RETAIL_CARD
ACS_UPSCALE_CARD = ACS_DEBIT_CARD

frqh ACS_PREMIUM_CARD
frqh CORE_LOAN_TO_VALUE*ACS_LOAN_TO_VALUE



   proc format;
      value $chr2mis
      'Unknown',' ','UNK','NOT DONE','ND','NA','UNKNOWN','Missing','MISSING','MISS' ='?'
       ;
   run;quit;



























Note missing character vales have been changed to '?';

Observations          110,588
Variables             38

 -- CHARACTER --
Variable                   Typ    Value1                        Value2

ZIP9                        C9    434522900                     856259717
MARTIAL_STATUS              C1    M                             S
ACS_DWELLING_TYPE           C29   S                             S
ACS_LOAN_TO_VALUE           C255  90 - 94%                      ?
ACS_HOME_MARKET_VALUE       C255  $225,000 - $249,999           $125,000 - $149,999
ACS_HOUSEHOLD_INCOME        C255  $75,000 - $99,999             $100,000 - $124,999
ACS_RESIDENCE_LENGTH        C46   10 YEARS                      5 YEARS
ACS_OCCUPATION              C255  HOMEMAKER                     PROFESSIONAL/TECHNICAL
ACS_AGE                     C50   44 - 45                       34 - 35
ACS_MARITAL_STATUS          C16   SINGLE                        MARRIED
ACS_GENDER                  C7    MALE                          MALE
ACS_NO_ADULTS               C40   3                             4
ACS_CHILDREN_FLAG           C1    Y                             ?
ACS_PREMIUM_CARD            C39   PREMIUM CREDIT (DEPT STORE)   PREMIUM CREDIT (DEPT STORE)
ACS_UPSCALE_CARD            C39   UNKNOWN                       UPSCALE CREDIT (DEPT STORE)
STATE2REGION                C16   SOUTH REGION                  SOUTH REGION
STATE2DIVISION              C27   SOUTH ATLANTIC DIVISION       WEST SOUTH CENTRAL DIVISION
STATE2REGIONCDE             C5    3                             3
STATE2DIVISIONCDE           C5    5                             7
TOTOBS                      C16   26                            1


 -- NUMERIC --
ALLRSP                      N8    0                             0
RSPIND                      N8    0                             -1
RESPONSE                    N8    0                             .
NETWORTH_INCOME             N8    15349.74                      9031.1
NETWORTH_STOCKS             N8    .                             .
NETWORTH_REAL_ESTATE        N8    31347.45                      35350.05
NETWORTH_INVESTMENT         N8    780446.4                      797312.04
INCOME_USED                 N8    66738                         75259.2
REAL_ESTATE_USED            N8    208983                        235667
STOCK_USED                  N8    .                             .
DQ_PROPERTY_COUNT           N8    1                             1
ACS_CENSUS_HOUSEHOLD_INCOME N8    79900                         69900
ACS_HOME_PURCHASE_YEAR      N8    2000                          2005
CORE_LOAN_TO_VALUE          N8    64.5                          .
CORE_HOME_VALUE             N8    237500                        137500
ACS_PURYER                  N8    2000                          2005
SINGLEWIDOW                 N8    1                             0
NOCHILDREN                  N8    0                             0
AGEGTR65                    N8    0                             0

/*___                         _
|___ \  __   _____   ___   __| | ___   ___
  __) | \ \ / / _ \ / _ \ / _` |/ _ \ / _ \
 / __/   \ V / (_) | (_) | (_| | (_) | (_) |
|_____|   \_/ \___/ \___/ \__,_|\___/ \___/

*/


libname odm "d:/odm";

%inc "c:/slc/slc_voodoo.sas";

%utlvdoc
(
libname        = odm          /* libname of input dataset                                                                         */
,data          = zip9         /* name of input dataset                                         */
,key           = 0            /* 0 or variable                                                 */
,ExtrmVal      = 10           /* display top and bottom 30 frequencies                         */
,UniPlot       = 0            /* 0 or univariate plots                                         */
,UniVar        = 0            /* 0 or univariate analysis                                      */
,chart         = 0            /* 0 or proc chart horizontal histograme                         */
,misspat       = 0            /* 0 or 1 missing patterns                                       */
,taball        = 0            /* 0 crosstabs of all pairwise combinations of vriables          */
,tabone        = 0            /* 0 or all pairwise cross tabs with limits                      */
,mispop        = 0            /* 0 0 negative positive or missing on each variable             */
,mispoptbl     = 0            /* 0 missing populated table                                     */
,dupcol        = 0            /* 0 do two columns have the same values in all rows             */
,unqtwo        = 0            /* 0 only use to find primary key unique leveels of compund keys */
,vdocor        = 0            /* 0 or all pairwise parametric and non parametric collolations  */
,oneone        = 0            /* 0 or 1:1  1:many many:many                                    */
,cramer        = 1            /* 0 or cramer V variable crossed with all others                */
,optlength     = 0            /* 0 optimum length for character and numeric variables          */
,maxmin        = 0            /* 0 or max min for every varuiable                              */
,unichr        = 0            /* 0 univariate analysis of character variiables                 */
,outlier       = 0            /* 0 robust regression determination of outliers                 */
,printto       = output       /* only the output window is supported                           */
,Cleanup       = 0
);


%utlvdoc
    (
    libname        = sashelp      /* libname of input dataset */
    ,data          = zipcode      /* name of input dataset */
    ,key           = zip          /* 0 or variable */
    ,ExtrmVal      = 10           /* display top and bottom 30 frequencies */
    ,UniPlot       = 1            /* 'true' enables ('false' disables) plot option on univariate output */
    ,UniVar        = 1            /* 'true' enables ('false' disables) plot option on univariate output */
    ,misspat       = 1            /* 0 or 1 missing patterns */
    ,chart         = 1            /* 0 or 1 line printer chart */
    ,taball        = AREACODES DST STATECODE STATENAME ZIP_CLASS STATE Y COUNTY /* variable 0 */
    ,tabone        = STATECODE    /* 0 or  variable vs all other variables          */
    ,mispop        = 1            /* 0 or 1  missing vs populated*/
    ,mispoptbl     = 1            /* 0 or 1  missing vs populated*/
    ,dupcol        = 1            /* 0 or 1  columns duplicated  */
    ,unqtwo        = AREACODES DST STATECODE STATENAME ZIP_CLASS STATE Y COUNTY COUNTYNM            /* 0 */
    ,vdocor        = 1            /* 0 or 1  correlation of numeric variables */
    ,oneone        = 1            /* 0 or 1  one to one - one to many - many to many */
    ,cramer        = 1            /* 0 or 1  association of character variables    */
    ,optlength     = 1
    ,maxmin        = 1
    ,unichr        = 1
    ,outlier       = 1
    ,printto       = output   /* file or output if output window */
    ,Cleanup       = 0           /* 0 or 1 delete intermediate datasets */
    );


%utlvdoc
    (
    libname        = sashelp      /* libname of input dataset */
    ,data          = zipcode      /* name of input dataset */
    ,key           = zip          /* 0 or variable */
    ,ExtrmVal      = 10           /* display top and bottom 30 frequencies */
    ,UniPlot       = 1            /* 'true' enables ('false' disables) plot option on univariate output */
    ,UniVar        = 1            /* 'true' enables ('false' disables) plot option on univariate output */
    ,misspat       = 1            /* 0 or 1 missing patterns */
    ,chart         = 1            /* 0 or 1 line printer chart */
    ,taball        = AREACODES DST STATECODE STATENAME ZIP_CLASS STATE Y COUNTY /* variable 0 */
    ,tabone        = STATECODE    /* 0 or  variable vs all other variables          */
    ,mispop        = 1            /* 0 or 1  missing vs populated*/
    ,mispoptbl     = 1            /* 0 or 1  missing vs populated*/
    ,dupcol        = 1            /* 0 or 1  columns duplicated  */
    ,unqtwo        = AREACODES DST STATECODE STATENAME ZIP_CLASS STATE Y COUNTY COUNTYNM            /* 0 */
    ,vdocor        = 1            /* 0 or 1  correlation of numeric variables */
    ,oneone        = 1            /* 0 or 1  one to one - one to many - many to many */
    ,cramer        = 1            /* 0 or 1  association of character variables    */
    ,optlength     = 1
    ,maxmin        = 1
    ,unichr        = 1
    ,outlier       = 1
    ,printto       = output   /* file or output if output window */
    ,Cleanup       = 0           /* 0 or 1 delete intermediate datasets */
    );

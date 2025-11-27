# utl-altair-slc-interating-over-a-pseudo-column-that-contains-both-numeric-and-charater-data
Altair SLC interating over a pseudo column that contains both numeric and charater data
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

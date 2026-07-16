/**************************************************************************/
/* Derived from rogerjdeangelis/utl-altair-slc-interating-over-a-pseudo-  */
/* column-that-contains-both-numeric-and-charater-data                   */
/*                                                                        */
/* Source (Altair SLC, PROC R):                                          */
/*   lst <- list(a = 1, a = "text", a = 3)                                */
/*   for (i in seq_along(lst)) {                                          */
/*     if (lst[[i]] == "text") { lst[[i]] <- " " }                        */
/*   }                                                                    */
/*                                                                        */
/* A SAS "pseudo column" holding both numeric and character data can't    */
/* exist as a single SAS variable -- SAS variables are strictly typed --  */
/* so the idiomatic SAS translation of the same problem is a character    */
/* ARRAY carrying the mixed values as text plus a type flag, walked with  */
/* a DO loop that blanks the sentinel "text" and leaves numeric-typed     */
/* positions untouched, exactly like the source's R loop. Same algorithm, */
/* same literal values (1, "text", 3), same sentinel string.              */
/**************************************************************************/

data pseudo_column;
  length pos 8 raw $32 kind $1 new_val $32;
  array vals{3}  $32 _temporary_ ('1','text','3');
  array kinds{3} $1  _temporary_ ('N','C','N');

  do pos = 1 to dim(vals);
    raw  = vals{pos};
    kind = kinds{pos};

    /* iterate over the pseudo column: blank out the sentinel "text",   */
    /* leave numeric-typed elements untouched -- mirrors the R for-loop */
    if raw = 'text' then new_val = ' ';
    else new_val = raw;

    output;
  end;
  keep pos kind raw new_val;
run;

proc print data=pseudo_column noobs label;
  label pos = 'Position' kind = 'Type (N/C)' raw = 'Input value' new_val = 'Output value';
  title 'Iterating over a pseudo column with mixed numeric/character data';
run;

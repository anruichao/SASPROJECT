LIBNAME utd 'C:\users\xxy171830\yxy'; run;

proc sort data = utd.tgif; by customer_number; run;

proc fastclus data = utd.tgif
maxclusters = 5 out = utd.clus ;
var
age
tenure_day
email_send
disc_pct_tot
net_sales_p_chck
checks_tot;
run;

proc sort data = utd.clus; by cluster;run;

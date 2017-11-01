BEGIN{
  FS=":";
  print "Name\tUSERID\tGROUPID\tHOMEDIR";
}
{
  print  $1"\t"$3"\t"$4"\t"$6;
}
END{
 print NR, "Record Processed";
}

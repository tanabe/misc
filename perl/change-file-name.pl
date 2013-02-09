#!/usr/bin/perl

foreach my $file  (<*.MTS>) {
  my $take_date = (stat($file))[9];
  my ($sec, $min, $hour, $mday, $mon, $year) = localtime($take_date);
  $year = $year + 1900;
  $mon = $mon + 1;
  my $new_file_name = sprintf("%04d%02d%02d_%02d%02d_%02d.MTS", $year, $mon, $mday, $hour, $min, $sec);
  rename($file, $new_file_name);
}

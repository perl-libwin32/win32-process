use strict;
use warnings;

use Config qw(%Config);
use ExtUtils::MakeMaker;

unless ($^O eq "MSWin32" || $^O eq "cygwin") {
    die "OS unsupported\n";
}

require Win32;

my %param = (
    NAME          => 'Win32::Process',
    VERSION_FROM  => 'Process.pm',
    XS            => { 'Process.xs' => 'Process.cpp' },
);
$param{INC}     = '-GX' if $Config{'cc'} =~ /^cl/i;
$param{DEFINE}  = '-DSTRICTLY_WINDOWS95' unless Win32::IsWinNT();
$param{NO_META} = 1 if eval "$ExtUtils::MakeMaker::VERSION" >= 6.10_03;
WriteMakefile(%param);

# Run xsubpp through $(XSUBPPRUN), as MakeMaker's own .xs.c rule does.
# MakeMaker quotes the program path in $(PERL), and nmake splits an
# unquoted first argument after a quoted program at its first "/". So
# a rule starting '$(PERL) -I$(PERL_ARCHLIB)' fails for a perl whose
# archlib uses forward slashes. With an archlib of C:/perl/lib, perl
# gets -IC: as an option and tries to run /perl/lib as its script.
sub MY::xs_c {
    '
.xs.cpp:
	$(XSUBPPRUN) $(XSPROTOARG) $(XSUBPPARGS) $*.xs >xstmp.c && $(MV) xstmp.c $*.cpp
';
}


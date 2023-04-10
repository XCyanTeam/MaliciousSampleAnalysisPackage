Unpacker_PECompact.exe
----------------------

1.2 ---- Released 2014 January, the 4th
+ Fixed a bug when rebuilding relocations
+ Rearranged dumping without rebuiding sections
+ Improved detection of targets
+ Improved rebuilding of sections

1.1 ---- Released 2013 June, the 23th
+ Improved antidebug detection
+ Improved rebuilding of sections for known compilers
+ Fixed some bugs

Thanks a lot to redblkjck for his invaluable help when testing & reporting bugs


1.0 ---- Released 2011 September, the 15th

This is a tool to unpack PECompact (2.X - 3.X) wrapped targets. Since this sort of packer is not difficult to unpack & dump, the goal of the tool is just to make your life a little bit easier when you are facing any PECompact target.

And of course it has been a good exercise about coding debuggers unsing Delphi environment.

Available for 4 known compilers -> The option 'Rebuild sections' allows a dump clean of any wrapper code, minimizes all sections and uncompresses also the resources section.
Unchecking this option makes a dump without any further processing (although resources are always rebuilt, not to be lost).

Supported dll files also. This tool rebuilds and entire relocations section whilst debugging the process.

drag&drop feature available.

All troubles found when unpacking any target, please let me know in any of the reversing forums where this tool could have been released.

Thanks to all! And I hope you enjoy it.

Nacho_dj/ARTeam

Credits go to:
Shub Nigurrath & ThunderPwr, for their wonderful tut about debuggers & loaders
condzero, some ideas applied to this tool have been based upon his sources of loaders
Ghandi, for his very useful loader for dlls used by this tool
and of course, to...
ARTeam, the most wonderful reversing team I have ever known...
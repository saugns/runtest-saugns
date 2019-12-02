Dev test and helper files for saugns
====================================

Text-crunching
--------------

Files named beginning with "usr-include" are meant
for testing and benchmarking low-level text-crunching
code in saugns.

The first of those files contains 13MB of script-ish
"junk" assembled by concatenating /usr/include on a
2014 Arch Linux installation.

The 13MB file is the main test file, containing a
variety of stuff which low-level scanning code needs
to deal with (including sufficient length, and some
junk bytes). After changes to code which parsing
depends on, but which does not include semantics
processing, the main test should pass (no crash,
no other errors) without significant slow-downs
compared to earlier versions.

Using the "test-scan" program which can be built
for saugns using `make tests`:

`
./time-lexer.sh
`

To test versions of saugns older than v0.3.4,
including old versions named sgensys, the tag
'pre-v0.3.4' is provided. "test-scan" becomes
"test-builder" (built with `make test`).

Results and considerations
--------------------------

On an old ThinkPad x31 laptop with a Pentium III CPU,
the main text-crunching test times to a third of a second.
It's much faster on modern systems. This is good enough, as
it means low-level scanning code will run fast enough for
use with real longer scripts e.g. inside a music player in
the future, even on old systems.

(How large would a future music composition for the program
be? Probably at least an order of magnitude or two less than
the 13MB test file. If so, that means at least an order of
magnitude or two less of time overhead. At most ~0.03 seconds
on the Pentium III.)

The main time use for parsing will be elsewhere in the code
as long as text crunching is this fast.

The speed means that for low-level scanning, there's no point
using anything more complicated: "speed through simplicity"
will keep working.

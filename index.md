---
layout: my-default
---
# My DIY modular synthesizer

## Motivation and goals of this project

In short: I like synthesizers and I like tinkering with
electronics. This project combines those two hobbies.

Owning a [AE modular synth](https://www.tangiblewaves.com/) and
watching a lot of [Look Mum No
Computer](https://www.lookmumnocomputer.com/) has fed my interest for
synth DIY-ing.

AE modular is a good platform for DIY-ers. This was what drew me to it
in the first place. The system works entirely on 5 V, which reduces
the risk of breaking components. Modules are relatively inexpensive
anyway, so accidentally damaging them isn't the end of the world. 5 V
is also the voltage used in DIY platforms such as Arduino.

All very well, however it is still not quite DIY-friendly enough for
my taste. The physical format is just too small. Official modules make
use of printed circuit boards and SMD components, but the average
hobbyist does not have access to those technologies. Also, the depth
of the standard cases and the back-mounting are limiting. I would like
to have the freedom to go as deep as I need to. Finally, it is a bit
of a challenge to manufacture such small front panels with the thin
rectangular cutouts without laser cutters or other precision tools
that not everyone has.

A second motivation for moving away from the AE format is that the
tiny knobs and wires and the cramped patch sockets just don't do it
for me. Plugging in big cables and turning bigs knobs makes things
more practical and enjoyable.

So how do I do things differently? Electrically my format it is pretty
much identical to AE, and physically it looks much like Eurorack. The
patch cords have banana plugs. [Details about the format](#the-format)
can be found below.

It was an important goal to be electrically compatible with AE modular
because repackaging AE modules (and possibly enhancing them) is a good
way to start out and quickly get a rack filled up. I want to give a
shout out to [bradaddle](https://forum.aemodular.com/user/50) who
showed with his
[Banaenae](https://forum.aemodular.com/thread/1019/banana) project
that it can be done and this gave me the confidence to pursue the
idea.

Ultimately, what I hope to get out of this project is creative
expression, joy of building, and the idea of creating a unique synth.

### Why the website?

Firstly, to document the build process, so I can look back at pictures
of the build later, and to have the necessary information to repair or
rebuild modules. I try to provide enough information for others to
exactly replicate the modules if they want.

Secondly, I want to share with other people what I'm doing and maybe
inspire them. By no means I want to discourage people to buy AE
modular! I'm a big fan and will continue to buy modules. If anything,
I hope I can encourage those people, that are not quite convinced by
the physical part of AE but are attracted by the DIY aspect, to go for
it. Finally, it is also a hope of mine that [Tangible
Waves](https://www.tangiblewaves.com/) will consider selling their
modules as kits some day :-)

## The format

- 3U panels (no restictions on width and depth)
- rail mount, M3 mounting holes
- 0-5 V (modules may be powered individually but audio and CV signals
  are in the 0-5 V range)
- bus is a daisy chain power cord with 5.5 x 2.5 mm plugs that carries
  GND and +5V, center positive
- patch cords with 4 mm banana plugs
- 1 V/octave
- V-trig

## Modules

These are the modules I have built so far. Obviously this is a work in
progress. Be sure to check back on this page for updates.

- [Interface for AE modular](modules/ae_modular_interface)
- [Midimuso MIDI to CV converter](modules/midimuso)
- [LED strip controller](modules/led_controller)

## Questions?

Drop me an [email](mailto:bertfrees@gmail.com) or PM me on the [AE
modular forum](https://forum.aemodular.com/user/78).


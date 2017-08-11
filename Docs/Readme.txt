Miriani Soundpack for VIP Mud
By Ash Henderson, Erik Yobi, and Josh Westen.
Ported from Cory Martin's Vipmud soundpack (which was ported from the MonkeyTerm soundpack).

Cloud Release

For installation instructions, please see the file Installation instructions.txt.
If you have problems with sounds not playing or scripts not loading, you should check out the troubleshooting section of the installation instructions. If that doesn't work, you could try to search for ++ here in this readme file for some possibly out of date troubleshooting stuff.

Introduction:
I took this soundpack over from Cory Martin, and since that time, it has been expanded beyond anything I thought possible when I first started playing, and rewritten, to make it a bit more modern, and portable. For example, you now don't need to have Vipmud installed in a particular place, as is true of MonkeyTerm, which is good for those of us who don't want too much stuff on our main drives (myself for example).

As usual, big thanks go to Erik Yobi, who, as well as always being a good and stolid friend, had the patience to explain things too me when I didn't get them, and put up with my constant childish wonder, as I fixed simple bugs. Not to mention for his contributions to the soundpack (atsm and ConfManager for example).

Note: Most users (myself and probably 98% of the other users I know too) included, have to stop User Account Control from being such a bitch on windows Vista and 7 to make this soundpack work. To do this, search for uac in your start menu, and find the option that says "Change User Account Control Settings". Set the slider to somewhere in the region of very low (0 is my favourite), and press ok, then log out, restart, pick your nose, or whatever else it tells you to do, then try any of the suggestions listed below if you get more problems.

Features:
--  Bringing you the original Monkey Term sounds you know and love, using the latest Monkey Term 7 sound pack including socials, combat sounds, ETC.  Note to control sounds being on or off and volume, use F11 to toggle mute of sounds, shift f11 for roomsounds, and F9-F10 to lower and raise the sound volume.  Background room sounds, and general sounds are tied together and are changed through the same volume controls, and now move together, rather than having to reload the roomsounds each time.
--  For the first time you will have background ship sounds playing continuously within VIP Mud.  If you want to shut the background sounds off on the fly use the command roomsounds (or shift-f11), to toggle them.
--  An improved focus command during combat, once a target is focused typing focus will output in whatever format you choose. There are several other areas where this is possible too, see conf mission for example. Also shows unchanged before all that, if the coords are the same.
--  Stores the last up to 25 messages in a wide array of catigories, including game announcements, mission reports, and comm chatter. With keys to revier some of them:
   Control-alt 1- to review comm output.
   Control shift 1-10 to read the last 10 pa messages.
   Alt-shift 1-0 to read the last 10 spoken messages (now includes droids).
   Use control e and control shift e to switch back and fourth through the available history buffers, and control w and control q to move back and forward in the messages. You can switch to the oldest message of the currently selected buffer with the control shift q hotkey, and the most recent with the control shift w key. You can copy either the current history buffer item with control alt shift q, or from the current to the most recent with control alt shift w. You can copy the entire buffer with control alt shift e.
--  Galactic coordinate calculator (try cgc x y z), in a ship with a GMU, and see it in action). After the galcoords are initially set, you can use control shift i to read the result again.
--  The cgc destinations can now be set, either with the AddSCGCItem command, or through Conf SCGC, then re used with control alt l.
--  Type MoveMark help, to see how you can mark each ship's distance traveled, so you can check on travel distances with ools trips.
--  A numberpad is now available on both desktop and laptop systems, enable it with the numpad command, or in the conf manager. To use, use either the numberpad, found on the right hand side of most full sized qwerty keyboards, or use control alt shift and the keys on the right to access:
Key (including control-alt-shift) - command
j - 1
k - 2
l - 3
u - 4
i - 5
o - 6
7 - 7
8 - 8
9 - 9
p - +
. - -
Also included are movement commands (see below)
Use any of the below letters in conjunction with alt to move:
i - north
o - ne
l - e
. (period) - southeast
, - south
m - southwest
j - west
u - northwest
k - look
--  Enhanced numberpad navigation is also available, thanks to Magix. Now, instead of seing the prompt for vertical directions, just hit plus or minus on your numberpad, followed by a number, to move directly in that direction! :-)
--  Now with Intelligent numpad, which allows you to use the number pad to move in standard directions while outside a ship or vehicle.
--  Added support for reading the last direction travelled, either with the numberpad, or direction keys. Try alt / to review the last movement direction, or alt shift / to see the last ship direction.
--  Added the ability to read just the exits of the room, without moving your hands. Use alt space to see it working! Also, by option (in conf gen), see the number of exits in the room.
--  Made it possible for anyone to edit the finer points of the soundpack without sorting through a whole host of script files. Check out the conf command, written by Magix! Supports save, reload from saved, restore to defaults, as well as a whole host of really useful options from within the game. Use conf save to save your settings, and have them reloaded next time you load your character.
--  Now there's sounds outside too. Our aim is that no room on Miriani will be silent. Walk around to see what's good.
--  There's a new command for viewing the starmap in atmospheric and gas giant salvagers. Use the command atsm to try the new functionality.
--  Added theme music on red alert. Now you'll hear exciting music while in battle. Give the command mtplay (or press control shift f12), to shuffle the theme music selection. Press alt shift f11 to enable or disable the theme music on the fly, and press control alt shift f12 to have the theme music fadeout if you get tired of hearing it.
You can also set your own theme music directory from within Conf Advanced, which allows you to use your own theme music.
--  Now there's in game access to this file, and the changelog, as well as a file with some useful tips and tricks. Find it all with the conf doc command.
--  Now the soundpack has gone cloud, you can get updates instantly! as soon as you find and report a bug, one of us can get right on with fixing it. We copy our work over to the Miriani Stable folder, you get the changes, instantly. No more clumsy exe files to download, and no more messing around with updates.
--  Erik has set up 3 different experience levels, newbie (will see all incoming text), midbie (will see slightly less), and oldbie (will see hardly any). Try conf exp to see the difference.
--  A conf mission mode now gags even more text, to help with PVP and missions
--  Now includes a lag tester! type lag, to see how much lag you have.
--  Now allows you to view directions to things on the starmap. For example, sm debris will show you all debris as directions instead of coords. Try typing sm help or sm h for help.
--  In keeping with the excellent MonkeyTerm soundpack, now maintained by Michael Vieraah, you can use control q to cycle back through output, and control w to cycle forward.
--  Also in keeping with MTMiriani, when using a point unit, you'll not get a calculation of the points you've gained since you last used it. Taking it one step further, those points will be stored across restarts, so you'll always be up-to-date.
--  When out of locals, you can enable an option in conf points, which will allow you to see the points stored from the last time you checked your point unit.
--  Now I've got a BC, I've been able to fix loads of stuff to do with them, including extra blast door gagging and drone recharge sounds.
--  Added sounds for atmospheric combat. Never done it myself, so there may be bugs, but looks pretty solid.
--  Added sounds and modes for Asteroid mining, try out the surveying command while on a roid. There's 3 settings, you can view minerals in surveying mode, where discovered objects will be gagged, and review mode, where undiscovered objects will be gagged. Or you can just disable it, to see everything.
-- Replaced the somewhat obscure realism mode with a mode that replaces some computer messages with a recorded voice. Set it in conf ships, and Go try it with autopilot!
-- Now with an extras framework, allowing us (or anyone else who wants), to add extra modules they think may be useful, and have them automagically loaded on startup. Type Conf Extra to see the menu, and always remember to do conf extra 1 (or loadextras), to load the files you want, and unload the ones you don't.
-- Now you can toggle every social which has a sound on and off. Check it out with the Conf Actions and Conf Socials menus.

++ For people who's sounds or scripts do not work, please read:
Firstly, this version removes the need for a custom soundpath, in the Vipmud directory. The previous versions required this, mainly because I'm an idiot, and it may be that it's still set on your system. Below, I've attempted to create instructions for changing it, so your Vipmud installation should work again, both with this soundpack, and with other scripts you may have installed.

It is worth noting however, that even with the soundpath correctly set, Vipmud doesn't work well with multiple sessions. On the rare occasions that I play multiple MUDs, I find things work better if I open a new instance of Vipmud, by clicking on the icon again, otherwise nothing loads properly, even though we don't use anything global in the soundpack, bla bla bla...

Going back to the soundpath, to be fair, nobody has complained about this setting having changed, and ruined their lives, so to be honest, I think I'm making mountains out of mole hills, but I'd rather say now, than confuse the hell out of people right off the bat.

To change the soundpath directory, do one of the following:

* Advanced method:
Open Vipmud.set (found in your Vipmud directory), in your favourite directory. If you don't know where your Vipmud directory is, just keep reading.

Find the line which starts #config soundpath, and edit it as follows.

#config {dir}

Dir must be your Vipmud directory, with \sounds at the end. This is the default with new installations.

As this is the more advanced method of changing this directory, I'll assume that if you're doing it this way, you know where your Vipmud is installed. If you don't, read on for the less advanced method.

* Simple method:
With Vipmud loaded (but not necessarily connected), go to the "Tools and Preferences" menu, with alt t, or just alt, and use your arrow keys to select, and find the option that says "Options" or press o.

Scroll down the list of options until you get to the one which says "Sound path". On my system (and presumably others), this is the second option. Find it, and press tab.

You'll be placed in a text field, the contents of which should look something like this:

C:\Program Files\Vipmud\Sounds

If your soundpath is exactly this, you're probably alright to carry on (you'll know by weather or not you get sounds or not).

If it's not, try and find your vipmud directory, which is usually located in your program files directory, which is usually located on your c drive.

On Windows XP, program files is usually stored in C:\Program Files

On Windows Vista and Windows 7, it may be in the same place, or (if you're running a 64-bit installation of Windows), in C:\Program Files (X86)

The Vipmud directory should be somewhere in there.

So, when you're finished, your sound path should look something like this:

Windows 32-Bit installations:
C:\Program Files\Vipmud\Sounds

Windows 64-Bit installations:
C:\Program Files (X86)\Vipmud\Sounds

If you are using a non-standard installation of Vipmud, it could be pretty much anywhere. For example, I have an SSD on my system, and Vipmud is installed to D:\, so my sound path variable looks like this:
D:\Vipmud\Sounds

Hope this helps, if it doesn't, please get hold of me, and I'll try to explain it in a more english-friendly way! :-)

Help, my scripts don't load at all!
This problem is particularly noticeable on Windows 7, but may occur in other versions of windows too. There is a problem with the permissions for the Vipmud directory, but luckily, it's easy to fix...

In the Miriani directory of your Vipmud directory (usually C:\Program Files\Vipmud\Miriani or C:\Program Files (X86)\Vipmud\Miriani), I have created a small batch file called FixPerms.bat, which when ran, will fix the problem (hopefully). You'll get a message like:
Fixed permissions on directory: C:\Program Files\Vipmud\MirianI.
Press any key to continue...

Just hit enter, and you're done, a simple reload of Vipmud should complete the process.

If you're using a cracked version of Vipmud, don't even bother reporting your bugs to us, unless you're certain they're not related to you being a tight wod, as cracked versions of Vipmud are known to cause problems we really can't fix, even if we wanted too. If you're going to report a bug, please stick to the same guidelines as are outlined in policy 16 of Miriani it's self, except that we can only accept suggestions and ideas either via the OOC / Soundpacks catigory on your message board reader, via email, or via some kind of ooc comms channel within the game (either private comm, or the VIP meta (372.8)).

++I keep getting errors and my sounds are still playing!:

Well its a common problem that sounds are playing, but you get error sounds particularly when attempting to access the conf manager. Easy fix:
What screen reader are you using. Most commonly this error shows up when the user is using nvda. To fix this, type:
speech set nvda
Then:
conf speech 8
Then select your current screen reader. After which do a conf save to save your settings.

++my lines are being cut off or something else equally as strange is occuring!
This usually is caused by so many changes to the conf manager, and you used a backup from your lore that it's broken.
Easiest way is to find conf.set, and varriables.set and delete them.
Their located in the miriani folder inside VIP mud data folder, usually called VIP mud inside documents, unless you changed it. If you moved it, go find it, and open the miriani folder, and just delete conf.set and varriables.set.
once done, refollow the instructions in installation.txt to reinstall. Once done, do *not!* restore your lore backup, simply reconfigure your soundpack manually.
If you restore your lore backup anyhow, we're gonna stuff you inside a tumble dryer, and turn it on high, and watch you take a very dizzying ride, because did we not just say in the above line to not restore your lore backup? We did? ok, then why'd you do it! Repeat above procedure and stop restoring your lore backup!

Happy gaming!

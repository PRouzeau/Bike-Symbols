Bike SYMBOLS
This application is made to display bike symbols of bicycle or tricycle.

This application need to have prealably installed OpenSCAD (a free parametric
 3D modeler), see here:
* http://www.openscad.org/downloads.html
Use 2021.01 version. Snapshot/nightly versions of OpenScad shall NOT be used
as they won't work following some functionalities removal.
*You shall at least use the last official version (2019.05).
*All files shall be installed in a directory on your computer, though you
 don't really need the 'Images' directory to run the app.

*How to install the application ?
At address https://github.com/PRouzeau/Bike-Symbols under gray line, on
the right there is a button [Code] which open a small window
where you will find a link [Download ZIP], to click.
This open a window 'Downloading...' with two buttons proposing to 'sign up'
or 'sign in'. You don't need either. In parallel, your browser download the
file 'Trike-geometry-master.zip' and may propose to record it somewhere (this
depends from your browser config). Open the zip file, it includes a directory
'Trike-geometry-master', its content shall be installed anywhere on your
computer (however, look below paragraph for restriction on the complete
 directory name).
 
*The complete path of the directory where you install this application
 (Bike symbols or any other) shall only use ASCII characters, without
 spaces, accented letters, any diacritic, umlaut or other character set.
Without these conditions, Customizer dataset cannot be saved.
 
*To start the application, click on the file 'Bike_symbols.scad'.
This will open OpenSCAD with application loaded. Click on [F5] to run
default example.

Since the 2019.05 version, Customizer is automatically activated.

*In [View] menu, you shall now have an option [Hide customizer],
 which shall be unticked, so the Customizer panel appear on the right.

*In same [View] menu, you may want to hide the programming editor
 with ticking [Hide editor].

*Interface use local language (as configured on your machine) by default.
 To deactivate: menu [Edit][Preferences] tab [Advanced], untick the option
 (in the bottom) [Enable user interface localization (requires restart of
 openSCAD)]. 

*After program loading, Customizer is not activated, you need first to do a
 preview, either with [F5] key or by clicking the first icon below the view.
 
*Previewing run the default example, so you shall have a model shown in the
 viewing windows (after clicking [view all] button: third on bottom line)
 
*If you don't see anything after a preview, there is an installation problem,
 so check that you have downloaded all files and that the directory name is
 compliant with the specification as described in above paragraph.
 There shall be no error message in the console window.
 
*Any field modification is validated after an [enter] or after a move to
 another field. A modified field validation automatically run a new preview.
 
*Images can be exported from a simple preview ([F5]) with the command
 [File][Export][export as image].

*To export a 2D object, you shall first make a 'projection' of the 3D model
 (The model you seea have a thickness of 1) by ticking '2D projection' in
 [Display] tab. The preview (not the rendering) will be started automatically
 after ticking and it may take some time depending the complexity of your
 model.
 
*You cannot export DXF file from a preview, you need to do a render first
 ([F6]),directly or after a preview, then do [File][Export][export as DXF].

*You can export a 3D model by doing a render [f6] without asking for a
 projection. You probably want to increase the thikness of your model with
 the parameter 'model thickness' in [Display] tab.
 
When happy with a design, customizer can record it in a dataset, use the 
 button [+] to create a new dataset then [save preset] to save further
 modifications, each dataset can be recalled by selecting it in the dropdown
 menu.
 NOTHING is saved automatically.
If dataset recording don't work, see above note about the directory character
 sets.

Note that for variables with spinboxes (small box with top/down arrows),
 when you click in the value box, you can then use the mouse scroll wheel
 to modify the value. 

If you want to display a user image (for own symbol or QR code), the user
image shall in png format, black and white, of an height below 200 pixels.
It shall be set in 'User_images' directory. The image processing by 
OpenSCAD takes some time.

To remove the copyright mark, untick 'Program license' in [display] tab.

Copyright 2019 Pierre ROUZEAU, AKA "PRZ"
Program license GPL 3.0
documentation licence cc BY-SA 4.0 and GFDL 1.2
Symbols license : cc BY-SA 4.0 and GFDL 1.2
A note about the symbols license, there is no commercial restriction, meaning
 that you can use or sell labels without asking me nor sending royalties.
However, what you shall do is: 
*Indicate that I am the author of the symbols.
*The images can only be incorporated in documents having similar license,
 e.g. if this image is added in a document, the document using it shall have
 compatible licence (say free to be used with same licensing scheme and 
 author(s) listed and ). This is the core principle of a 'viral' licence.
But it is not original design? Yes, it is not that much original and I
 evidently get inspired by existing symbols, however proportions have been
 reworked many times and adaptations had to be done to properly position
 articulations.
To underline the point, you shall know that these symbols while looking
 similar don't share dimensions with the former one I already published in
 'Protected crossing' application, they are better proportionated.
After all, if you disagree with the licensing and think it is so easy, you
 can do your own version if you wish. It is probably the reason why you have
 so many variants of similar symbols, it is easier to redo one than to
 search who own the design.

This uses my OpenSCAD library, attached, but if curious you can find details
here:
https://github.com/PRouzeau/OpenScad-Toolbox

This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

You should have received a copy of the GNU General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.

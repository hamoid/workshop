# Final Project - Video based generative poster

For the final project you will write a Processing program that uses video as input, and will generate vector graphics as output. You will run the same program three times, with three different video files, to obtain three layers to be printed as one poster. The layers can be combined with an external program (like Inkscape or Illustrator) or directly in Processing by writing a program.

If you use an external program to combine the three vector files, feel free to
arrange the location, size and rotation of your items, but no further
post-processing is allowed.

The video files should be between 30 seconds and 3 minutes long, and they should depict natural fenomena. You can record short video clips with your phone and copy the files to your computer. Some ideas for videos: moving or flowing water, waves, plants or leaves moved by wind, clouds, sky timelapses, walking through nature, pointing the camera towards the sun and moving the camera to create patterns, etc.

Programs 048 and 049 can be used as a starting point. They show how to input video into Processing, and how to read pixel properties. There are many properties you can observe in the video file from your program. For instance, you can read the hue, saturation, brightness, red, green and blue values for any pixel on the video frames. You can always focus on the same pixel (the center one, the pixel (100, 100), the top-left one). Or you can observe multiple pixels. For instance, you could study the difference in brightness between two pixels, situated at (25%, 50%) and (75%, 50%), and use that to control any property (position, size, rotation, color, thickness, etc).

It's important to experiment to figure out what works and what doesn't. Connect properties obtained from the video file into properties that control the drawing process and see what happens. By doing this, obtain unique and interesting aesthetics and learn what works and what does not. Document the process and failed results.

ONE PDF file from each of you will be printed at A1 size and displayed at the Rundgang on Friday July 22nd. The deadline to hand in your poster is on Monday July 18th.

I suggest you send me via e-mail work in progress and questions so I can provide feedback before the deadline (the Rundgang date).

# Ideas to explore

* Try using no lines, only closed shapes instead (rectangles, squares, circles,
  irregular polygons).
* Try using only black and white. Alternate between the two colors and draw
  overlapping shapes.
* Try using a reduced palette (shades of 3 different colors?).
* Use conditions. Draw one kind of shape if the brightness of a video pixel is
  below a certain value, draw a different shape otherwise. You can set any kind
  of conditions.
* Invent rules. For instance:
  * dark shapes are larger, bright shapes smaller. 
  * If the hue is green, do this, otherwise do that.
  * If cond, then draw, otherwise don't draw.
* Try typography. You can spray letters to easily draw complex shapes.
  You can control letter sizes and rotations.
* Have completely different styles on the same document.
* Look at http://fyprocessing.tumblr.com/ for more ideas.

Have fun exploring!


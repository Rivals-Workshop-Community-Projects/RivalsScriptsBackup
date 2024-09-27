//Welcome to ATalksToSelf's Music Display Template!
//This readme is designed as the main piece of information you'll need to use the template or add to it an existing stage.

//The guide is broken up into the following sections, feel free to jump to whichever you need.
//BASICS
//EDITING THE TEMPLATE
//AETHER EXCLUSIVE SONGS
//ADDING TO AN EXISTING STAGE
//NEW WITH V1.2! CUSTOM SONG SELECTION
//NEW WITH V1.4! INTRO SUPPORT

//Please reach out via the comments on the steam page or via Discord DMs (I'm in the Extended Workshop Discord Server, find me there to DM me) if you have any questions or issues.
//Credit is not required but feel free to do so if you wish, but DO NOT CLAIM THIS CODE AS YOUR OWN. Thank you.



//BASICS
//The Music Display Template is broken up over six different scripts, with each of them serving the following function:
// - init.gml (Sets the variable used for the song randomizer)
// - load.gml (Sets the offset of the cover sprite)
// - update.gml (The randomizer itself and what plays the correct song)
// - article1_init.gml (Contains arrays with the pieces of info displayed via text)
// - article1_draw.gml (Displays the text)
// - article1_update.gml (Sets the cover sprite to the correct frame and deletes the article after a few seconds)

//Beyond these scripts you'll need three more elements for the randomizer and display to work.
//The first is cover_strip#.png in the articles folder, contained within the sprites folder.
//This is where the album art is stored.
//I have included a blank template version as well, feel free to use either one.
//The second is how the song files are named inside the sounds folder.
//THEY MUST BE NAMED MUSIC_TRACK# OR THE RANDOMIZER WILL NOT READ THE SONG FILES
//If you decide to use a different naming scheme, please edit update.gml to match or the songs WILL NOT play.
//The third is placing the article marker in the stage editor.
//Switch to the fourth menu bar up top and place the first marker (labeled with a 1) wherever you want the display to appear.




//EDITING THE TEMPLATE
//I have included comments about each function inside each script, please refer to those as needed.

//In order to use and edit the template you'll need to start by assembling the music, cover art, and song info required.
//I would start by selecting the songs you want to use and looping them (any music editor like Audacity will work), downloading the album art or game covers, and writing down the song titles, artists, and albums.
//This step can be done at any time but it will be easier to follow along if everything is ready.

//Next, you'll need to decide if you want Aether exclusive songs or not (I'll cover this in more detail in the next section).
//My instructions will assume you don't have any and have already removed any code related to Aether music.

//When using the template you'll mostly be editing two scripts, update.gml and article1_init. The rest do not need to be touched.
//update.gml contains the randomizer and the value determining the total amount of songs in the system.
//The value you want to change in order to increase or decrease this total is the number after current_second (In this case, 4).
//**if (cur_song == -1) cur_song = random_func(current_second, 4, true)+1;**

//Once the total number of songs has been chosen, you'll need to edit each array in article1_init.gml to match the current total. This can be done by copy pasting a line to increase the value, but MAKE SURE YOU EDIT THE NUMBER.
//Failing to do so and having two picks with the same value will result in only one of them being able to be selected.
//When you have the arrays setup, simply fill in the text fields with your information.
//If you're using a song that does not have an official soundtrack release, I use the game name in place of the album. Whether you do the same or not is up to you.

//With the scripts edited, MAKE SURE YOU EDIT THE SONG FILES TO THE CORRECT NAMING SCHEME (MUSIC_TRACK# or MUSIC_TRACK#_INTRO) IN ORDER FOR THE RANDOMIZER TO PLAY THEM.
//From there, feel free to edit the album art or game covers into cover_strip# or cover_template_strip#. The template is setup with open spaces in between each 4px thick black border, this is where you want to add your chosen artwork.
//I use a size of 48x48 so you will need to downscale the art, most programs have an option to resize a selection or image. Don't worry about it looking pixelated, the art is displayed at such a small scale it doesn't matter.
//If you really want to, feel free to clean up and edit the art.

//The final step is placing the article marker in order to determine where the display spawns. Keep in mind the marker should be set where you want the TOP LEFT corner of the display to be.
//The template has it placed by default but you can move this wherever you wish to.

//Make sure to test that the template was edited properly.



//AETHER EXCLUSIVE SONGS
//Every function related to Aether Songs has been labeled as such within their respective files.
//These can be found in init.gml, update.gml, and article1.init.
//If you want to remove any Aether music functionality, these are the scripts you'll want to edit.

//If instead you want to add Aether music functionality, be sure to include the following:
// - An if statement setting cur_song to -2 (or any other whole negative number that isn't -1) if the stage is set to aether in init.gml
// - A second randomizer in update.gml using this negative value with the +# at the end adjusted to be one more than the total amount of Basic songs.
// - Additional lines for each array in article1_init.gml, continuing to count up from the total amount of Basic songs. DO NOT START OVER AGAIN FROM 1!
//Make sure you also edit the music files to match, using the same numbered values as the array, as well as adding more frames of artwork to cover_strip#.



//ADDING TO AN EXISTING STAGE
//If you want to add the music display to an existing stage, please make sure to do the following:
// - Copy over the six scripts listed above (See BASIC)
// - Add the cover_strip# to an articles folder inside sprites (create the folder if needed)
// - Rename your music files to THE CORRECT NAMING SCHEME AS USED WITHIN UPDATE.GML
// - And finally, place the article marker where you want the display to appear.
//You can edit the info in the display before or after this process but PLEASE TEST THAT YOU IMPORTED IT PROPERLY BEFORE PUSHING THE PATCH OR PUBLISHING THE STAGE.


//NEW WITH V1.2! CUSTOM SONG SELECTION
//If preferred, songs can now be selected from a set of four instead of randomized!
//This can be found in update.gml
//The selection is done by reading the inputs from both the left and right sticks, WHILE HOLDING SHIELD, along with their keyboard equivalents.
//Directions are listed starting clockwise from the top. Make sure to edit the value for "cur_song" under each input to change which song is set to that selection.
//Aether Mode music is also supported, if you don't have Aether exclusive songs the parts to remove are labeled.

//As of V1.3, YOU MUST HOLD SHIELD IN ORDER TO SELECT A SONG USING EITHER STICK.
//This fixes a bug that forced the fourth option to always be chosen, and is the preferred solution in order to keep using the left stick for selections.
//PLEASE make sure you update your code to include this change if possible.

//NEW WITH V1.4! INTRO SUPPORT
//As it turns out, intros are supported by the Music Display!
//They work the same as adding one to any custom stage, playing the intro track before the main loop starts, allowing the main song to loop endlessly.
//In order to use them with the Music Display, make sure you name each intro (MUSIC_TRACK#_INTRO) to match the correct main loop.
//V1.4 comes with an update to the included example songs, as tracks 1, 4, and 7 all have been relooped to include intros. These should provide examples on what intros can be used for and how to set them up.
//In order to add these to an existing stage with the Music Display, simply add the updated song loops and intros in place of the older versions. No changes to the code are required!

//Again, if you have any questions or issues, please reach out via the comments on the Steam page or via Discord DMs (I'm in the Extended Workshop Discord Server, find me there to DM me).
//Credit is not required but feel free to do so if you wish, but DO NOT CLAIM THIS CODE AS YOUR OWN. Thank you.
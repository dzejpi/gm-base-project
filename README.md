# Base project Game Maker 2
This is a base project for Game Maker 2 that you can freely use for game jams (or for your regular game, if you want to). It includes the basic functionality in order to save you time with some simple mundane tasks.

## GML/Drag and Drop?
This project is made in GML only - no drag and drop. While drag and drop in Game Maker 2 is pretty decent, it is generally considered more trouble than it is worth it, since your project can become convoluted pretty quickly once your game grows in size.

## Sprites
All sprites in the project are only 64 x 64 px single color placeholders. Replace them with your own proper assets through `Import` button on the sprite detail.

## Room transitioners
The project includes two objects that handle the room transitions smoothly:

* `obj_game_start_fade_out` - this objects draws the black rectangle and then fades it out. You can use this when the room starts. 
* `obj_next_room_fade_in` - this objects draws a completely transparent black rectangle and then fades it in. Once the rectangle is fully visible, the object switches into the next room.

Both of these objects can display two lines of text. Can be set in: 

* `displayed_text` - first line of the text.
* `secondary_text` - second line of the text.

These variables are empty by default. Keep them empty if you do not want to display any text when you transition between rooms.

## Sound Groups
Since you most likely want to have two different settings for music and sounds, this project comes with two separate audio groups:

* `music_audiogroup` - use for the music.
* `sound_audiogroup` - use for game sounds.

Audio group volume is controlled on Main Menu through `Sounds` and `Music` buttons.

## Rooms Included
### Splash Screen
Splash screen starts with `obj_splash_starter` object and displays two logos (`spr_first_logo` and `spr_second_logo`). First logo would probably be your logo, second logo would the logo of your game. Once logos are displayed, object takes the player to the Main Menu automatically.

`obj_splash_starter` object also:

* Instantiates `obj_window_size_handler` object - this object detects whether the game is run in the browser and fixes the scaling - this makes sure game can run embedded.
* Loads both audio groups - this makes sure your music and sounds are loaded.

Take a look at the end of the `Create` event. You will notice this:

> // FOR DEBUGGING. Go to any room immediately
> 
> //room_goto(room_credits);

As you can probably already see, you can uncomment `//room_goto(room_credits);` and go to any room immediately. Use this to skip waiting for splash screen and to skip going through the Main Menu.

### Main Menu
Main Menu is started with `obj_main_menu_starter` object which creates all button instances in order to be able to shuffle them properly.

#### Main Menu Buttons
All Main Menu buttons inherit from `obj_menu_button_parent` parent object. This object handles the drawing of the button and click detection. Notable variables:

* `is_pressed` - if the user clicks on the button, this boolean variable turns to `true`. What happens in this case is handled in the child objects, because the behavior for each button can be very different.
* `is_selectable` - if you don’t want the button to be selectable yet, turn this to `false`. Button will be rendered as disabled and will not be selectable.

All buttons have `spr_menu_button` sprite assigned to it and the code changes only its subimage. `spr_menu_button` sprite consists of three subimages in order to not use three separate images. Description of subimages:

* `0` for unselected state. Button will use this subimage when the `is_pressed` is `false` and `is_selectable` is true.
* `1` for selected and hovered states. It displays in two cases: 
*  * The button `is_pressed` and `is_selectable`.
*  * Player hovers with mouse above it.
* `2` for disabled button. Displays if `is_selectable` is set to `false`. If you see this subimage, the button is disabled and ignores all interactions.

##### New Game button
Pressing this button starts the game. Once pressed, it spawns the `obj_next_room_fade_in` instance, which smoothly transitions to the next room.

##### Sounds button
Pressing this button mutes or unmutes `sound_audiogroup` audio group. This button is disabled by default since this project assumes you do not have sounds yet and you use this button as a placeholder for now.
Once you have your sounds in, feel free to remove `is_selectable = false` line.

##### Music button
Pressing this button mutes or unmutes `music_audiogroup` audio group. This button is disabled by default since this project assumes you do not have the music yet and you use this button as a placeholder for now.
Once you have your music in, feel free to remove `is_selectable = false` line.

##### Quit Game button
As you probably guessed, this button ends the game with `game_end();`. This button checks whether the user is running the game locally or in the browser. If the user runs the game in the browser, this button is disabled. You most likely do not want the user to quit the game when they are running it embedded in the browser, since it would simply close it in the embed and the rest of the page would stay intact. Users "quit" the game by closing the tab.

### Game Room One
This is a room for your game. This room is started with `obj_game_room_one_starter` object that contains only a fade out effect in order to start the game smoothly. Have fun with your game!

### Credits
Credits room is started with `obj_credits_starter` object. This object displays up to 10 lines. Feel free to add more (or remove some). Once the timer set it the `countdown` variable runs out, game goes to the Main Menu immediately.

## Typewriter dialog
The project includes the "typewriter" type of dialog. This means that the letters in the dialog appear gradually letter by letter. Text dialogs are loaded at the beginning from the `text` array. 
Every time when the new letter appears, the `snd_typewriter` sound is played. This sound is empty, so replace it with your own sound. Or keep it empty, I mean, who am I to tell you what to do? 
User can skip the typewriter effect and show the whole dialog immediately by pressing `space`. If the whole dialog is displayed, pressing `space` starts the next line (or dismisses the dialog if the last line was displayed). 
If the player does not interact with the dialog, it goes to the next line after some time, or dismisses itself if the dialog displays the last text in the array. This can be adjusted in `delay_overload` variable.
The whole dialog is aligned to the bottom with adjustable margin and text padding. Draw even displays the dialog background from `spr_dialog_back` using Nine Slice. Replace `spr_dialog_back` with your own dialog background.

`obj_dialog_handler` object contains three important variables which you will need in order to adjust the dialog properly:

* `dialog_indentation` - sets the dialog container margin (how far away from the view edge it is).
* `text_indentation` - sets the text padding (how far away the text is from the dialog container edge).
* `dialog_height` - adjusts the dialog height.

You can summon the dialog using the following piece of code:
```
_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
with(_inst)
{
	text[0] = "What a wonderful day it is!";
	text[1] = "Though it does not beat being on the computer all day.";
	text[2] = "Well, back to the coding!";
}
```

There is no need to adjust `x` or `y` positions nor depth, since the dialog will adjust itself completely on its own regardless of these parameters. Once the dialog is finished, `obj_dialog_handler` instance destroys itself.

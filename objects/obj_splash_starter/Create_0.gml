/// @description Start the splash screen
// Fix HTML5 scaling right away
instance_create_depth(x, y, 0, obj_window_size_handler);

// Variables that check whether the logo flashed fully or not
displaying_splash = true;
displayed_splash = false;

// How quickly logos change
splash_speed = 0.01;

// Currently displayed logo
logo_displaying = 1;

// How long is logo displayed at 100 % transparency in seconds
logo_delay = 2;

// Convert to ticks and add to helper variable
logo_delay = logo_delay * 60;
current_delay = logo_delay;

// Needs to be 0, because first logo is fading in
alpha_image = 0;

// Load audio groups
audio_group_load(music_audiogroup);
audio_group_load(sound_audiogroup);

// FOR DEBUGGING. Go to any room
//room_goto(room_main_menu);
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

// Needs to be 0, because first logo is fading in
alpha_image = 0;
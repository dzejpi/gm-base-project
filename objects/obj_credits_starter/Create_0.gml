/// @description Set credits variables
// Fade out
instance_create_depth(x, y, 0, obj_game_start_fade_out);

indentation = 48;

// Text colors
button_text_color = make_colour_rgb(236, 235, 231);
shadow_text_color = make_colour_rgb(128, 123, 122);

// How long credits are displayed
countdown = 4000;

// Credits are not ended yet
credits_ended = false;
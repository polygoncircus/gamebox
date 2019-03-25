
void setup() {
  Hid_keys hid_keys=new Hid_keys();
/* default keys */
  hid_keys.set_key_report(0, MODIFIER_NONE, KEY_ARROW_UP, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(1, MODIFIER_NONE, KEY_ARROW_DOWN, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(2, MODIFIER_NONE, KEY_ARROW_LEFT, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(3, MODIFIER_NONE, KEY_ARROW_RIGHT, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);  

  hid_keys.set_key_report(4, MODIFIER_NONE, KEY_RETURN, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(5, MODIFIER_NONE, KEY_SPACE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(6, MODIFIER_NONE, KEY_1, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(7, MODIFIER_NONE, KEY_2, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);

  hid_keys.set_key_report(8, MODIFIER_NONE, KEY_W, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(9, MODIFIER_NONE, KEY_A, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(10, MODIFIER_NONE, KEY_S, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(11, MODIFIER_NONE, KEY_D, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);

/* Try the below for mouse keys! */

/*
// left button
  hid_keys.set_mouse_report(0, (byte)1, (byte)0, (byte)0, (byte)0, (byte)0, (byte)0);
// right button
  hid_keys.set_mouse_report(1, (byte)2, (byte)0, (byte)0, (byte)0, (byte)0, (byte)0);
  
  hid_keys.set_mouse_report(2, (byte)0, (byte)0, (byte)-5, (byte)0, (byte)0, (byte)0);
  hid_keys.set_mouse_report(3, (byte)0, (byte)5, (byte)0, (byte)0, (byte)0, (byte)0);
  hid_keys.set_mouse_report(4, (byte)0, (byte)0, (byte)5, (byte)0, (byte)0, (byte)0);
  hid_keys.set_mouse_report(5, (byte)0, (byte)-5, (byte)0, (byte)0, (byte)0, (byte)0);

  // middle button
  hid_keys.set_mouse_report(5, (byte)4, (byte)0, (byte)0, (byte)0, (byte)0, (byte)0);

  hid_keys.set_key_report(7, MODIFIER_NONE, KEY_A, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(8, MODIFIER_NONE, KEY_B, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(9, MODIFIER_NONE, KEY_C, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(10, MODIFIER_NONE, KEY_D, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
  hid_keys.set_key_report(11, MODIFIER_NONE, KEY_E, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE, KEY_NONE);
*/

  hid_keys.generate_output();

  start_HID_transfer(hid_keys.data);
}
void draw() {
}




void stop() {
  if (null!=hid_mgr)
    hid_mgr.release();
} 


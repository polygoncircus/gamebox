// Bits in usbHidKeyboardInput.modifiers
final byte MODIFIER_NONE          =byte((0));
final byte MODIFIER_CONTROL_LEFT  =byte((1<<0));
final byte MODIFIER_SHIFT_LEFT    =byte((1<<1));
final byte MODIFIER_ALT_LEFT      =byte((1<<2));
final byte MODIFIER_GUI_LEFT      =byte((1<<3));
final byte MODIFIER_CONTROL_RIGHT =byte((1<<4));
final byte MODIFIER_SHIFT_RIGHT   =byte((1<<5));
final byte MODIFIER_ALT_RIGHT     =byte((1<<6));
final byte MODIFIER_GUI_RIGHT     =byte((1<<7));

// Values for usbHidKeyboardInput.keyCodes
// Only the key codes for common keys are defined here. See Hut1_12.pdf for a full list.
final byte KEY_NONE               =byte(0x00);
final byte KEY_A                  =byte(0x04);
final byte KEY_B                  =byte(0x05);
final byte KEY_C                  =byte(0x06);
final byte KEY_D                  =byte(0x07);
final byte KEY_E                  =byte(0x08);
final byte KEY_F                  =byte(0x09);
final byte KEY_G                  =byte(0x0A);
final byte KEY_H                  =byte(0x0B);
final byte KEY_I                  =byte(0x0C);
final byte KEY_J                  =byte(0x0D);
final byte KEY_K                  =byte(0x0E);
final byte KEY_L                  =byte(0x0F);
final byte KEY_M                  =byte(0x10);
final byte KEY_N                  =byte(0x11);
final byte KEY_O                  =byte(0x12);
final byte KEY_P                  =byte(0x13);
final byte KEY_Q                  =byte(0x14);
final byte KEY_R                  =byte(0x15);
final byte KEY_S                  =byte(0x16);
final byte KEY_T                  =byte(0x17);
final byte KEY_U                  =byte(0x18);
final byte KEY_V                  =byte(0x19);
final byte KEY_W                  =byte(0x1A);
final byte KEY_X                  =byte(0x1B);
final byte KEY_Y                  =byte(0x1C);
final byte KEY_Z                  =byte(0x1D);
final byte KEY_1                  =byte(0x1E);
final byte KEY_2                  =byte(0x1F);
final byte KEY_3                  =byte(0x20);
final byte KEY_4                  =byte(0x21);
final byte KEY_5                  =byte(0x22);
final byte KEY_6                  =byte(0x23);
final byte KEY_7                  =byte(0x24);
final byte KEY_8                  =byte(0x25);
final byte KEY_9                  =byte(0x26);
final byte KEY_0                  =byte(0x27);
final byte KEY_RETURN             =byte(0x28);
final byte KEY_ESCAPE             =byte(0x29);
final byte KEY_BACKSPACE          =byte(0x2A);
final byte KEY_TAB                =byte(0x2B);
final byte KEY_SPACE              =byte(0x2C);
final byte KEY_MINUS              =byte(0x2D);
final byte KEY_EQUAL              =byte(0x2E);
final byte KEY_BRACKET_LEFT       =byte(0x2F);
final byte KEY_BRACKET_RIGHT      =byte(0x30);
final byte KEY_BACKSLASH          =byte(0x31);
final byte KEY_EUROPE_1           =byte(0x32);
final byte KEY_SEMICOLON          =byte(0x33);
final byte KEY_APOSTROPHE         =byte(0x34);
final byte KEY_GRAVE              =byte(0x35);
final byte KEY_COMMA              =byte(0x36);
final byte KEY_PERIOD             =byte(0x37);
final byte KEY_SLASH              =byte(0x38);
final byte KEY_CAPS_LOCK          =byte(0x39);
final byte KEY_F1                 =byte(0x3A);
final byte KEY_F2                 =byte(0x3B);
final byte KEY_F3                 =byte(0x3C);
final byte KEY_F4                 =byte(0x3D);
final byte KEY_F5                 =byte(0x3E);
final byte KEY_F6                 =byte(0x3F);
final byte KEY_F7                 =byte(0x40);
final byte KEY_F8                 =byte(0x41);
final byte KEY_F9                 =byte(0x42);
final byte KEY_F10                =byte(0x43);
final byte KEY_F11                =byte(0x44);
final byte KEY_F12                =byte(0x45);
final byte KEY_PRINT_SCREEN       =byte(0x46);
final byte KEY_SCROLL_LOCK        =byte(0x47);
final byte KEY_PAUSE              =byte(0x48);
final byte KEY_INSERT             =byte(0x49);
final byte KEY_HOME               =byte(0x4A);
final byte KEY_PAGE_UP            =byte(0x4B);
final byte KEY_DELETE             =byte(0x4C);
final byte KEY_END                =byte(0x4D);
final byte KEY_PAGE_DOWN          =byte(0x4E);
final byte KEY_ARROW_RIGHT        =byte(0x4F);
final byte KEY_ARROW_LEFT         =byte(0x50);
final byte KEY_ARROW_DOWN         =byte(0x51);
final byte KEY_ARROW_UP           =byte(0x52);
final byte KEY_NUM_LOCK           =byte(0x53);
final byte KEY_KEYPAD_DIVIDE      =byte(0x54);
final byte KEY_KEYPAD_MULTIPLY    =byte(0x55);
final byte KEY_KEYPAD_SUBTRACT    =byte(0x56);
final byte KEY_KEYPAD_ADD         =byte(0x57);
final byte KEY_KEYPAD_ENTER       =byte(0x58);
final byte KEY_KEYPAD_1           =byte(0x59);
final byte KEY_KEYPAD_2           =byte(0x5A);
final byte KEY_KEYPAD_3           =byte(0x5B);
final byte KEY_KEYPAD_4           =byte(0x5C);
final byte KEY_KEYPAD_5           =byte(0x5D);
final byte KEY_KEYPAD_6           =byte(0x5E);
final byte KEY_KEYPAD_7           =byte(0x5F);
final byte KEY_KEYPAD_8           =byte(0x60);
final byte KEY_KEYPAD_9           =byte(0x61);
final byte KEY_KEYPAD_0           =byte(0x62);
final byte KEY_KEYPAD_DECIMAL     =byte(0x63);
final byte KEY_EUROPE_2           =byte(0x64);
final byte KEY_APPLICATION        =byte(0x65);
final byte KEY_POWER              =byte(0x66);
final byte KEY_KEYPAD_EQUAL       =byte(0x67);
final byte KEY_F13                =byte(0x68);
final byte KEY_F14                =byte(0x69);
final byte KEY_F15                =byte(0x6A);
final byte KEY_CONTROL_LEFT       =byte(0xE0);
final byte KEY_SHIFT_LEFT         =byte(0xE1);
final byte KEY_ALT_LEFT           =byte(0xE2);
final byte KEY_GUI_LEFT           =byte(0xE3);
final byte KEY_CONTROL_RIGHT      =byte(0xE4);
final byte KEY_SHIFT_RIGHT        =byte(0xE5);
final byte KEY_ALT_RIGHT          =byte(0xE6);
final byte KEY_GUI_RIGHT          =byte(0xE7);

class Hid_keys { 
  String output; 
  byte data[]=new byte[129];
  Hid_keys() {
  } 
  void set_key_report(int key_num, byte modifier, byte key0, byte key1, byte key2, byte key3, byte key4, byte key5) { 
    data[8*key_num+0]=modifier;
    data[8*key_num+1]=0;
    data[8*key_num+2]=key0;
    data[8*key_num+3]=key1;
    data[8*key_num+4]=key2;
    data[8*key_num+5]=key3;
    data[8*key_num+6]=key4;
    data[8*key_num+7]=key5;
  }

  void set_mouse_report(int key_num, byte key0, byte key1, byte key2, byte key3, byte key4, byte key5) { 
    data[8*key_num+0]=0;
    data[8*key_num+1]=3;
    data[8*key_num+2]=key0;
    data[8*key_num+3]=key1;
    data[8*key_num+4]=key2;
    data[8*key_num+5]=key3;
    data[8*key_num+6]=key4;
    data[8*key_num+7]=key5;
  }

  void set_consumer_report(int key_num, byte key0) { 
    data[8*key_num+0]=0;
    data[8*key_num+1]=2;
    data[8*key_num+2]=key0;
    data[8*key_num+3]=0;
    data[8*key_num+4]=0;
    data[8*key_num+5]=0;
    data[8*key_num+6]=0;
    data[8*key_num+7]=0;
  }
  String generate_output() {
    byte checksum=0;
    for (int i=0;i<128;i++) {   
      checksum+=data[i];
    }
    data[128]=checksum;
    output="s";
    for (int i=0;i<129;i++) { 
      int value=(int) data[i] & 0xff;
      output=output+hex(value, 2);
    }
    return output;
  }

  String generate_output_array() {
    output="";
    for (int i=0;i<129;i++) { 
      int value=(int) data[i] & 0xff;
      output=output+"0x"+hex(value, 2)+",";
    }
    return output;
  }
} 


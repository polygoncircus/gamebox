import com.codeminders.hidapi.HIDDeviceInfo;
import com.codeminders.hidapi.HIDManager;
import java.util.*;

private static final long serialVersionUID = 619732094067421147L;
HIDManager hid_mgr = null;


public void start_HID_transfer(byte map_data[])
{
  if (map_data.length!=129) {
    println("Length not correct");
    return;
  }

  String os = System.getProperty("os.name", "win").toLowerCase();
  String arch = System.getProperty("os.arch", "x86");
  boolean x64 = arch.indexOf("_64") != -1;
  String library, library_file;
  HIDDevice target_device=null;
  byte buf[]=new byte[17];
  buf[0]=4;
  for (int i=1;i<=16;i++) buf[i]=(byte)0xFF;
  //println(x64);

  if (os.indexOf("win") != -1)
  {
    library = "hidapi-windows.dll";
    library_file = sketchPath("")+"code\\native\\win\\hidapi-jni-32.dll";
  } 
  else if (os.indexOf("mac") != -1)
  {
    library = "hidapi-mac.so";
    library_file = sketchPath("")+"code/native/mac/libhidapi-jni-32.jnilib";
  } 
  else
  {
    library = "hidapi-unix.so";
    library_file = sketchPath("")+"code/native/linux/libhidapi-jni-32.so";
  }
  System.out.println("Using library: " + library);
  //println(library_file);
  try
  {
    System.load(library_file);
    System.out.println("Native library loaded");
    System.out.println("Listing HID devices");

    hid_mgr = HIDManager.getInstance();

    for (HIDDeviceInfo info : hid_mgr.listDevices()) {
      //println(info.toString());
      println(info.getProduct_string());
      if ((info.getProduct_string().contains("Bluefruit") || info.getProduct_string().contains("EZ-Key")) && (target_device==null)) {
        try {
          target_device=info.open();
          if (target_device!=null) {
            target_device.write(buf);
          }
        }
        catch (IOException e) {
          target_device.close();
          target_device=null;
          println("can not open properly");
        }
      }
    }

    if (target_device==null) {
      println("Could not find Bluefruit");
      return;
    }


    println("\nStart Commnucation, Reset command transmitted");
    if (target_device.readTimeout(buf, 1000)>0) {
      String resp=new String(Arrays.copyOfRange(buf, 1, buf.length), "US-ASCII");
      println("Module response: "+resp);
    }

    for (int j=0;j<9;j++) {
      buf[0]=4;
      if (j<8) {
        for (int i=1;i<=16;i++) buf[i]=map_data[j*16+i-1];
      }else{
        for (int i=1;i<=16;i++) buf[i]=0;
        buf[1]=map_data[128];
      }
      int checksum=0;
      for (int i=1;i<=16;i++) checksum+=(buf[i]+256)%256;
      checksum=checksum%256;
      target_device.write(buf);

      if (target_device.readTimeout(buf, 1000)>0) {
        String resp=new String(Arrays.copyOfRange(buf, 1, buf.length), "US-ASCII");
        println("Module response: "+resp);
        if (resp.startsWith("CS")) {
          int cs_module=Integer.parseInt(resp.substring(3, 5), 16);
          if (checksum==cs_module) 
            println("Checksum Match :)");
          else 
            println("Checksum Mismatch :(");
        }
      }
    }
  } 
  catch (Exception ex)
  {
    ex.printStackTrace();
  }
}


// ignore_for_file: non_constant_identifier_names

import 'dart:io';

abstract class RoomBookingServices {
  late String _username;
  late int _pin;
  late String _adminUsername;
  late int _adminPin;
  void removeRooms(String hname, String htype, int rnum);
  void addRooms(String hanme, String htype, int rnum);
  void addHotels(String hnames, int rooms, String hoteltype);
  void removeHotels(String hname, String htype);
  void bookings();
  void display_vip_Hotels();
  void display_normal_Hotels();
  void display_royal_Hotels();
  void loginPage();
  void register();
  void admin();
  void user();
}

class RoomBooking extends RoomBookingServices {
  var bookingDetails = {};
  Map vip_Hotels = <String, int>{};
  Map normal_Hotels = <String, int>{};
  Map royal_Hotels = <String, int>{};
  RoomBooking() {
    _username = "";
    _pin = 0;
    _adminUsername = "Admin";
    _adminPin = 12345;
  }

//Function to add hotels
  @override
  void addHotels(String hnames, int rooms, String hotelType) {
    if (hotelType == "normal" || hotelType == "Normal") {
      normal_Hotels[hnames] = rooms;
    } else if (hotelType == "vip" || hotelType == "Vip") {
      vip_Hotels[hnames] = rooms;
    } else {
      royal_Hotels[hnames] = rooms;
    }
  }

//Function to remove hotels
  @override
  void removeHotels(String hname, String htype) {
    if (htype == "vip" || htype == "Vip") {
      bool check = vip_Hotels.containsKey(hname);
      if (check) {
        vip_Hotels.remove(hname);
        print("${hname} removed");
      } else {
        print("${hname} not found in vip hotels");
      }
    } else if (htype == "normal" || htype == "Normal") {
      bool check = normal_Hotels.containsKey(hname);
      if (check) {
        normal_Hotels.remove(hname);
        print("${hname} removed");
      } else {
        print("${hname} not found in normal hotels");
      }
    } else if (htype == "royal" || htype == "Royal") {
      bool check = royal_Hotels.containsKey(hname);
      if (check) {
        royal_Hotels.remove(hname);
        print("${hname} removed");
      } else {
        print("${hname} not found in royal hotels");
      }
    } else {
      print("Enter a valid hotel type");
    }
  }

//Function to add rooms
  @override
  void addRooms(String hname, String htype, int rnum) {
    if (htype == "vip" || htype == "Vip") {
      bool check = vip_Hotels.containsKey(hname);
      if (check) {
        int temp = vip_Hotels[hname];
        temp = temp + rnum;
        vip_Hotels[hname] = temp;
        print("${rnum} rooms added to ${hname}");
      } else {
        print("${hname} not found in vip hotels");
      }
    } else if (htype == "normal" || htype == "Normal") {
      bool check = normal_Hotels.containsKey(hname);
      if (check) {
        int temp = normal_Hotels[hname];
        temp = temp + rnum;
        normal_Hotels[hname] = temp;
        print("${rnum} rooms added to ${hname}");
      } else {
        print("${hname} not found in normal hotels");
      }
    } else if (htype == "royal" || htype == "Royal") {
      bool check = royal_Hotels.containsKey(hname);
      if (check) {
        int temp = royal_Hotels[hname];
        temp = temp + rnum;
        royal_Hotels[hname] = temp;
        print("${rnum} rooms added to ${hname}");
      } else {
        print("${hname} not found in royal hotels");
      }
    } else {
      print("Enter a valid hotel type");
    }
  }

//Function to remove rooms
  @override
  void removeRooms(String hname, String htype, int rnum) {
    if (htype == "vip" || htype == "Vip") {
      bool check = vip_Hotels.containsKey(hname);
      if (check) {
        int temp = vip_Hotels[hname];
        temp = temp - rnum;
        vip_Hotels[hname] = temp;
        print("${rnum} rooms removed from ${hname}");
      } else {
        print("${hname} not found in vip hotels");
      }
    } else if (htype == "normal" || htype == "Normal") {
      bool check = normal_Hotels.containsKey(hname);
      if (check) {
        int temp = normal_Hotels[hname];
        temp = temp - rnum;
        normal_Hotels[hname] = temp;
        print("${rnum} rooms removed from ${hname}");
      } else {
        print("${hname} not found in normal hotels");
      }
    } else if (htype == "royal" || htype == "Royal") {
      bool check = royal_Hotels.containsKey(hname);
      if (check) {
        int temp = royal_Hotels[hname];
        temp = temp - rnum;
        royal_Hotels[hname] = temp;
        print("${rnum} rooms removed from ${hname}");
      } else {
        print("${hname} not found in royal hotels");
      }
    } else {
      print("Enter a valid hotel type");
    }
  }

//Function to display normal hotels
  @override
  void display_normal_Hotels() {
    List<dynamic> hotelname = [];
    List<dynamic> hotelrooms = [];
    for (var i in normal_Hotels.keys) {
      hotelname.add(i);
    }
    for (var j in normal_Hotels.values) {
      hotelrooms.add(j);
    }
    print("\nThe Normal Hotels are : ");
    int j = 1;
    for (int i = 0; i < hotelrooms.length; i++) {
      print(
          '$j. ${hotelname[i].toString().replaceAll("[", " ").replaceAll("]", " ")} \t:\t ${hotelrooms[i].toString().replaceAll("[", " ").replaceAll("]", " ")}');
      j++;
    }
  }

//Function to display royal hotels
  @override
  void display_royal_Hotels() {
    List<dynamic> hotelname = [];
    List<dynamic> hotelrooms = [];
    for (var i in royal_Hotels.keys) {
      hotelname.add(i);
    }
    for (var j in royal_Hotels.values) {
      hotelrooms.add(j);
    }
    print("\nThe Royal Hotels are : ");
    int j = 1;
    for (int i = 0; i < hotelrooms.length; i++) {
      print(
          '$j. ${hotelname[i].toString().replaceAll("[", " ").replaceAll("]", " ")} \t:\t ${hotelrooms[i].toString().replaceAll("[", " ").replaceAll("]", " ")}');
      j++;
    }
  }

//Function to display vip hotels
  @override
  void display_vip_Hotels() {
    List<dynamic> hotelname = [];
    List<dynamic> hotelrooms = [];
    for (var i in vip_Hotels.keys) {
      hotelname.add(i);
    }
    for (var j in vip_Hotels.values) {
      hotelrooms.add(j);
    }
    print("\nThe Vip Hotels are : ");
    int j = 1;
    for (int i = 0; i < hotelrooms.length; i++) {
      print(
          '$j. ${hotelname[i].toString().replaceAll("[", " ").replaceAll("]", " ")} \t:\t ${hotelrooms[i].toString().replaceAll("[", " ").replaceAll("]", " ")}');
      j++;
    }
  }

//Function for user room booking
  @override
  void bookings() {
    print("Enter the type of room you want");
    print("1. Normal\n2. Vip\n3. Royal");
    try {
      int n = int.parse(stdin.readLineSync().toString());
      switch (n) {
        case 1:
          if (normal_Hotels.isNotEmpty) {
            display_normal_Hotels();
            print("Normal Rooms cost Rs. 300 per day");
            double price = 300.0;
            print("Enter the hotel name");
            String hname = stdin.readLineSync().toString();
            print("Enter the total number of rooms you want");
            int rnum = int.parse(stdin.readLineSync().toString());
            price = price * rnum;
            bookingDetails["Customer"] = _username;
            bookingDetails["Hotel"] = hname;
            bookingDetails["Hotel Type"] = "Normal";
            bookingDetails["Price"] = 300.0;
            bookingDetails["Rooms"] = rnum;
            bookingDetails["Total Price"] = price;
            bookingDetails["Booked On"] = DateTime.now();

            //Removing rooms from hotels
            int temp = normal_Hotels[hname];
            temp = temp - rnum;
            normal_Hotels[hname] = temp;

            List<dynamic> bookingKey = [];
            List<dynamic> bookingValue = [];
            for (var i in bookingDetails.keys) {
              bookingKey.add(i);
            }
            for (var j in bookingDetails.values) {
              bookingValue.add(j);
            }
            print("\nThe Booking Details are : ");
            int j = 1;
            for (int i = 0; i < bookingValue.length; i++) {
              print(
                  '$j. ${bookingKey[i].toString().replaceAll("[", " ").replaceAll("]", " ")} \t:\t ${bookingValue[i].toString().replaceAll("[", " ").replaceAll("]", " ")}');
              j++;
            }
          } else {
            print("No Hotels Found");
          }
          break;

        case 2:
          if (vip_Hotels.isNotEmpty) {
            display_vip_Hotels();
            print("Vip Rooms cost Rs. 550 per day");
            double price = 550.0;
            print("Enter the hotel name");
            String hname = stdin.readLineSync().toString();
            print("Enter the total number of rooms you want");
            int rnum = int.parse(stdin.readLineSync().toString());
            price = price * rnum;
            bookingDetails["Customer"] = _username;
            bookingDetails["Hotel"] = hname;
            bookingDetails["Hotel Type"] = "Vip";
            bookingDetails["Price"] = 550.0;
            bookingDetails["Rooms"] = rnum;
            bookingDetails["Total Price"] = price;
            bookingDetails["Booked On"] = DateTime.now();

            //Removing rooms from hotels
            int temp = vip_Hotels[hname];
            temp = temp - rnum;
            vip_Hotels[hname] = temp;

            List<dynamic> bookingKey = [];
            List<dynamic> bookingValue = [];
            for (var i in bookingDetails.keys) {
              bookingKey.add(i);
            }
            for (var j in bookingDetails.values) {
              bookingValue.add(j);
            }
            print("\nThe Booking Details are : ");
            int j = 1;
            for (int i = 0; i < bookingValue.length; i++) {
              print(
                  '$j. ${bookingKey[i].toString().replaceAll("[", " ").replaceAll("]", " ")} \t:\t ${bookingValue[i].toString().replaceAll("[", " ").replaceAll("]", " ")}');
              j++;
            }
          } else {
            print("No Hotels Found");
          }
          break;
        case 3:
          if (royal_Hotels.isEmpty) {
            display_royal_Hotels();
            print("Vip Rooms cost Rs. 780 per day");
            double price = 780.0;
            print("Enter the hotel name");
            String hname = stdin.readLineSync().toString();
            print("Enter the total number of rooms you want");
            int rnum = int.parse(stdin.readLineSync().toString());
            price = price * rnum;
            bookingDetails["Customer"] = _username;
            bookingDetails["Hotel"] = hname;
            bookingDetails["Hotel Type"] = "Royal";
            bookingDetails["Price"] = 780.0;
            bookingDetails["Rooms"] = rnum;
            bookingDetails["Total Price"] = price;
            bookingDetails["Booked On"] = DateTime.now();

            //Removing rooms from hotels
            int temp = royal_Hotels[hname];
            temp = temp - rnum;
            royal_Hotels[hname] = temp;

            List<dynamic> bookingKey = [];
            List<dynamic> bookingValue = [];
            for (var i in bookingDetails.keys) {
              bookingKey.add(i);
            }
            for (var j in bookingDetails.values) {
              bookingValue.add(j);
            }
            print("\nThe Booking Details are : ");
            int j = 1;
            for (int i = 0; i < bookingValue.length; i++) {
              print(
                  '$j. ${bookingKey[i].toString().replaceAll("[", " ").replaceAll("]", " ")} \t:\t ${bookingValue[i].toString().replaceAll("[", " ").replaceAll("]", " ")}');
              j++;
            }
          } else {
            print("No Hotels Found");
          }
          break;
        default:
          print("Enter a valid choice");
      }
    } on FormatException catch (e) {
      print("Enter a valid number ${e}");
    }
  }

  @override
  void loginPage() {
    String uname;
    int p;
    print("Enter the username :");
    uname = stdin.readLineSync().toString();
    print("Enter the pincode : ");
    p = int.parse(stdin.readLineSync().toString());
    if (_username == uname && _pin == p) {
      user();
    } else if (uname == _adminUsername && p == _adminPin) {
      admin();
    }
  }

  @override
  void register() {
    String uname;
    int p;
    print("Create a username");
    uname = stdin.readLineSync().toString();
    print("Create a password");
    p = int.parse(stdin.readLineSync().toString());
    _username = uname;
    _pin = p;
  }

  @override
  void admin() {
    int n;
    do {
      print("\nChoose an option");
      print(
          "1. Add Hotels\n2. Display Hotels\n3. Remove Hotels\n4. Add Rooms\n5. Remove Rooms\n6. Logout");

      n = int.parse(stdin.readLineSync().toString());
      try {
        switch (n) {
          case 1: //adding hotels by admin
            print("Enter the hotel type (normal,vip,royal)");
            String type = stdin.readLineSync().toString();
            print("Enter Hotel Name : ");
            String hname = stdin.readLineSync().toString();
            print("Enter the number of rooms");
            int numroom = int.parse(stdin.readLineSync().toString());
            addHotels(hname, numroom, type);
            break;
          case 2: //diplaying hotels based on type
            print("select the type of Hotel");
            print("1. Normal\n2. Vip\n3. Royal");
            int m = int.parse(stdin.readLineSync().toString());
            if (m == 1) {
              display_normal_Hotels();
            } else if (m == 2) {
              display_vip_Hotels();
            } else {
              display_royal_Hotels();
            }
            break;

          case 3: //removing hotels
            print("Enter the hotel type(vip,normal,royal) to remove");
            String htype = stdin.readLineSync().toString();
            print("Enter the hotel name to delete");
            String hname = stdin.readLineSync().toString();

            removeHotels(hname, htype);
            break;
          case 4: //adding rooms to existing hotels
            print(
                "Enter the hotel type, Hotel name and number of rooms to add");
            String htype = stdin.readLineSync().toString();
            String hname = stdin.readLineSync().toString();
            int rnum = int.parse(stdin.readLineSync().toString());
            addRooms(hname, htype, rnum);
            break;
          case 5: //removing rooms from existing hotels
            print(
                "Enter the hotel type, Hotel name and number of rooms to remove");
            String htype = stdin.readLineSync().toString();
            String hname = stdin.readLineSync().toString();
            int rnum = int.parse(stdin.readLineSync().toString());
            removeRooms(hname, htype, rnum);
            break;
          case 6:
            break;
          default:
            print("Enter valid choice");
        }
      } on FormatException catch (e) {
        print("Enter a valid input : ${e}");
      }
    } while (n != 6);
  }

  @override
  void user() {
    int n;
    do {
      print("\nChoose an option");
      print("1. Display Hotels\n2. Book Room\n 3. Logout");
      n = int.parse(stdin.readLineSync().toString());
      switch (n) {
        case 1:
          display_normal_Hotels();
          display_vip_Hotels();
          display_royal_Hotels();
          break;
        case 2:
          bookings();
          break;
        case 3:
          break;
        default:
          print("Enter a valid choice");
      }
    } while (n != 3);
  }
}

void main() {
  RoomBooking R = RoomBooking();
  int n;
  do {
    print("\n.....Welcome to Room Booking Services.....");
    print("1. Login\n2. Register\n3. Exit");
    n = int.parse(stdin.readLineSync().toString());
    switch (n) {
      case 1:
        R.loginPage();
        break;
      case 2:
        R.register();
        break;
      case 3:
        break;
      default:
        print("Enter a valid choice");
    }
  } while (n != 3);
}

import 'package:flutter/material.dart';

class MyModel with ChangeNotifier{


  bool loggedin = false;
  String user_email;
   String datesChosen = "Click here";
   String checkin = "Not Specified";
   String checkout = "Not Specified";
   String email;
   String name;
   String roomtype = "Click here";
   String phonenumber;
   String hotelname;
   String roomname;
      String mainimage;
            String location;
                        String customer = "207665434678";
                        bool start = true;




   void updateData1 (data){



           datesChosen = data;
           print(datesChosen);

           notifyListeners();





   }

    void updateData2 (data){



           roomtype = data;
           print(roomtype);

           notifyListeners();





   }


void updatedata3(data){



           
          
           checkin = data;

           notifyListeners();




   }

 

void updatedata4(data){



           
          
           checkout = data;

           notifyListeners();




   }



void updatedata5(data){



           
          
           roomname = data;

           notifyListeners();




   }

   
void updatedata6(data){



           
          
           hotelname = data;

           notifyListeners();




   }



   
void updatedata7(data){



           
          
           mainimage = data;

           notifyListeners();




   }

   void updatedata8(data){



           
          
          location = data;

           notifyListeners();




   }

     void updatedata9(bool data){



           
          
          start = data;

           notifyListeners();




   }


   void updateloggedin(bool data){



       loggedin = data;

notifyListeners();

   }

     void update_user_email(String data){



       user_email = data;

notifyListeners();

   }








  
}
  
   

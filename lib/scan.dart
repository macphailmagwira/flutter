import 'package:flutter/material.dart';
import 'package:hotel_search/styles/texts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cupertino_setting_control/cupertino_setting_control.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flip_card/flip_card.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:twitter_qr_scanner/QrScannerOverlayShape.dart';
import 'package:twitter_qr_scanner/twitter_qr_scanner.dart';
import 'package:flutter/services.dart';






class ScanScreen extends StatefulWidget {
  @override
  Scan createState() => Scan();
}


class Scan extends State<ScanScreen> {

  GlobalKey qrKey = GlobalKey();
  QRViewController controller;

   
  @override
  void initState() {
   
    super.initState();




    
  }
  







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
    
      body: 
       
   
                  QRView(
          key: qrKey,
          overlay: QrScannerOverlayShape(
              borderRadius: 16,
              borderColor: Colors.white,
              borderLength: 120,
              borderWidth: 10,
              cutOutSize: 250),
          onQRViewCreated: _onQRViewCreate,
          data: "207665434678",// Showing qr code data
        )

          
            
     );



                        







   


                         



                      

   





                 
                 
                 
                 
                 
                 
                 
                
    
         
                
  
  
    
    
   
   
   
   
   
     
     
    
    
  }
  void _onQRViewCreate(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        HapticFeedback.lightImpact();

        print("=============================================================================QRCode: $scanData");
      });
    });
  }


   @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

}


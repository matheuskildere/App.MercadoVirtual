import 'package:AppMercadoVirtual/pages/home/controller/home_controller.dart';
import 'package:AppMercadoVirtual/shared/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qr_reader/flutter_qr_reader.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

class QRScanPage extends StatefulWidget {
  @override
  _QRScanPageState createState() => _QRScanPageState();
}

class _QRScanPageState extends State<QRScanPage> {
  QrReaderViewController _controller;
  String data;

  @override
  Widget build(BuildContext context) {
    HomeController _homeController = Provider.of<HomeController>(context);
    
    return Scaffold(
      body: FutureBuilder<PermissionStatus>(
        future: Permission.camera.status,
        builder:(context, snap){
          if (snap.hasData && !snap.hasError) {
            if (snap.data != PermissionStatus.denied) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  
                  Text("Aponte a camera para o QR Code do Mercado Livre",textAlign: TextAlign.center, style: TextStyle(fontSize: 25, color: colorGreyText),),
                  SizedBox(height: 20,),
                  Center(
                    child: Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: QrReaderView(
                        width: 250,
                        height: 250,
                        callback: (container){
                          this._controller = container;
                          _controller.startCamera((String v, List<Offset> offsets) {
                            print([v, offsets]);
                            setState(() {
                              data = v;
                            });
                            _controller.stopCamera();
                          });
                        },
                      ),
                    ),
                  ),
                ],
              );
            }else{
              return Center(
                child: FlatButton(
                  onPressed: () async {
                    var status = await Permission.camera.request();
                    if (status.isUndetermined) {
                      // We didn't ask for permission yet.
                    }
                  },
                  child: Text("PERMITIR CAMERA"),
                ),
              );
            }
          }
          return Center(child: CircularProgressIndicator());
        }
      ),
    );
  }
}

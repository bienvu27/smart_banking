import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

class DashBoardFloatingActionButton extends StatelessWidget {
  const DashBoardFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(border_148),
      ),
      shadowColor: PRIMARY_COLOR,
      child: CircleAvatar(
        radius: border_50,
        backgroundColor: clr_white,
        child: FloatingActionButton(
          backgroundColor: PRIMARY_COLOR,
          onPressed: () {
            scanQRCode();
          },
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: width_2,
              color: clr_white,
            ),
            borderRadius: BorderRadius.circular(border_148),
          ),
          child: const Icon(Icons.qr_code_2),
        ),
      ),
    );
  }

  void scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.QR);

      // if (!mounted) return;

      // setState(() {
      //   getResult = qrCode;
      // });
      print("QRCode_Result:--");
      print(qrCode);
    } on PlatformException {
      // getResult = 'Failed to scan QR Code.';
    }
  }
}

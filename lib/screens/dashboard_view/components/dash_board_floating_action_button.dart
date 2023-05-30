import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/style/colors.dart';
import '../../../res/resources/assets.dart';

class DashBoardFloatingActionButton extends StatelessWidget {
  const DashBoardFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: clr_white,
      child: FloatingActionButton(
        backgroundColor: PRIMARY_COLOR,
        onPressed: () {
          scanQRCode();
        },
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: clr_white,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: SvgPicture.asset(
          home_qr_code,
          width: 22,
        ),
      ),
    );
  }

  void scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);

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

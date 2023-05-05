import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../../../main.dart';
import '../../../components/app_bar/app_bar_component.dart';
import '../../../components/button/button_component.dart';
import 'package:image/image.dart' as img;
import 'dart:math' as Math;
import 'package:image/image.dart' as prefix;

class PhotoIdScreen extends StatefulWidget {
  final String? sideID;

  const PhotoIdScreen({Key? key, this.sideID}) : super(key: key);

  @override
  State<PhotoIdScreen> createState() => _PhotoIdScreenState();
}

var png_khongchuploasang = "assets/images/khongchuploasang.png";
var png_khongchupmatgoc = "assets/images/khongchupmatgoc.png";
var png_khongchupquamo = "assets/images/khongchupquamo.png";
var svg_ic_warning = "assets/svg/ic_warning.svg";
var svg_ic_checkbox = "assets/svg/ic_checkbox.svg";

class _PhotoIdScreenState extends State<PhotoIdScreen> {
  CameraController? controller;
  File? fileImageView;
  File? fileConfirm;
  String? pathFrontEnd;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initCamera();
    if (widget.sideID == "front") {
      Future.delayed(Duration.zero, () {
        showModalBottomSheet(
            isDismissible: false,
            enableDrag: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(border_16),
                  topLeft: Radius.circular(border_16)),
            ),
            backgroundColor: Colors.white,
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return buildWidgetBottomSheet(context);
            });
      });
    }
  }

  Future<void> initCamera() async {
    controller = CameraController(
      cameras![0],
      ResolutionPreset.high,
      enableAudio: false,
    )..addListener(() {
        if (controller!.value.hasError) {
          throw CameraException(
            'CameraController exception',
            controller!.value.errorDescription,
          );
        }
      });
    try {
      await controller!.initialize().then((_) {
        setState(() {});
      });
    } catch (e) {
      rethrow;
    } finally {}
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller!.dispose();
    fileImageView = null;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * .9;
    final height = width / (5 / 3.5);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: '',
        callback: () => Get.back(),
      ),
      body: fileImageView != null
          ? Padding(
              padding: EdgeInsets.only(bottom: height_20),
              child: Column(
                children: [
                  SizedBox(
                    height: height_32,
                  ),
                  SizedBox(
                    width: width,
                    child: Text(
                      "Vui lòng kiểm tra ảnh chụp mặt" +
                          (widget.sideID! == "front" ? " trước" : " sau") +
                          " CMND/CCCD \n Quý khách có muốn sử dụng ảnh này để xác thực?",
                      style: TextStyle(color: PRIMARY_COLOR),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: height_32,
                  ),
                  Container(
                      margin: EdgeInsets.only(
                        left: width_8,
                        right: width_8,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColorDark,
                              width: 2),
                          borderRadius: BorderRadius.circular(border_8)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(border_8),
                          child: Image.file(
                            fileImageView!,
                          ))),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                          child: ButtonComponent(
                        title: "Chụp lại",
                        bgColor: Colors.white,
                        callback: () {
                          resetImage(context);
                        },
                      )),
                      Expanded(
                          child: ButtonComponent(
                        title: "Tiếp tục",
                        bgColor: Colors.white,
                        callback: () {
                          onSubmit(context);
                        },
                      )),
                    ],
                  )
                ],
              ),
            )
          : Stack(
              alignment: Alignment.center,
              children: [
                CameraPreview(controller!),
                Align(
                  child: SizedBox(
                    width: width,
                    height: height,
                    child: CustomPaint(
                      painter: CameraPaint(Theme.of(context).primaryColorDark),
                    ),
                  ),
                ),
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(1),
                    BlendMode.srcOut,
                  ), // This one will create the magic
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.3),
                          backgroundBlendMode: BlendMode.color,
                        ), // This one will handle background + difference out
                      ),
                      Container(
                        width: width,
                        height: height,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(border_8)),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 15,
                  child: SafeArea(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: GestureDetector(
                        onTap: () async {
                          takePicture(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(height_2),
                          margin: EdgeInsets.only(bottom: height_8),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color:
                                      // amountFace!=1?Colors.white.withOpacity(.5):
                                      Colors.white,
                                  width: 2)),
                          child: Container(
                            padding: EdgeInsets.all(height_2),
                            decoration: BoxDecoration(
                                color:
                                    // amountFace!=1?Colors.white.withOpacity(.5):
                                    Colors.white,
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: height_28,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(
                          height: height_24,
                        ),
                        Text(
                          "Chụp ảnh mặt" +
                              (widget.sideID! == "front" ? " trước" : " sau") +
                              " CMND/CCCD",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: fontSize_14,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: height_24,
                        ),
                        SizedBox(
                          width: width * .9,
                          child: Text(
                            "Vui lòng đưa mặt" +
                                (widget.sideID! == "front"
                                    ? " trước"
                                    : " sau") +
                                " CMND/CCCD vào khung hình và nhấn chụp",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  Widget buildWidgetBottomSheet(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: height_8, horizontal: width_24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: height_4,
              width: MediaQuery.of(context).size.width / 7,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.5),
                  borderRadius: BorderRadius.circular(border_16)),
            ),
            SizedBox(
              height: height_16,
            ),
            Text(
              "Lưu ý khi chụp ảnh CMND, CCCD",
              style: TextStyle(
                  fontSize: fontSize_14,
                  color: PRIMARY_COLOR,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height_16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNote(png_khongchupquamo, "Không chụp quá mờ"),
                buildNote(png_khongchupmatgoc, "Không chụp mất góc"),
                buildNote(png_khongchuploasang, "Không chụp lóa sáng"),
              ],
            ),
            SizedBox(
              height: height_16,
            ),
            buildNoteVertical("Giấy tờ còn hạn sử dụng"),
            buildNoteVertical("Không sử dụng bản scan, photocopy"),
            buildNoteVertical(
                "Không chụp lại ảnh trên các thiết bị điện tử, di động"),
            SizedBox(
              height: height_16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width_12,
                ),
                SVGImageWidget(
                  url: svg_ic_warning,
                  color: clrRedWarning,
                  height: height_12,
                ),
                SizedBox(
                  width: width_16,
                ),
                Expanded(
                    child: Text(
                  'Nghiêm cấm việc sử dụng CMND/CCCD giả mạo, không chính chủ. Khách hàng chịu hoàn toàn trách nhiệm trước pháp luật về hình ảnh CMND/CCCD đã cung cấp',
                  style: TextStyle(color: clrRedWarning, fontSize: fontSize_10),
                ))
              ],
            ),
            SizedBox(
              height: height_24,
            ),
            SafeArea(
                child: ButtonComponent(
              title: "Tôi đã hiểu",
              bgColor: button_color_home,
              callback: () {
                Navigator.of(context).pop();
              },
            ))
          ],
        ));
  }

  Row buildNoteVertical(String content) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: width_4,
        ),
        CheckboxCustomWidget(
            height: height_12,
            isChecked: true,
            colorBG: PRIMARY_COLOR,
            colorBorder: Colors.transparent,
            colorIcon: Colors.white,
            margin: EdgeInsets.only(
                top: 0, bottom: height_8, left: width_8, right: width_8)),
        SizedBox(
          width: width_8,
        ),
        Flexible(
          child: Text(
            content,
            style: TextStyle(fontSize: fontSize_12),
            maxLines: 2,
          ),
        )
      ],
    );
  }

  Expanded buildNote(String image, String title) {
    return Expanded(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(right: width_4),
                child: LocalImageWidget(
                  url: image,
                  height: height_40,
                  width: MediaQuery.of(context).size.width / 5,
                  boxFit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: height_12,
                  width: height_12,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  child: Icon(
                    Icons.close,
                    size: height_12,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(),
          )
        ],
      ),
    );
  }

  void onSubmit(BuildContext context) {
    controller!.dispose();
    if (widget.sideID == "front") {
      Navigator.of(context).pop();
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PhotoIdScreen(sideID: "behind")));
    } else {}
  }

  void resetImage(BuildContext context) {
    fileImageView = null;
    initCamera();
    setState(() {});
  }

  Future<void> takePicture(BuildContext context) async {
    var file = await controller!.takePicture();
    handleImageView(context, file);
    // handleImageSendServer(context,file);
  }

  Future<void> handleImageView(BuildContext context, XFile file) async {
    var resultFile = File(file.path);
    var aspectRatio = controller!.value.aspectRatio;
    final src = img.decodeImage(resultFile.readAsBytesSync());
    final size = Size(
      context.size!.width * .95,
      (context.size!.width * .95) / (5 / 3.5),
    );

    // DialogAlert.showDialogAlertCancel(context, "${src.height}\n${src.width}\n${context.size.width}\n${context.size.height}");

    var newRect = Rect.fromLTWH(
      (src!.width - size.width * aspectRatio) / 2,
      (src.height - size.height * aspectRatio) / 2,
      size.width * aspectRatio,
      size.height * aspectRatio,
    );
    if (src.width > src.height) {
      // dùng cho thiết bị samsung
      newRect = Rect.fromLTWH(
        (src.width - size.height * aspectRatio) / 2,
        (src.height - size.width * aspectRatio) / 2,
        size.height * aspectRatio,
        size.width * aspectRatio,
      );
    }
    final imgCrop = img.copyCrop(
      src,
      x: newRect.left.floor(),
      y: newRect.top.floor(),
      width: newRect.width.floor(),
      height: newRect.height.floor(),
    );

    /// Tạo đường dẫn lưu ảnh sau khi chụp
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    int rand = new Math.Random().nextInt(10000);

    /// Convert data ảnh đã nén thành File
    setState(() {
      fileImageView = File('$path/img_$rand.jpg')
        ..writeAsBytesSync(prefix.encodeJpg(imgCrop, quality: 100));
    });
  }

  Future<void> handleImageSendServer(BuildContext context, XFile file) async {
    var resultFile = File(file.path);
    var aspectRatio = controller!.value.aspectRatio;
    final src = img.decodeImage(resultFile.readAsBytesSync());

    final size = Size(
      context.size!.width * ((src!.height / src.width) * .9),
      (context.size!.width * ((src.height / src.width) * .6)) / (5 / 3.5),
    );

    // DialogAlert.showDialogAlertCancel(context, "${src.height}\n${src.width}\n${context.size.width}\n${context.size.height}");

    var newRect = Rect.fromLTWH(
      (src.width - size.width * aspectRatio) / 2,
      (src.height - size.height * aspectRatio) / 2,
      size.width * aspectRatio,
      size.height * aspectRatio,
    );
    if (src.width > src.height) {
      // dùng cho thiết bị samsung
      newRect = Rect.fromLTWH(
        (src.width - size.height * aspectRatio) / 2,
        (src.height - size.width * aspectRatio) / 2,
        size.height * aspectRatio,
        size.width * aspectRatio,
      );
    }
    final imgCrop = img.copyCrop(
      src,
      x: newRect.left.floor(),
      y: newRect.top.floor(),
      width: newRect.width.floor(),
      height: newRect.height.floor(),
    );

    /// Tạo đường dẫn lưu ảnh sau khi chụp
    final tempDir = await getTemporaryDirectory();
    final path = tempDir.path;
    int rand = new Math.Random().nextInt(10000);

    /// Convert data ảnh đã nén thành File
    fileConfirm = File('$path/img_send_server_$rand.jpg')
      ..writeAsBytesSync(prefix.encodeJpg(imgCrop, quality: 100));
    pathFrontEnd = fileConfirm!.path;
    setState(() {});
  }
}

class SVGImageWidget extends StatelessWidget {
  final double? height;
  final Color? color;
  final double? width;
  final String? url;
  final BoxFit? boxFit;
  final BorderRadius? borderRadius;

  const SVGImageWidget(
      {Key? key,
      this.height,
      this.color,
      this.width,
      this.url,
      this.borderRadius,
      this.boxFit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(
        url!,
        width: width ?? height_20,
        height: height ?? height_20,
        color: color,
      ),
    );
  }
}

class CameraPaint extends CustomPainter {
  final Color color;

  CameraPaint(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.lineTo(width, 0);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.lineTo(0, 0);
    // canvas.drawPath(path, paint);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, width, height),
        Radius.circular(border_8),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CheckboxCustomWidget extends StatelessWidget {
  final isChecked;
  final colorBorder;
  final colorIcon;
  final EdgeInsets? margin;
  final colorBG;
  final height;

  const CheckboxCustomWidget(
      {Key? key,
      this.isChecked,
      this.colorBorder,
      this.colorIcon,
      this.margin,
      this.colorBG,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin ??
            EdgeInsets.only(
                top: height_4, bottom: height_4, left: width_8, right: width_8),
        width: height ?? height_16,
        height: height ?? height_16,
        padding: EdgeInsets.all(height_2),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: colorBorder ?? Color(0xFF504F4F)),
          color: colorBG ??
              (isChecked ? Theme.of(context).primaryColor : Colors.white),
          shape: BoxShape.circle,
        ),
        child: SVGImageWidget(
          url: svg_ic_checkbox,
          color:
              colorIcon ?? (isChecked ? Color(0xFF504F4F) : Color(0xFFFFFFFF)),
        ));
  }
}

class LocalImageWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final String? url;
  final BoxFit? boxFit;
  final BorderRadius? borderRadius;

  const LocalImageWidget(
      {Key? key,
      this.height,
      this.width,
      this.url,
      this.boxFit,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius:
            borderRadius != null ? borderRadius : BorderRadius.circular(0),
        image: DecorationImage(
          image: AssetImage(
            url!,
          ),
          fit: boxFit != null ? boxFit : BoxFit.cover,
        ),
      ),
    );
  }
}

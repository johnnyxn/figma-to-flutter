import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Card1 extends StatelessWidget {
  Card1(
      {this.rectangleProvider,
      this.imageProvider,
      this.title,
      this.description,
      this.loveCount});

  final ImageProvider rectangleProvider;

  final ImageProvider imageProvider;

  final TextData title;

  final TextData description;

  final TextData loveCount;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: Card1Painter(
            rectangleProvider, imageProvider, title, description, loveCount));
  }
}

class Card1Painter extends ChangeNotifier implements CustomPainter {
  Card1Painter(ImageProvider rectangleProvider, ImageProvider imageProvider,
      this.title, this.description, this.loveCount) {
    this.rectangleProvider = (rectangleProvider != null)
        ? DecorationImage(image: rectangleProvider, fit: BoxFit.cover)
            .createPainter(_onUpdate)
        : null;
    this.imageProvider = (imageProvider != null)
        ? DecorationImage(image: imageProvider, fit: BoxFit.cover)
            .createPainter(_onUpdate)
        : null;
  }

  DecorationImagePainter rectangleProvider;

  DecorationImagePainter imageProvider;

  final TextData title;

  final TextData description;

  final TextData loveCount;

  void _onUpdate() => this.notifyListeners();
  bool hitTest(Offset offset) => false;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(-19.0, -17.0);

// 267:46 : Card1 (COMPONENT)
    var draw_267_46 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          19.0,
          17.0,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:19.0,t:17.0,r:-19.0,b:-17.0,w:378.0,h:114.0) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 267:39 : Group (GROUP)
      var draw_267_39 = (Canvas canvas, Rect container) {
        canvas.save();
        canvas.translate(0.0, 0.0);

// 267:36 : Rectangle (RECTANGLE)
        var mask = Path();
        var clipTransform = Float64List.fromList([
          (frame.width / 378.0),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 114.0),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var clipGeometry = [
          Path()
            ..addRRect(RRect.fromRectAndRadius(
                Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                Radius.circular(4.0)))
        ];
        clipGeometry.forEach((p) => mask.addPath(p, Offset.zero));
        canvas.clipPath(mask);
        var draw_267_36 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              0.0,
              0.0,
              (container.width - (0.0)),
              (container.height -
                  (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0.0,t:0.0,r:0.0,b:0.0,w:378.0,h:114.0) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 378.0),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 114.0),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            Path()
              ..addRRect(RRect.fromRectAndRadius(
                  Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                  Radius.circular(4.0)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          });
          fillGeometry.forEach((path) {
            if (rectangleProvider != null) {
              rectangleProvider.paint(
                  canvas, path.getBounds(), path, ImageConfiguration());
            }
          });
          canvas.restore();
        };
        draw_267_36(canvas, frame);

// 267:35 : image (RECTANGLE)
        var draw_267_35 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              -1.1368683772161603e-13,
              -171.0,
              (container.width - (0.0)),
              (container.height -
                  (-274.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:-1.1368683772161603e-13,t:-171.0,r:1.1368683772161603e-13,b:-103.0,w:378.0,h:388.0) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 378.0),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 388.0),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            (Path()
              ..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
          ];
          fillGeometry.forEach((path) {
            if (imageProvider != null) {
              imageProvider.paint(
                  canvas, path.getBounds(), path, ImageConfiguration());
            }
          });
          canvas.restore();
        };
        draw_267_35(canvas, frame);

// 284:0 : Rectangle (RECTANGLE)
        var draw_284_0 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              0.0,
              -2.0,
              (container.width - (0.0)),
              (container.height -
                  (-2.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0.0,t:-2.0,r:0.0,b:0.0,w:378.0,h:116.0) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 378.0),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 116.0),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            (Path()
              ..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_1);
          });
          canvas.restore();
        };
        draw_284_0(canvas, frame);

// 267:37 : Rectangle 2 (RECTANGLE)
        var draw_267_37 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              -1.1368683772161603e-13,
              (container.height - (31.000030517578125)),
              (container.width - (0.0)),
              31.0) /* H:LEFT_RIGHT V:BOTTOM F:(l:-1.1368683772161603e-13,t:82.99996948242188,r:1.1368683772161603e-13,b:0.000030517578125,w:378.0,h:31.0) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 378.0),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 31.0),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            (Path()
              ..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_2);
          });
          canvas.restore();
        };
        draw_267_37(canvas, frame);
        if (this.title?.isVisible ?? true) {
// 267:38 : $title (TEXT)
          var draw_267_38 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                9.999995231628418,
                (container.height - (25.000030517578125)),
                (container.width - (62.0)),
                14.0) /* H:LEFT_RIGHT V:BOTTOM F:(l:9.999995231628418,t:88.99996948242188,r:52.00000476837158,b:11.000030517578125,w:316.0,h:14.0) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
            var paragraphStyle = ui.ParagraphStyle(
              fontFamily: 'Roboto',
              textAlign: TextAlign.left,
              fontSize: 9.0,
              fontWeight: FontWeight.w700,
            );
            var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
              ..pushStyle(style_0);
            if (this?.title?.text == null) {
              paragraphBuilder.addText("My item");
            } else {
              paragraphBuilder.addText(this.title.text);
            }
            var paragraph = paragraphBuilder.build();
            paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
            canvas.drawParagraph(paragraph, Offset.zero);
            canvas.restore();
          };
          draw_267_38(canvas, frame);
        }
        if (this.description?.isVisible ?? true) {
// 267:40 : $description (TEXT)
          var draw_267_40 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                9.999995231628418,
                (container.height - (13.999969482421875)),
                (container.width - (62.0)),
                14.0) /* H:LEFT_RIGHT V:BOTTOM F:(l:9.999995231628418,t:100.00003051757812,r:52.00000476837158,b:-0.000030517578125,w:316.0,h:14.0) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var style_0 = _TextStyleCatalog.instance.ui_TextStyle_1;
            var paragraphStyle = ui.ParagraphStyle(
              fontFamily: 'Roboto',
              textAlign: TextAlign.left,
              fontSize: 7.0,
              fontWeight: FontWeight.w400,
            );
            var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
              ..pushStyle(style_0);
            if (this?.description?.text == null) {
              paragraphBuilder.addText("A bried description of the item");
            } else {
              paragraphBuilder.addText(this.description.text);
            }
            var paragraph = paragraphBuilder.build();
            paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
            canvas.drawParagraph(paragraph, Offset.zero);
            canvas.restore();
          };
          draw_267_40(canvas, frame);
        }
        canvas.restore();
      };
      draw_267_39(canvas, frame);

// 267:42 : Group (GROUP)
      var draw_267_42 = (Canvas canvas, Rect container) {
        canvas.save();
        canvas.translate(331.0, 89.0);

// 267:41 : Rectangle (RECTANGLE)
        var draw_267_41 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              (container.width - (378.0)),
              (container.height - (114.0)),
              38.0,
              18.0) /* H:RIGHT V:BOTTOM F:(l:0.0,t:0.0,r:340.0,b:96.0,w:38.0,h:18.0) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 38.0),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 18.0),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            Path()
              ..addRRect(RRect.fromRectAndRadius(
                  Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                  Radius.circular(23.0)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_3);
          });
          canvas.restore();
        };
        draw_267_41(canvas, frame);

// 267:43 : Vector (VECTOR)
        var draw_267_43 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              (container.width - (355.0)),
              (container.height - (108.0)),
              8.0,
              7.0) /* H:RIGHT V:BOTTOM F:(l:23.0,t:6.0,r:347.0,b:101.0,w:8.0,h:7.0) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 8.0),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 7.0),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var strokes = [_PaintCatalog.instance.paint_4];
          var strokeGeometry = [
            _PathCatalog.instance.path_0.transform(transform)
          ];
          strokes.forEach((paint) {
            strokeGeometry.forEach((path) {
              canvas.drawPath(path, paint);
            });
          });
          canvas.restore();
        };
        draw_267_43(canvas, frame);
        if (this.loveCount?.isVisible ?? true) {
// 267:44 : $loveCount (TEXT)
          var draw_267_44 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                (container.width - (372.0)),
                (container.height - (109.0)),
                14.0,
                11.0) /* H:RIGHT V:BOTTOM F:(l:6.0,t:5.0,r:358.0,b:98.0,w:14.0,h:11.0) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var style_0 = _TextStyleCatalog.instance.ui_TextStyle_2;
            var paragraphStyle = ui.ParagraphStyle(
              fontFamily: 'Roboto',
              textAlign: TextAlign.right,
              fontSize: 9.0,
              fontWeight: FontWeight.w700,
            );
            var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
              ..pushStyle(style_0);
            if (this?.loveCount?.text == null) {
              paragraphBuilder.addText("26");
            } else {
              paragraphBuilder.addText(this.loveCount.text);
            }
            var paragraph = paragraphBuilder.build();
            paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
            canvas.drawParagraph(paragraph, Offset.zero);
            canvas.restore();
          };
          draw_267_44(canvas, frame);
        }
        canvas.restore();
      };
      draw_267_42(canvas, frame);
      canvas.restore();
    };
    draw_267_46(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(Card1Painter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(Card1Painter oldDelegate) {
    return oldDelegate.rectangleProvider != this.rectangleProvider ||
        oldDelegate.imageProvider != this.imageProvider ||
        oldDelegate.title != this.title ||
        oldDelegate.description != this.description ||
        oldDelegate.loveCount != this.loveCount;
  }
}

class Logo extends StatelessWidget {
  Logo({this.topBar});

  final Data topBar;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: LogoPainter(topBar));
  }
}

class LogoPainter extends CustomPainter {
  LogoPainter(this.topBar);

  final Data topBar;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(-30.0, -18.0);

// 106:0 : Logo (COMPONENT)
    var draw_106_0 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          30.0,
          18.0,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:30.0,t:18.0,r:-30.0,b:-18.0,w:73.28427124023438,h:106.2843017578125) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 105:43 : Group (GROUP)
      var draw_105_43 = (Canvas canvas, Rect container) {
        canvas.save();
        canvas.translate(34.14213562011719, 92.2843017578125);

// 105:44 : Ellipse (ELLIPSE)
        var draw_105_44 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              (20.000003814697266 * (container.width) / 20.000003814697266),
              (3.216245934129728e-15 * (container.width) / 20.000003814697266),
              (20.000003814697266 * (container.width) / 20.000003814697266),
              (20.000003814697266 *
                  (container.width) /
                  20.000003814697266)) /* H:SCALE V:SCALE F:(l:20.000003814697266,t:3.216245934129728e-15,r:33.284263610839844,b:86.28429794311523,w:20.000003814697266,h:20.000003814697266) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            -1.6081226229577292e-16,
            1.0,
            0.0,
            0.0,
            -1.0,
            -1.6081226229577292e-16,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 20.000003814697266),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 20.000003814697266),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_1.transform(transform)
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_5);
          });
          canvas.restore();
        };
        draw_105_44(canvas, frame);

// 105:45 : Rectangle 3 (RECTANGLE)
        var draw_105_45 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              (1.1368683772161603e-13 * (container.width) / 20.000011444091797),
              (10.000001907348633 * (container.width) / 20.000011444091797),
              (20.000011444091797 * (container.width) / 20.000011444091797),
              (10.000005722045898 *
                  (container.width) /
                  20.000011444091797)) /* H:SCALE V:SCALE F:(l:1.1368683772161603e-13,t:10.000001907348633,r:53.284259796142464,b:86.28429412841797,w:20.000011444091797,h:10.000005722045898) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            0.9999996423721313,
            -3.530460549191853e-30,
            0.0,
            0.0,
            3.537548121850475e-30,
            0.9999996423721313,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 20.000011444091797),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 10.000005722045898),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            (Path()
              ..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_5);
          });
          canvas.restore();
        };
        draw_105_45(canvas, frame);
        canvas.restore();
      };
      draw_105_43(canvas, frame);

// 105:47 : Group (GROUP)
      var draw_105_47 = (Canvas canvas, Rect container) {
        canvas.save();
        canvas.translate(48.14213562011719, 106.2843017578125);

// 105:48 : Ellipse (ELLIPSE)
        var draw_105_48 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              (20.000003814697266 * (container.width) / 20.000003814697266),
              (3.216245934129728e-15 * (container.width) / 20.000003814697266),
              (20.000003814697266 * (container.width) / 20.000003814697266),
              (20.000003814697266 *
                  (container.width) /
                  20.000003814697266)) /* H:SCALE V:SCALE F:(l:20.000003814697266,t:3.216245934129728e-15,r:33.284263610839844,b:86.28429794311523,w:20.000003814697266,h:20.000003814697266) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            -1.6081226229577292e-16,
            1.0,
            0.0,
            0.0,
            -1.0,
            -1.6081226229577292e-16,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 20.000003814697266),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 20.000003814697266),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_2.transform(transform)
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_6);
          });
          canvas.restore();
        };
        draw_105_48(canvas, frame);

// 105:49 : Rectangle 3 (RECTANGLE)
        var draw_105_49 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              (9.1680269241333 * (container.width) / 10.831965446472168),
              (9.999984741210938 * (container.width) / 10.831965446472168),
              (10.831965446472168 * (container.width) / 10.831965446472168),
              (10.000005722045898 *
                  (container.width) /
                  10.831965446472168)) /* H:SCALE V:SCALE F:(l:9.1680269241333,t:9.999984741210938,r:53.284278869628906,b:86.28431129455566,w:10.831965446472168,h:10.000005722045898) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            0.9999996423721313,
            0.0,
            0.0,
            0.0,
            0.0,
            0.9999996423721313,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 10.831965446472168),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 10.000005722045898),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            (Path()
              ..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_6);
          });
          canvas.restore();
        };
        draw_105_49(canvas, frame);
        canvas.restore();
      };
      draw_105_47(canvas, frame);

// 105:46 : Ellipse (ELLIPSE)
      var draw_105_46 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            (34.0 * (container.width) / 20.000003814697266),
            (64.14215087890625 * (container.width) / 20.000003814697266),
            (20.000003814697266 * (container.width) / 20.000003814697266),
            (20.000003814697266 *
                (container.width) /
                20.000003814697266)) /* H:SCALE V:SCALE F:(l:34.0,t:64.14215087890625,r:19.28426742553711,b:22.142147064208984,w:20.000003814697266,h:20.000003814697266) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          0.7071067094802856,
          -0.7071067094802856,
          0.0,
          0.0,
          0.7071067094802856,
          0.7071067094802856,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 20.000003814697266),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 20.000003814697266),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [_PathCatalog.instance.path_3.transform(transform)];
        fillGeometry.forEach((path) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_7);
        });
        canvas.restore();
      };
      draw_105_46(canvas, frame);
      if (this.topBar?.isVisible ?? true) {
// 186:0 : $topBar (GROUP)
        var draw_186_0 = (Canvas canvas, Rect container) {
          canvas.save();
          canvas.translate(0.0, 0.0);

// 105:21 : Group (GROUP)
          var draw_105_21 = (Canvas canvas, Rect container) {
            canvas.save();
            canvas.translate(14.142135620117188, 73.2843017578125);

// 105:22 : Ellipse (ELLIPSE)
            var draw_105_22 = (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  (20.000003814697266 * (container.width) / 20.000003814697266),
                  (3.216245934129728e-15 *
                      (container.width) /
                      20.000003814697266),
                  (20.000003814697266 * (container.width) / 20.000003814697266),
                  (20.000003814697266 *
                      (container.width) /
                      20.000003814697266)) /* H:SCALE V:SCALE F:(l:20.000003814697266,t:3.216245934129728e-15,r:33.284263610839844,b:86.28429794311523,w:20.000003814697266,h:20.000003814697266) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                -1.6081226229577292e-16,
                1.0,
                0.0,
                0.0,
                -1.0,
                -1.6081226229577292e-16,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 20.000003814697266),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 20.000003814697266),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                _PathCatalog.instance.path_4.transform(transform)
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_8);
              });
              canvas.restore();
            };
            draw_105_22(canvas, frame);

// 105:23 : Rectangle 3 (RECTANGLE)
            var draw_105_23 = (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  (1.1368683772161603e-13 *
                      (container.width) /
                      20.000011444091797),
                  (10.000001907348633 * (container.width) / 20.000011444091797),
                  (20.000011444091797 * (container.width) / 20.000011444091797),
                  (10.000005722045898 *
                      (container.width) /
                      20.000011444091797)) /* H:SCALE V:SCALE F:(l:1.1368683772161603e-13,t:10.000001907348633,r:53.284259796142464,b:86.28429412841797,w:20.000011444091797,h:10.000005722045898) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                0.9999996423721313,
                -3.530460549191853e-30,
                0.0,
                0.0,
                3.537548121850475e-30,
                0.9999996423721313,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 20.000011444091797),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 10.000005722045898),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                (Path()
                  ..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_8);
              });
              canvas.restore();
            };
            draw_105_23(canvas, frame);
            canvas.restore();
          };
          draw_105_21(canvas, frame);

// 105:40 : Group (GROUP)
          var draw_105_40 = (Canvas canvas, Rect container) {
            canvas.save();
            canvas.translate(59.14213562011719, 0.0);

// 105:41 : Ellipse (ELLIPSE)
            var draw_105_41 = (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  (20.000003814697266 * (container.width) / 20.000003814697266),
                  (3.216245934129728e-15 *
                      (container.width) /
                      20.000003814697266),
                  (20.000003814697266 * (container.width) / 20.000003814697266),
                  (20.000003814697266 *
                      (container.width) /
                      20.000003814697266)) /* H:SCALE V:SCALE F:(l:20.000003814697266,t:3.216245934129728e-15,r:33.284263610839844,b:86.28429794311523,w:20.000003814697266,h:20.000003814697266) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                -1.6081226229577292e-16,
                1.0,
                0.0,
                0.0,
                -1.0,
                -1.6081226229577292e-16,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 20.000003814697266),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 20.000003814697266),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                _PathCatalog.instance.path_5.transform(transform)
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_9);
              });
              canvas.restore();
            };
            draw_105_41(canvas, frame);

// 105:42 : Rectangle 3 (RECTANGLE)
            var draw_105_42 = (Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  (1.1368683772161603e-13 *
                      (container.width) /
                      20.000011444091797),
                  (10.000001907348633 * (container.width) / 20.000011444091797),
                  (20.000011444091797 * (container.width) / 20.000011444091797),
                  (53.726959228515625 *
                      (container.width) /
                      20.000011444091797)) /* H:SCALE V:SCALE F:(l:1.1368683772161603e-13,t:10.000001907348633,r:53.284259796142464,b:42.55734062194824,w:20.000011444091797,h:53.726959228515625) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                0.9999996423721313,
                -3.530460549191853e-30,
                0.0,
                0.0,
                3.537548121850475e-30,
                0.9999996423721313,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 20.000011444091797),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 53.726959228515625),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                (Path()
                  ..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
              ];
              fillGeometry.forEach((path) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_9);
              });
              canvas.restore();
            };
            draw_105_42(canvas, frame);
            canvas.restore();
          };
          draw_105_40(canvas, frame);
          canvas.restore();
        };
        draw_186_0(canvas, frame);
      }

// 266:0 : beta (TEXT)
      var draw_266_0 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(-10.0, 95.0, 24.0,
            15.0) /* H:LEFT V:TOP F:(l:-10.0,t:95.0,r:59.284271240234375,b:-3.7156982421875,w:24.0,h:15.0) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_3;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Roboto',
          textAlign: TextAlign.left,
          fontSize: 12.0,
          fontWeight: FontWeight.w700,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("beta");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      };
      draw_266_0(canvas, frame);
      canvas.restore();
    };
    draw_106_0(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(LogoPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(LogoPainter oldDelegate) {
    return oldDelegate.topBar != this.topBar;
  }
}

class AddTodo extends StatelessWidget {
  AddTodo({this.value});

  final Widget value;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: AddTodoPainter(),
        child: Material(
            type: MaterialType.transparency,
            child: Container(
                child: Stack(
                    children: [
              Positioned(
                child: this.value,
                left: 21.0,
                right: 18.0,
                top: -1.1368683772161603e-13,
                bottom: 1.1368683772161603e-13,
              )
            ].where((x) => x != null).toList()))));
  }
}

class AddTodoPainter extends CustomPainter {
  AddTodoPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(-66.0, -324.0);

// 186:39 : AddTodo (COMPONENT)
    var draw_186_39 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          66.0,
          324.0,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:66.0,t:324.0,r:-66.0,b:-324.0,w:589.0,h:81.0) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 186:29 : Rectangle (RECTANGLE)
      var draw_186_29 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            0.0,
            0.0,
            (container.width - (0.0)),
            (container.height -
                (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0.0,t:0.0,r:0.0,b:0.0,w:589.0,h:81.0) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 589.0),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 81.0),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          Path()
            ..addRRect(RRect.fromRectAndRadius(
                Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                Radius.circular(1.0)))
        ];
        fillGeometry.forEach((path) {
          var effectPaint = _EffectCatalog.instance.paint_0;
          canvas.save();
          canvas.translate(0.0, 2.0);
          canvas.drawPath(path, effectPaint);
          canvas.restore();
        });
        fillGeometry.forEach((path) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_3);
        });
        canvas.restore();
      };
      draw_186_29(canvas, frame);
      canvas.restore();
    };
    draw_186_39(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(AddTodoPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(AddTodoPainter oldDelegate) {
    return false;
  }
}

class TodoItem extends StatelessWidget {
  TodoItem({this.selected, this.onSelect, this.title});

  final VectorData selected;

  final GestureTapCallback onSelect;

  final TextData title;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: TodoItemPainter(selected, title),
        child: Material(
            type: MaterialType.transparency,
            child: Container(
                child: Stack(
                    children: [
              Positioned(
                child: InkWell(
                    onTap: onSelect,
                    borderRadius: BorderRadius.all(Radius.circular(9.0))),
                left: 0.0,
                right: 0.0,
                top: 0.0,
                bottom: 0.0,
              )
            ].where((x) => x != null).toList()))));
  }
}

class TodoItemPainter extends CustomPainter {
  TodoItemPainter(this.selected, this.title);

  final VectorData selected;

  final TextData title;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(-66.0, -463.0);

// 186:20 : TodoItem (COMPONENT)
    var draw_186_20 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          66.0,
          463.0,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:66.0,t:463.0,r:-66.0,b:-463.0,w:589.0,h:63.0) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 186:16 : Rectangle (RECTANGLE)
      var draw_186_16 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            0.0,
            0.0,
            (container.width - (0.0)),
            (container.height -
                (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0.0,t:0.0,r:0.0,b:0.0,w:589.0,h:63.0) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 589.0),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 63.0),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          Path()
            ..addRRect(RRect.fromRectAndRadius(
                Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                Radius.circular(9.0)))
        ];
        fillGeometry.forEach((path) {
          var effectPaint = _EffectCatalog.instance.paint_1;
          canvas.save();
          canvas.translate(0.0, 2.0);
          canvas.drawPath(path, effectPaint);
          canvas.restore();
        });
        fillGeometry.forEach((path) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_10);
        });
        canvas.restore();
      };
      draw_186_16(canvas, frame);

// 226:3 : Group (GROUP)
      var draw_226_3 = (Canvas canvas, Rect container) {
        canvas.save();
        canvas.translate(17.0, 16.0);

// 186:17 : Ellipse (ELLIPSE)
        var draw_186_17 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              0.0,
              ((container.height / 2.0) - 31.5),
              31.0,
              31.0) /* H:LEFT V:CENTER F:(l:0.0,t:0.0,r:558.0,b:32.0,w:31.0,h:31.0) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 31.0),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 31.0),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_6.transform(transform)
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_3);
          });
          canvas.restore();
        };
        draw_186_17(canvas, frame);
        if (this.selected?.isVisible ?? true) {
// 186:21 : $selected (ELLIPSE)
          var draw_186_21 = (Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                6.199951171875,
                ((container.height / 2.0) - 25.29998779296875),
                18.600000381469727,
                18.600000381469727) /* H:LEFT V:CENTER F:(l:6.199951171875,t:6.20001220703125,r:564.2000484466553,b:38.19998741149902,w:18.600000381469727,h:18.600000381469727) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 18.600000381469727),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 18.600000381469727),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              _PathCatalog.instance.path_7.transform(transform)
            ];
            fillGeometry.forEach((path) {
              var effectPaint = _EffectCatalog.instance.paint_2;
              canvas.drawPath(path, effectPaint);
            });
            fillGeometry.forEach((path) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_11);
            });
            canvas.restore();
          };
          draw_186_21(canvas, frame);
        }
        canvas.restore();
      };
      draw_226_3(canvas, frame);
      if (this.title?.isVisible ?? true) {
// 204:67 : $title (TEXT)
        var draw_204_67 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              59.0,
              18.0,
              (container.width - (107.0)),
              (container.height -
                  (35.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:59.0,t:18.0,r:48.0,b:17.0,w:482.0,h:28.0) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_4;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'Roboto',
            textAlign: TextAlign.left,
            fontSize: 16.0,
            fontWeight: FontWeight.w300,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          if (this?.title?.text == null) {
            paragraphBuilder.addText("I need to do something");
          } else {
            paragraphBuilder.addText(this.title.text);
          }
          var paragraph = paragraphBuilder.build();
          paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        };
        draw_204_67(canvas, frame);
      }
      canvas.restore();
    };
    draw_186_20(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(TodoItemPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(TodoItemPainter oldDelegate) {
    return oldDelegate.selected != this.selected ||
        oldDelegate.title != this.title;
  }
}

class TodoLogo extends StatelessWidget {
  TodoLogo({this.imageProvider});

  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: TodoLogoPainter(imageProvider));
  }
}

class TodoLogoPainter extends ChangeNotifier implements CustomPainter {
  TodoLogoPainter(ImageProvider imageProvider) {
    this.imageProvider = (imageProvider != null)
        ? DecorationImage(image: imageProvider, fit: BoxFit.cover)
            .createPainter(_onUpdate)
        : null;
  }

  DecorationImagePainter imageProvider;

  void _onUpdate() => this.notifyListeners();
  bool hitTest(Offset offset) => false;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(-66.0, -41.0);

// 186:44 : TodoLogo (COMPONENT)
    var draw_186_44 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          66.0,
          41.0,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:66.0,t:41.0,r:-66.0,b:-41.0,w:589.0,h:239.0) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 186:40 : Rectangle (RECTANGLE)
      var draw_186_40 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            ((container.width / 2.0) - (42.5)),
            ((container.height / 2.0) - 0.0),
            60.10407638549805,
            60.10407638549805) /* H:CENTER V:CENTER F:(l:252.0,t:119.5,r:276.89592361450195,b:59.39592361450195,w:60.10407638549805,h:60.10407638549805) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          0.7071067690849304,
          -0.7071067690849304,
          0.0,
          0.0,
          0.7071067690849304,
          0.7071067690849304,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 60.10407638549805),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 60.10407638549805),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          (Path()..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
        ];
        fillGeometry.forEach((path) {
          var effectPaint = _EffectCatalog.instance.paint_2;
          canvas.drawPath(path, effectPaint);
        });
        fillGeometry.forEach((path) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_11);
        });
        canvas.restore();
      };
      draw_186_40(canvas, frame);

// 186:42 : Vector (VECTOR)
      var draw_186_42 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            ((container.width / 2.0) - (12.97705078125)),
            ((container.height / 2.0) - 1.365966796875),
            39.272552490234375,
            26.295534133911133) /* H:CENTER V:CENTER F:(l:281.52294921875,t:118.134033203125,r:268.2044982910156,b:94.57043266296387,w:39.272552490234375,h:26.295534133911133) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 39.272552490234375),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 26.295534133911133),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var strokes = [_PaintCatalog.instance.paint_3];
        var strokeGeometry = [
          _PathCatalog.instance.path_8.transform(transform)
        ];
        strokes.forEach((paint) {
          strokeGeometry.forEach((path) {
            canvas.drawPath(path, paint);
          });
        });
        canvas.restore();
      };
      draw_186_42(canvas, frame);

// 186:45 : TODO (TEXT)
      var draw_186_45 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            ((container.width / 2.0) - (11.5)),
            ((container.height / 2.0) - 7.73297119140625),
            29.369037628173828,
            12.97701644897461) /* H:CENTER V:CENTER F:(l:283.0,t:111.76702880859375,r:276.6309623718262,b:114.25595474243164,w:29.369037628173828,h:12.97701644897461) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          0.7071067690849304,
          -0.7071067690849304,
          0.0,
          0.0,
          0.7071067690849304,
          0.7071067690849304,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_5;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Roboto',
          textAlign: TextAlign.left,
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("TODO");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      };
      draw_186_45(canvas, frame);

// 255:1 : image (RECTANGLE)
      var draw_255_1 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            ((container.width / 2.0) - (24.95458984375)),
            ((container.height / 2.0) - 80.5),
            36.0,
            36.0) /* H:CENTER V:CENTER F:(l:269.54541015625,t:39.0,r:283.45458984375,b:164.0,w:36.0,h:36.0) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          0.7009092569351196,
          -0.713250458240509,
          0.0,
          0.0,
          0.713250458240509,
          0.7009092569351196,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 36.0),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 36.0),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          (Path()..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
        ];
        fillGeometry.forEach((path) {
          if (imageProvider != null) {
            imageProvider.paint(
                canvas, path.getBounds(), path, ImageConfiguration());
          }
        });
        canvas.restore();
      };
      draw_255_1(canvas, frame);
      canvas.restore();
    };
    draw_186_44(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(TodoLogoPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(TodoLogoPainter oldDelegate) {
    return oldDelegate.imageProvider != this.imageProvider;
  }
}

class _PathCatalog {
  _PathCatalog() {
    this.path_0 = _build_0();
    this.path_1 = _build_1();
    this.path_2 = _build_2();
    this.path_3 = _build_3();
    this.path_4 = _build_4();
    this.path_5 = _build_5();
    this.path_6 = _build_6();
    this.path_7 = _build_7();
    this.path_8 = _build_8();
  }

  Path path_0;

  Path path_1;

  Path path_2;

  Path path_3;

  Path path_4;

  Path path_5;

  Path path_6;

  Path path_7;

  Path path_8;

  static final _PathCatalog instance = _PathCatalog();

  static Path _build_0() {
    var path = Path();
    path.moveTo(5.894352436065674, 0.0);
    path.lineTo(5.894352436065674, 0.5);
    path.lineTo(5.894352436065674, 0.0);
    path.close();
    path.moveTo(4.405579090118408, 0.6188508272171022);
    path.lineTo(4.759697437286377, 0.9718384742736816);
    path.lineTo(4.759780406951904, 0.9717552661895754);
    path.lineTo(4.405579090118408, 0.6188508272171022);
    path.close();
    path.moveTo(3.9998977184295654, 1.0258314609527588);
    path.lineTo(3.6457796096801762, 1.3788191080093384);
    path.cubicTo(3.739593267440796, 1.472933292388916, 3.8670125007629395,
        1.5258314609527588, 3.9998977184295654, 1.5258314609527588);
    path.cubicTo(4.132782936096191, 1.5258314609527588, 4.260202407836914,
        1.472933292388916, 4.354015827178955, 1.3788191080093384);
    path.lineTo(3.9998977184295654, 1.0258314609527588);
    path.close();
    path.moveTo(3.5942165851593018, 0.6188508272171022);
    path.lineTo(3.240098237991333, 0.971838414669037);
    path.lineTo(3.240098237991333, 0.9718384742736816);
    path.lineTo(3.5942165851593018, 0.6188508272171022);
    path.close();
    path.moveTo(0.6166700720787051, 0.6188508272171022);
    path.lineTo(0.2625517845153808, 0.2658632397651673);
    path.lineTo(0.6166700720787051, 0.6188508272171022);
    path.close();
    path.moveTo(0.6166700720787051, 3.6059353351593018);
    path.lineTo(0.2625517845153808, 3.9589228630065922);
    path.lineTo(0.2625518143177033, 3.9589228630065922);
    path.lineTo(0.6166700720787051, 3.6059353351593018);
    path.close();
    path.moveTo(1.0223510265350342, 4.01291561126709);
    path.lineTo(0.668232798576355, 4.365903377532959);
    path.lineTo(1.0223510265350342, 4.01291561126709);
    path.close();
    path.moveTo(3.9998977184295654, 7.0);
    path.lineTo(3.6457796096801762, 7.352987766265869);
    path.cubicTo(3.739593267440796, 7.447102069854736, 3.8670125007629395, 7.5,
        3.9998977184295654, 7.5);
    path.cubicTo(4.132782936096191, 7.5, 4.260202407836914, 7.447101593017578,
        4.354016304016113, 7.352987766265869);
    path.lineTo(3.9998977184295654, 7.0);
    path.close();
    path.moveTo(7.383125305175781, 3.6059353351593018);
    path.lineTo(7.029089450836182, 3.2528645992279053);
    path.lineTo(7.0290069580078125, 3.2529475688934326);
    path.lineTo(7.383125305175781, 3.6059353351593018);
    path.close();
    path.moveTo(7.737326145172119, 0.26594638824462896);
    path.cubicTo(7.4954915046691895, 0.023222947493195537, 7.2082695960998535,
        -0.16940774023532876, 6.8920278549194345, -0.30086249113082897);
    path.lineTo(6.508190631866455, 0.6225380897521973);
    path.cubicTo(6.702846050262451, 0.7034522891044616, 6.879807949066162,
        0.8220912218093873, 7.028923988342285, 0.9717552661895754);
    path.lineTo(7.737326145172119, 0.26594638824462896);
    path.close();
    path.moveTo(6.8920278549194345, -0.30086249113082897);
    path.cubicTo(6.5757832527160645, -0.4323185086250306, 6.236764907836914,
        -0.5, 5.894352436065674, -0.5);
    path.lineTo(5.894352436065674, 0.5);
    path.cubicTo(6.1049580574035645, 0.5, 6.31353759765625, 0.5416252017021179,
        6.508190631866455, 0.6225380897521973);
    path.lineTo(6.8920278549194345, -0.30086249113082897);
    path.close();
    path.moveTo(5.894352436065674, -0.5);
    path.cubicTo(5.551940441131592, -0.5, 5.212920665740967,
        -0.4323185980319978, 4.8966755867004395, -0.30086249113082897);
    path.lineTo(5.280513286590576, 0.6225380897521973);
    path.cubicTo(5.475165843963623, 0.5416253209114076, 5.683746337890625, 0.5,
        5.894352436065674, 0.5);
    path.lineTo(5.894352436065674, -0.5);
    path.close();
    path.moveTo(4.8966755867004395, -0.30086249113082897);
    path.cubicTo(4.5804338455200195, -0.16940765082836157, 4.293212413787842,
        0.023223124444484714, 4.051377773284912, 0.26594638824462896);
    path.lineTo(4.759780406951904, 0.9717552661895754);
    path.cubicTo(4.908896446228027, 0.822091042995453, 5.08585786819458,
        0.703452169895172, 5.280513286590576, 0.6225380897521973);
    path.lineTo(4.8966755867004395, -0.30086249113082897);
    path.close();
    path.moveTo(4.0514607429504395, 0.26586318016052246);
    path.lineTo(3.6457796096801762, 0.6728438138961795);
    path.lineTo(4.354015827178955, 1.3788191080093384);
    path.lineTo(4.759697437286377, 0.9718384742736816);
    path.lineTo(4.0514607429504395, 0.26586318016052246);
    path.close();
    path.moveTo(4.354015827178955, 0.6728438138961795);
    path.lineTo(3.9483346939086914, 0.26586318016052246);
    path.lineTo(3.240098237991333, 0.9718384742736816);
    path.lineTo(3.6457796096801762, 1.3788191080093384);
    path.lineTo(4.354015827178955, 0.6728438138961795);
    path.close();
    path.moveTo(3.9483346939086914, 0.2658632397651673);
    path.cubicTo(3.459843397140503, -0.22419294714927676, 2.7969667911529537,
        -0.4997946918010712, 2.105443239212036, -0.4997946918010712);
    path.lineTo(2.105443239212036, 0.5002053380012511);
    path.cubicTo(2.5307164192199707, 0.5002053380012511, 2.9388952255249023,
        0.669670581817627, 3.240098237991333, 0.971838414669037);
    path.lineTo(3.9483346939086914, 0.2658632397651673);
    path.close();
    path.moveTo(2.105443239212036, -0.4997946918010712);
    path.cubicTo(1.4139198064804077, -0.4997946619987489, 0.751043200492859,
        -0.22419296205043796, 0.2625517845153808, 0.2658632397651673);
    path.lineTo(0.9707883596420287, 0.971838414669037);
    path.cubicTo(1.2719913721084595, 0.669670581817627, 1.6801702976226809,
        0.5002053380012511, 2.105443239212036, 0.5002053380012511);
    path.lineTo(2.105443239212036, -0.4997946918010712);
    path.close();
    path.moveTo(0.2625517845153808, 0.2658632397651673);
    path.cubicTo(-0.22588588297367096, 0.7558655142784121, -0.5,
        1.4201127290725708, -0.5, 2.1123929023742676);
    path.lineTo(0.5, 2.1123929023742676);
    path.cubicTo(0.5, 1.6842991113662722, 0.6695316433906556,
        1.2740601301193237, 0.9707883596420287, 0.971838414669037);
    path.lineTo(0.2625517845153808, 0.2658632397651673);
    path.close();
    path.moveTo(-0.5, 2.1123929023742676);
    path.cubicTo(-0.5, 2.8046729564666752, -0.22588592767715454,
        3.4689204692840576, 0.2625517845153808, 3.9589228630065922);
    path.lineTo(0.9707883596420287, 3.2529475688934326);
    path.cubicTo(0.6695316433906556, 2.95072603225708, 0.5, 2.5404868125915527,
        0.5, 2.1123929023742676);
    path.lineTo(-0.5, 2.1123929023742676);
    path.close();
    path.moveTo(0.2625518143177033, 3.9589228630065922);
    path.lineTo(0.668232798576355, 4.365903377532959);
    path.lineTo(1.3764693737030032, 3.6599280834198002);
    path.lineTo(0.9707883596420287, 3.2529475688934326);
    path.lineTo(0.2625518143177033, 3.9589228630065922);
    path.close();
    path.moveTo(0.668232798576355, 4.365903377532959);
    path.lineTo(3.6457796096801762, 7.352987766265869);
    path.lineTo(4.354016304016113, 6.647012233734131);
    path.lineTo(1.3764693737030032, 3.6599280834198002);
    path.lineTo(0.668232798576355, 4.365903377532959);
    path.close();
    path.moveTo(4.354016304016113, 7.352987766265869);
    path.lineTo(7.331562519073486, 4.365903377532959);
    path.lineTo(6.623325824737549, 3.6599280834198002);
    path.lineTo(3.6457796096801762, 6.647012233734131);
    path.lineTo(4.354016304016113, 7.352987766265869);
    path.close();
    path.moveTo(7.331562519073486, 4.365903377532959);
    path.lineTo(7.737243175506592, 3.9589228630065922);
    path.lineTo(7.0290069580078125, 3.2529475688934326);
    path.lineTo(6.623325824737549, 3.6599280834198002);
    path.lineTo(7.331562519073486, 4.365903377532959);
    path.close();
    path.moveTo(7.737160682678223, 3.959005832672119);
    path.cubicTo(7.9791059494018555, 3.7163991928100586, 8.17094898223877,
        3.4284348487854004, 8.30180835723877, 3.111605405807495);
    path.lineTo(7.377542018890381, 2.7298574447631836);
    path.cubicTo(7.29671049118042, 2.9255619049072266, 7.17827844619751,
        3.1032679080963135, 7.029089450836182, 3.2528645992279053);
    path.lineTo(7.737160682678223, 3.959005832672119);
    path.close();
    path.moveTo(8.30180835723877, 3.111605405807495);
    path.cubicTo(8.432666778564453, 2.7947793006896973, 8.5, 2.455247402191162,
        8.5, 2.1123929023742676);
    path.lineTo(7.5, 2.1123929023742676);
    path.cubicTo(7.5, 2.3243279457092285, 7.458374500274658, 2.5341498851776123,
        7.377542018890381, 2.7298574447631836);
    path.lineTo(8.30180835723877, 3.111605405807495);
    path.close();
    path.moveTo(8.5, 2.1123929023742676);
    path.cubicTo(8.5, 1.769538402557373, 8.432666778564453, 1.4300066232681274,
        8.30180835723877, 1.1131805181503296);
    path.lineTo(7.377542018890381, 1.4949283599853518);
    path.cubicTo(7.458374500274658, 1.6906360387802124, 7.5, 1.9004578590393066,
        7.5, 2.1123929023742676);
    path.lineTo(8.5, 2.1123929023742676);
    path.close();
    path.moveTo(8.30180835723877, 1.1131805181503296);
    path.cubicTo(8.17094898223877, 0.7963510155677797, 7.9791059494018555,
        0.5083867311477659, 7.737160682678223, 0.26578012108802795);
    path.lineTo(7.029089450836182, 0.9719215035438539);
    path.cubicTo(7.178278923034668, 1.1215182542800903, 7.29671049118042,
        1.2992241382598877, 7.377542018890381, 1.4949283599853518);
    path.lineTo(8.30180835723877, 1.1131805181503296);
    path.close();
    return path;
  }

  static Path _build_1() {
    var path = Path();
    path.moveTo(20.000003814697266, 10.000001907348633);
    path.cubicTo(20.000003814697266, 15.522850036621094, 15.522850036621094,
        20.000003814697266, 10.000001907348633, 20.000003814697266);
    path.cubicTo(4.477153301239014, 20.000003814697266, 0.0, 15.522850036621094,
        0.0, 10.000001907348633);
    path.cubicTo(0.0, 4.477153301239014, 4.477153301239014, 0.0,
        10.000001907348633, 0.0);
    path.cubicTo(15.522850036621094, 0.0, 20.000003814697266, 4.477153301239014,
        20.000003814697266, 10.000001907348633);
    path.close();
    return path;
  }

  static Path _build_2() {
    var path = Path();
    path.moveTo(20.000003814697266, 10.000001907348633);
    path.cubicTo(20.000003814697266, 15.522850036621094, 15.522850036621094,
        20.000003814697266, 10.000001907348633, 20.000003814697266);
    path.cubicTo(4.477153301239014, 20.000003814697266, 0.0, 15.522850036621094,
        0.0, 10.000001907348633);
    path.cubicTo(0.0, 4.477153301239014, 4.477153301239014, 0.0,
        10.000001907348633, 0.0);
    path.cubicTo(15.522850036621094, 0.0, 20.000003814697266, 4.477153301239014,
        20.000003814697266, 10.000001907348633);
    path.close();
    return path;
  }

  static Path _build_3() {
    var path = Path();
    path.moveTo(20.000003814697266, 10.000001907348633);
    path.cubicTo(20.000003814697266, 15.522850036621094, 15.522850036621094,
        20.000003814697266, 10.000001907348633, 20.000003814697266);
    path.cubicTo(4.477153301239014, 20.000003814697266, 0.0, 15.522850036621094,
        0.0, 10.000001907348633);
    path.cubicTo(0.0, 4.477153301239014, 4.477153301239014, 0.0,
        10.000001907348633, 0.0);
    path.cubicTo(15.522850036621094, 0.0, 20.000003814697266, 4.477153301239014,
        20.000003814697266, 10.000001907348633);
    path.close();
    return path;
  }

  static Path _build_4() {
    var path = Path();
    path.moveTo(20.000003814697266, 10.000001907348633);
    path.cubicTo(20.000003814697266, 15.522850036621094, 15.522850036621094,
        20.000003814697266, 10.000001907348633, 20.000003814697266);
    path.cubicTo(4.477153301239014, 20.000003814697266, 0.0, 15.522850036621094,
        0.0, 10.000001907348633);
    path.cubicTo(0.0, 4.477153301239014, 4.477153301239014, 0.0,
        10.000001907348633, 0.0);
    path.cubicTo(15.522850036621094, 0.0, 20.000003814697266, 4.477153301239014,
        20.000003814697266, 10.000001907348633);
    path.close();
    return path;
  }

  static Path _build_5() {
    var path = Path();
    path.moveTo(20.000003814697266, 10.000001907348633);
    path.cubicTo(20.000003814697266, 15.522850036621094, 15.522850036621094,
        20.000003814697266, 10.000001907348633, 20.000003814697266);
    path.cubicTo(4.477153301239014, 20.000003814697266, 0.0, 15.522850036621094,
        0.0, 10.000001907348633);
    path.cubicTo(0.0, 4.477153301239014, 4.477153301239014, 0.0,
        10.000001907348633, 0.0);
    path.cubicTo(15.522850036621094, 0.0, 20.000003814697266, 4.477153301239014,
        20.000003814697266, 10.000001907348633);
    path.close();
    return path;
  }

  static Path _build_6() {
    var path = Path();
    path.moveTo(31.0, 15.5);
    path.cubicTo(
        31.0, 24.060413360595703, 24.060413360595703, 31.0, 15.5, 31.0);
    path.cubicTo(6.939586162567139, 31.0, 0.0, 24.060413360595703, 0.0, 15.5);
    path.cubicTo(0.0, 6.939586162567139, 6.939586162567139, 0.0, 15.5, 0.0);
    path.cubicTo(24.060413360595703, 0.0, 31.0, 6.939586162567139, 31.0, 15.5);
    path.close();
    return path;
  }

  static Path _build_7() {
    var path = Path();
    path.moveTo(18.600000381469727, 9.300000190734863);
    path.cubicTo(18.600000381469727, 14.436248779296875, 14.436248779296875,
        18.600000381469727, 9.300000190734863, 18.600000381469727);
    path.cubicTo(4.16375207901001, 18.600000381469727, 0.0, 14.436248779296875,
        0.0, 9.300000190734863);
    path.cubicTo(
        0.0, 4.16375207901001, 4.16375207901001, 0.0, 9.300000190734863, 0.0);
    path.cubicTo(14.436248779296875, 0.0, 18.600000381469727, 4.16375207901001,
        18.600000381469727, 9.300000190734863);
    path.close();
    return path;
  }

  static Path _build_8() {
    var path = Path();
    path.moveTo(2.1213202476501465, 11.197196960449219);
    path.cubicTo(0.949747383594513, 10.02562427520752, -0.9497475028038027,
        10.02562427520752, -2.1213204860687256, 11.197196960449219);
    path.cubicTo(-3.2928931713104252, 12.368769645690918, -3.2928931713104252,
        14.268264770507812, -2.1213202476501465, 15.439837455749512);
    path.lineTo(2.1213202476501465, 11.197196960449219);
    path.close();
    path.moveTo(12.977017402648926, 26.295534133911133);
    path.lineTo(10.855696678161621, 28.416854858398438);
    path.lineTo(12.977017402648926, 30.538175582885742);
    path.lineTo(15.098337173461914, 28.416854858398438);
    path.lineTo(12.977017402648926, 26.295534133911133);
    path.close();
    path.moveTo(41.39387130737305, 2.1213204860687256);
    path.cubicTo(42.56544494628906, 0.9497475028038027, 42.56544494628906,
        -0.949747383594513, 41.39387130737305, -2.1213202476501465);
    path.cubicTo(40.2223014831543, -3.2928931713104252, 38.32280349731445,
        -3.2928931713104252, 37.1512336730957, -2.1213204860687256);
    path.lineTo(41.39387130737305, 2.1213204860687256);
    path.close();
    path.moveTo(-2.1213202476501465, 15.439837455749512);
    path.lineTo(10.855696678161621, 28.416854858398438);
    path.lineTo(15.098337173461914, 24.174213409423828);
    path.lineTo(2.1213202476501465, 11.197196960449219);
    path.lineTo(-2.1213202476501465, 15.439837455749512);
    path.close();
    path.moveTo(15.098337173461914, 28.416854858398438);
    path.lineTo(41.39387130737305, 2.1213204860687256);
    path.lineTo(37.1512336730957, -2.1213204860687256);
    path.lineTo(10.855696678161621, 24.174213409423828);
    path.lineTo(15.098337173461914, 28.416854858398438);
    path.close();
    return path;
  }
}

class _PaintCatalog {
  _PaintCatalog() {
    this.paint_0 = (Paint()..color = _ColorCatalog.instance.color_1);
    this.paint_1 = (Paint()..color = _ColorCatalog.instance.color_2);
    this.paint_2 = (Paint()..color = _ColorCatalog.instance.color_3);
    this.paint_3 = (Paint()..color = _ColorCatalog.instance.color_4);
    this.paint_4 = (Paint()..color = _ColorCatalog.instance.color_5);
    this.paint_5 = (Paint()..color = _ColorCatalog.instance.color_6);
    this.paint_6 = (Paint()..color = _ColorCatalog.instance.color_7);
    this.paint_7 = (Paint()..color = _ColorCatalog.instance.color_8);
    this.paint_8 = (Paint()..color = _ColorCatalog.instance.color_9);
    this.paint_9 = (Paint()..color = _ColorCatalog.instance.color_10);
    this.paint_10 = (Paint()..color = _ColorCatalog.instance.color_13);
    this.paint_11 = (Paint()..color = _ColorCatalog.instance.color_14);
  }

  Paint paint_0;

  Paint paint_1;

  Paint paint_2;

  Paint paint_3;

  Paint paint_4;

  Paint paint_5;

  Paint paint_6;

  Paint paint_7;

  Paint paint_8;

  Paint paint_9;

  Paint paint_10;

  Paint paint_11;

  static final _PaintCatalog instance = _PaintCatalog();
}

class _EffectCatalog {
  _EffectCatalog() {
    this.paint_0 = (Paint()
      ..color = _ColorCatalog.instance.color_11
      ..maskFilter = MaskFilter.blur(
          BlurStyle.normal, BoxShadow.convertRadiusToSigma(8.0)));
    this.paint_1 = (Paint()
      ..color = _ColorCatalog.instance.color_12
      ..maskFilter = MaskFilter.blur(
          BlurStyle.normal, BoxShadow.convertRadiusToSigma(6.0)));
    this.paint_2 = (Paint()
      ..color = _ColorCatalog.instance.color_14
      ..maskFilter = MaskFilter.blur(
          BlurStyle.normal, BoxShadow.convertRadiusToSigma(10.0)));
  }

  Paint paint_0;

  Paint paint_1;

  Paint paint_2;

  static final _EffectCatalog instance = _EffectCatalog();
}

class _ColorCatalog {
  _ColorCatalog() {
    this.color_0 = Color.fromARGB(0, 0, 0, 0);
    this.color_1 = Color.fromARGB(255, 196, 196, 196);
    this.color_2 = Color.fromARGB(165, 18, 52, 66);
    this.color_3 = Color.fromARGB(255, 18, 52, 66);
    this.color_4 = Color.fromARGB(255, 255, 255, 255);
    this.color_5 = Color.fromARGB(255, 26, 131, 255);
    this.color_6 = Color.fromARGB(255, 162, 89, 255);
    this.color_7 = Color.fromARGB(255, 10, 207, 131);
    this.color_8 = Color.fromARGB(255, 26, 188, 254);
    this.color_9 = Color.fromARGB(255, 242, 78, 30);
    this.color_10 = Color.fromARGB(255, 255, 114, 98);
    this.color_11 = Color.fromARGB(26, 0, 0, 0);
    this.color_12 = Color.fromARGB(41, 0, 0, 0);
    this.color_13 = Color.fromARGB(255, 242, 242, 242);
    this.color_14 = Color.fromARGB(255, 80, 182, 255);
    this.color_15 = Color.fromARGB(255, 85, 85, 85);
  }

  Color color_0;

  Color color_1;

  Color color_2;

  Color color_3;

  Color color_4;

  Color color_5;

  Color color_6;

  Color color_7;

  Color color_8;

  Color color_9;

  Color color_10;

  Color color_11;

  Color color_12;

  Color color_13;

  Color color_14;

  Color color_15;

  static final _ColorCatalog instance = _ColorCatalog();
}

class _TextStyleCatalog {
  _TextStyleCatalog() {
    this.ui_TextStyle_0 = ui.TextStyle(
      fontFamily: 'Roboto',
      color: _ColorCatalog.instance.color_4,
      fontSize: 9.0,
      fontWeight: FontWeight.w700,
    );
    this.ui_TextStyle_1 = ui.TextStyle(
      fontFamily: 'Roboto',
      color: _ColorCatalog.instance.color_4,
      fontSize: 7.0,
      fontWeight: FontWeight.w400,
    );
    this.ui_TextStyle_2 = ui.TextStyle(
      fontFamily: 'Roboto',
      color: _ColorCatalog.instance.color_5,
      fontSize: 9.0,
      fontWeight: FontWeight.w700,
    );
    this.ui_TextStyle_3 = ui.TextStyle(
      fontFamily: 'Roboto',
      color: _ColorCatalog.instance.color_4,
      fontSize: 12.0,
      fontWeight: FontWeight.w700,
    );
    this.ui_TextStyle_4 = ui.TextStyle(
      fontFamily: 'Roboto',
      color: _ColorCatalog.instance.color_15,
      fontSize: 16.0,
      fontWeight: FontWeight.w300,
    );
    this.ui_TextStyle_5 = ui.TextStyle(
      fontFamily: 'Roboto',
      color: _ColorCatalog.instance.color_4,
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
    );
  }

  ui.TextStyle ui_TextStyle_0;

  ui.TextStyle ui_TextStyle_1;

  ui.TextStyle ui_TextStyle_2;

  ui.TextStyle ui_TextStyle_3;

  ui.TextStyle ui_TextStyle_4;

  ui.TextStyle ui_TextStyle_5;

  static final _TextStyleCatalog instance = _TextStyleCatalog();
}

class Data {
  Data({this.isVisible});

  final bool isVisible;

  @override
  bool operator ==(o) => o is Data && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    return result;
  }
}

class TextData extends Data {
  TextData({isVisible, this.text}) : super(isVisible: isVisible);

  final String text;

  @override
  bool operator ==(o) =>
      o is TextData && isVisible == o.isVisible && text == o.text;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    result = 37 * result + (this.text?.hashCode ?? 0);
    return result;
  }
}

class VectorData extends Data {
  VectorData({isVisible}) : super(isVisible: isVisible);

  @override
  bool operator ==(o) => o is VectorData && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    return result;
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:kidneysmart/gen/assets.gen.dart';

class ImageFromPath extends StatelessWidget {
  const ImageFromPath({
    required this.path,
    super.key,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.secondary.withOpacity(0.35),
              BlendMode.srcOver,
            ),
            child: Image.file(
              width: double.infinity,
              fit: BoxFit.fill,
              File(path),
            ),
          ),
        ),
        SvgPicture.asset(
          width: 30,
          height: 30,
          AssetPaths.icSuccessPhotoSvg,
        ),
      ],
    );
  }
}

// class _ImageFromPath extends StatelessWidget {
//   const _ImageFromPath({
//     required this.path,
//   });

//   final String path;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         Container(
//           width: double.infinity,
//           height: 120,
//           clipBehavior: Clip.hardEdge,
//           decoration: const BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(5)),
//           ),
//           child: ColorFiltered(
//             colorFilter: path.isNotEmpty
//                 ? ColorFilter.mode(
//                     Theme.of(context).colorScheme.secondary.withOpacity(0.5),
//                     BlendMode.srcOver,
//                   )
//                 : const ColorFilter.mode(
//                     AppColors.transparent,
//                     BlendMode.srcOver,
//                   ),
//             child: Container(
//               width: double.infinity,
//               height: 85,
//               color: AppColors.white,
//               child: Center(
//                 child: SizedBox(
//                   width: 136,
//                   height: 85,
//                   child: ClipRRect(
//                     borderRadius: const BorderRadius.all(Radius.circular(5)),
//                     child: Center(
//                       child: path.isNotEmpty
//                           ? Image.file(
//                               width: double.infinity,
//                               fit: BoxFit.fill,
//                               File(path),
//                             )
//                           : Image.asset(AssetPaths.fotoCardImage),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         if (path.isNotEmpty)
//           SvgPicture.asset(
//             width: 30,
//             height: 30,
//             'assets/svg/ic_success_photo.svg',
//           ),
//       ],
//     );
//   }
// }

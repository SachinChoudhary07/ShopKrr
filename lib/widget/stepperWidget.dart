// import 'package:flutter/material.dart';
// import 'package:dotted_line/dotted_line.dart';
//
// class StepperWidget extends StatelessWidget {
//   final int currentStep;
//
//   const StepperWidget({Key? key, required this.currentStep}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           _buildStep("Cart", 1),
//           _buildDottedLine(),
//           _buildStep("Checkout", 2),
//           _buildDottedLine(),
//           _buildStep("Delivery", 3),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildStep(String title, int stepNumber) {
//     bool isActive = stepNumber == currentStep;
//     return Column(
//       children: [
//         CircleAvatar(
//           radius: 12,
//           backgroundColor: isActive ? Colors.black : Colors.white,
//           child: CircleAvatar(
//             radius: 10,
//             backgroundColor: Colors.white,
//             child: isActive
//                 ? const Icon(
//               Icons.check_circle,
//               color: Colors.black,
//               size: 12,
//             )
//                 : const CircleAvatar(
//               radius: 5,
//               backgroundColor: Colors.grey,
//             ),
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           title,
//           style: TextStyle(
//             color: isActive ? Colors.black : Colors.grey,
//             fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildDottedLine() {
//     return const Expanded(
//       child: DottedLine(
//         dashColor: Colors.grey,
//         lineThickness: 2,
//         dashLength: 4,
//       ),
//     );
//   }
// }

import 'package:buttons/buttons/widgets/bordered_icon_button.dart';
import 'package:buttons/buttons/widgets/circular_border_raw_material_button_widget.dart';
import 'package:buttons/buttons/widgets/circular_raw_material_button_widget.dart';
import 'package:buttons/buttons/widgets/custom_filled_button_widget.dart';
import 'package:buttons/buttons/widgets/filled_button_widget.dart';
import 'package:buttons/buttons/widgets/floating_action_button_widget.dart';
import 'package:buttons/buttons/widgets/icon_button_widget.dart';
import 'package:buttons/buttons/widgets/rectangular_raw_material_button_widget.dart';
import 'package:buttons/buttons/widgets/responsive_icon_button_widget.dart';
import 'package:buttons/buttons/widgets/tonal_filled_button_widget.dart';
import 'package:buttons/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonScreenTwo extends StatefulWidget {
  const ButtonScreenTwo({super.key});

  @override
  State<ButtonScreenTwo> createState() => _ButtonScreenTwoState();
}

class _ButtonScreenTwoState extends State<ButtonScreenTwo> {
  /// For Toggle Icon Button
  bool _isLiked = false; // Simple like
  bool _thumbLiked = false; // Thumb like button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Button 2', style: TextStyles.kText30W400),
        elevation: 8.0,
        titleSpacing: 2.5,
        centerTitle: true,
      ),

      /// Floating Action Button
      floatingActionButton: FloatingActionButtonWidget(),

      /// Change Default Location
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      /// Button Animation
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// Icon Buttons Section
              Column(
                children: [
                  /// Simple Label
                  Text(
                    'Icon Button\'s',
                    style: TextStyles.kText30W400.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  /// Icon Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      /// Love Icon Button Widget
                      IconButtonWidget(),

                      /// Bordered Icon Button
                      BorderedIconButton(
                        thumbLiked: _thumbLiked,
                        onPressed: () =>
                            setState(() => _thumbLiked = !_thumbLiked),
                      ),

                      /// Responsive Icon Button Widget
                      ResponsiveIconButtonWidget(
                        onPressed: () => setState(() => _isLiked = !_isLiked),
                        isLiked: _isLiked,
                      ),
                    ],
                  ),
                ],
              ),

              /// Raw Material Buttons Section
              Column(
                children: [
                  Text(
                    'Raw Material Button\'s',
                    style: TextStyles.kText30W400.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  /// Rectangular raw material button
                  RectangularRawMaterialButton(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  /// Circular Raw material button with icon Widget
                  CircularRawMaterialButtonWidget(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  /// Rectangular Raw Material Button Widget
                  CircularBorderRawMaterialButtonWidget(),
                ],
              ),

              /// FilledButton Section
              Column(
                children: [
                  /// Label
                  Text('Filled Button\'s', style: TextStyle(fontSize: 18)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                  /// Filled Button Widget
                  FilledButtonWidget(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                  /// Tonal Filled Button Widget
                  TonalFilledButtonWidget(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  /// Custom Filled Button Widget
                  CustomFilledButtonWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

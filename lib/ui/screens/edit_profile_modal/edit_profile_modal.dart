import 'package:flutter/material.dart';

import '../../../style/buttons.dart';
import '../../../style/colors.dart' as colors;
import '../../../style/fonts.dart' as fonts_style;

Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: const BoxDecoration(
        color: colors.gray03,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: const ProfileScreen(),
    ),
  );
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 19),
        child: Column(children: const [
          AppBar(),
          SizedBox(height: 30),
          ChangeAvatar(),
          SizedBox(height: 18.5),
          ChangeName(),
          UpdateLogoutButtons(),
          SizedBox(height: 17),
        ]),
      ),
    );
  }
}

class UpdateLogoutButtons extends StatelessWidget {
  const UpdateLogoutButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SecondarySmallButton(
        onPressed: () {},
        child: const Text(
          'Logout',
          style: TextStyle(color: colors.negative),
        ),
      ),
      const Spacer(),
      PrimarySmallButton(
        onPressed: () {},
        child: const Text(
          'Update',
          style: TextStyle(color: colors.white),
        ),
      ),
    ]);
  }
}

class ChangeName extends StatelessWidget {
  const ChangeName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Name *', style: fonts_style.activeBlackEditProfile),
      const SizedBox(height: 4),
      TextField(
        textAlignVertical: TextAlignVertical.top,
        style: fonts_style.activeBlackEditProfile,
        minLines: null,
        maxLines: null,
        keyboardType: TextInputType.multiline,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          hintText: 'Alen Bronx',
          hintMaxLines: 2,
          fillColor: colors.white, filled: true,
          hintStyle: fonts_style.hintTextFieldEditProfile,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              )),
          // focusedBorder: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(8.0)),
          //   borderSide: BorderSide(width: 2, color: AppColors.primary),
          // ),
          // enabledBorder: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(8.0)),
          //   borderSide:
          //       BorderSide(width: 2, color: AppColors.borderLightGrey),
          // ),
        ),
      ),
      const SizedBox(height: 30),
    ]);
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Profile',
          style: fonts_style.titleH2,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
          ),
        )
      ],
    );
  }
}

class ChangeAvatar extends StatelessWidget {
  const ChangeAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 72,
        height: 72,
        decoration: const BoxDecoration(
          color: colors.white,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          'assets/images/avatar.png',
          height: 20,
          width: 20,
        ),
      ),
      const SizedBox(width: 10),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          SecondarySmallButton(
            onPressed: () {},
            child: const Text(
              'Change photo',
            ),
          ),
          const SizedBox(width: 10),
          SecondaryButton(
            onPressed: () {},
            child: Image.asset(
              'assets/icons/trash.png',
              height: 20,
              width: 20,
            ),
          ),
        ]),
        const SizedBox(height: 5),
        Text(
          'PNG, JPG up to 4 Mb',
          style: fonts_style.inactiveGreyEditProfile,
        ),
      ]),
    ]);
  }
}

import 'package:contenter/data_structs/profile.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart' as colors;
import '../style/buttons.dart' as buttons_style;


class ProfileBriefWidget extends StatelessWidget {
  final ProfileData profile;

  const ProfileBriefWidget({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: colors.gray04,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '${profile.firstname}\n${profile.surname}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                const Icon(Icons.more_horiz, color: colors.blue,),
              ],
            ),
            const Divider(
              color: colors.gray03,
              thickness: 2,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${profile.requestsCount} requests',
                      style: Theme.of(context).textTheme.titleMedium?.merge(const TextStyle(
                        color: colors.blue,
                      )),
                    ),
                    Text(
                      'available',
                      style: Theme.of(context).textTheme.titleMedium
                    ),
                  ],
                ),
                TextButton(
                  style: buttons_style.onLight,
                  onPressed: () { },
                  child: Row(
                    children: [
                      Text(
                        'Earned ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '\$${profile.earned}',
                        style: Theme.of(context).textTheme.titleMedium?.merge(const TextStyle(
                          color: colors.blue,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}
import 'package:flutter/material.dart';

class UserDetailCard extends StatelessWidget {
  const UserDetailCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 400, maxWidth: 1000),
      child: Container(
        // constraints: const BoxConstraints(
        //   minWidth: 100,
        //   maxWidth: 600,
        // ),
        decoration: const BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        margin: const EdgeInsets.all(20),
        // width: _screenSize.width - 20.0,
        // height: _screenSize.height * 0.65,
        child: Column(
          children: [
            // Contact and upper part of the user detail card
            userDetailContact(),

            // user detail - description about the user
            userDetailDescription(),

            //

            Container(
              padding: const EdgeInsets.only(bottom: 10.0, right: 10.0), // To hide the button focus area in case of web.
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      print('Organisation chart');
                    },
                    icon: const Icon(Icons.bakery_dining),
                  ),
                  IconButton(
                    onPressed: () {
                      print('Employee profile page');
                    },
                    icon: const Icon(Icons.person_outline_rounded),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column userDetailContact() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: const Text('0y 9m'),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            )
          ],
        ),
        const CircleAvatar(
          backgroundColor: Colors.black,
          radius: 60.0,
        ),
        const SizedBox(
          height: 25.0,
        ),
        SizedBox(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.phone),
                    Text('Call'),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.mail),
                    Text('Email'),
                  ],
                ),
              ),
            ],
          ),
        ),
        // This will become the progress bar for profile completion rate
        const SizedBox(
          height: 5.0,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.green),
          height: 2.0,
          width: 150,
        ),
      ],
    );
  }

  Container userDetailDescription() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(top: 10.0, left: 10.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Rahul Sharma',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const Text(
            'Software Engineer',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.house_outlined),
                SizedBox(
                  width: 15,
                ),
                Text('To The New Private Limited')
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                // Tooltip(
                //   message: 'Legal Entity',
                //   child: Icon(Icons.house_outlined),
                // ),
                Icon(Icons.business),
                SizedBox(
                  width: 15,
                ),
                Text('Digital Native Businesses (DNB)')
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.business_center_outlined),
                SizedBox(
                  width: 15,
                ),
                Text('iOS')
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.card_membership),
                SizedBox(
                  width: 15,
                ),
                Text('4659')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

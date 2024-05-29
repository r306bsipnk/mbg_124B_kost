import 'package:ffff/views/edit_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(LineAwesomeIcons.angle_left_solid)),
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? LineAwesomeIcons.moon : LineAwesomeIcons.sun))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        child: Image.asset('/images/EMILCANTIK.jpeg')),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.lightBlueAccent),
                      child: const Icon(LineAwesomeIcons.pencil_alt_solid),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Emil Aprilia',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                'Emil@gmail.com',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(
                        () => const EditProfile(),
                      );
                    },
                    child: Text('Edit Profile')),
              ),
              SizedBox(
                height: 30,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfieMenuWidget(),
              useManagementWidget(),
              informationWidget(),
              logOutWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class ProfieMenuWidget extends StatelessWidget {
  const ProfieMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.blue.withOpacity(0.1)),
        child: const Icon(
          LineAwesomeIcons.cogs_solid,
          color: Colors.blue,
        ),
      ),
      title: Text(
        'setting',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: const Icon(
          LineAwesomeIcons.angle_right_solid,
          size: 18.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class useManagementWidget extends StatelessWidget {
  const useManagementWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.blue.withOpacity(0.1)),
        child: const Icon(
          LineAwesomeIcons.user_check_solid,
          color: Colors.blue,
        ),
      ),
      title: Text(
        'User Management',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: const Icon(
          LineAwesomeIcons.angle_right_solid,
          size: 18.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class informationWidget extends StatelessWidget {
  const informationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.blue.withOpacity(0.1)),
        child: const Icon(
          LineAwesomeIcons.info_solid,
          color: Colors.blue,
        ),
      ),
      title: Text(
        'Information',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: const Icon(
          LineAwesomeIcons.angle_right_solid,
          size: 18.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class logOutWidget extends StatelessWidget {
  const logOutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.blue.withOpacity(0.1)),
        child: const Icon(
          LineAwesomeIcons.sign_out_alt_solid,
          color: Colors.blue,
        ),
      ),
      title: Text(
        'Logout',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: const Icon(
          LineAwesomeIcons.angle_right_solid,
          size: 18.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}

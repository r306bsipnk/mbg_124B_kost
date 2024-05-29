import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(LineAwesomeIcons.angle_left_solid)),
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
                      child: const Icon(LineAwesomeIcons.camera_solid),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Full Name'),
                      prefixIcon: Icon(LineAwesomeIcons.user),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Alamat'),
                      prefixIcon: Icon(LineAwesomeIcons.location_arrow_solid),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('Telepon'),
                      prefixIcon: Icon(LineAwesomeIcons.phone_solid),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

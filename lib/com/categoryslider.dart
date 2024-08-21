

import 'package:flutter/material.dart';

class categoryslider extends StatelessWidget {
  const categoryslider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Revamp Your Home',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Revamp Your Home in Style',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/Sofacover.png',
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        const Text('Cushion covers, bedsheets & more'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/Homedecor.png',
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        const Text('Figurines, vases & more'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  // Item 3: Home Storage
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/Windowcurtain.png',
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        const Text('Home storage'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/Lamp.png',
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        const Text('Lighting solutions'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Starting ₹99 | Home Improvement Essentials',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/Bathroomcleaning.png',
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        const Text('Spin mops, wipes & more'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/Napkinholder.png',
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        const Text('Bathroom hardware & accessories'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/box.png',
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        const Text('Hammers, screwdrivers & more'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/Holder.png',
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        const Text('Extension boards, plugs & more'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ],
    );
  }
}

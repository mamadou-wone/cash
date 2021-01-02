import 'package:fayma_cash/controllers/onboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

// 31/12/2020
// ENd of this amazing year
// 01/01/2021
// 02/01/2021
class OnboardPage extends StatelessWidget {
  final _controller = OnboardController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/logo.png"),
                ),
              ],
            ),
          ),
          SafeArea(
            child: PageView.builder(
                onPageChanged: _controller.selectedIndex,
                itemCount: _controller.onboard.length,
                controller: _controller.pageControler,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(_controller.onboard[index].imageName),
                        SizedBox(
                          height: 18.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: Text(
                            _controller.onboard[index].description,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              children: List.generate(
                _controller.onboard.length,
                (index) => Obx(() {
                  {
                    return Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                          color: _controller.selectedIndex.value == index
                              ? Colors.red
                              : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    );
                  }
                }),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              elevation: 0.0,
              backgroundColor: Colors.amber[800],
              child: Obx(() => Text(_controller.isLastPage ? "Start" : "Next")),
              onPressed: _controller.nextPage,
            ),
          ),
        ],
      ),
    );
  }
}

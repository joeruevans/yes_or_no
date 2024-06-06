import 'package:flutter/material.dart';

class HisMessageBubble extends StatelessWidget {
  const HisMessageBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors= Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'BIENVENIDO, RECUERDE NO DECIR MONKE',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
  

  
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final imageWidth = size.width * 0.7; // Calculate the desired width for the image
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://media1.tenor.com/m/oC8CSq25wx4AAAAC/baby-yoda-welcome.gif',
        width: imageWidth,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if(loadingProgress==null) return child;
          return Container(
            width: imageWidth,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Se está enviando un GIF'),
          );
        },
      ),
    );
  }
}

 Widget welcomeMessage() {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '!!!!MONKE HAS COMPLETE CONTROL!!!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red.shade900),
        ),
        const SizedBox(height: 10),
        _ImageBubble2(),
      ],
    );

  }



class _ImageBubble2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final imageWidth = size.width * 0.7; // Calculate the desired width for the image
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://static.wikia.nocookie.net/supermarioglitchy4/images/9/9d/Bonzi_Buddy.png/revision/latest?cb=20211126030404',
        width: imageWidth,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if(loadingProgress==null) return child;
          return Container(
            width: imageWidth,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Se está enviando un GIF'),
          );
        },
      ),
    );
  }
}
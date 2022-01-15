part of'../view.dart';
class _AppName extends StatelessWidget {
  const _AppName({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
         Text(
                'lATECH',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
               Text(
                'TECH MARKET',
                style: TextStyle(color: Colors.white, letterSpacing: 6),
              ),
      ],
      
    );
  }
}

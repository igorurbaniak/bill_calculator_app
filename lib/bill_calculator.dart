import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BillCalculator extends StatefulWidget {
  const BillCalculator({Key? key}) : super(key: key);

  @override
  State<BillCalculator> createState() => _BillCalculatorState();
}

class _BillCalculatorState extends State<BillCalculator> {
  double friendsvalue = 15.0;

  buildbutton(String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: GoogleFonts.fredokaOne(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  TextStyle createdstyle = GoogleFonts.fredokaOne(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 40),
                child: Text(
                  'Bill Calculator',
                  style: GoogleFonts.fredokaOne(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'images/black_graphite.jpg',
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total:',
                            style: GoogleFonts.fredokaOne(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '100',
                            style: GoogleFonts.fredokaOne(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Friends:', style: createdstyle),
                              Text('Tax:', style: createdstyle),
                              Text('Tip:', style: createdstyle),
                            ],
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(friendsvalue.round().toString(),
                                  style: createdstyle),
                              Text('23%', style: createdstyle),
                              Text('10', style: createdstyle),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'How many friends?',
                style: GoogleFonts.fredokaOne(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Slider(
                min: 0,
                max: 30,
                divisions: 30,
                activeColor: Colors.yellow,
                inactiveColor: Colors.black,
                value: friendsvalue,
                onChanged: (value) {
                  setState(() {
                    friendsvalue = value;
                  });
                },
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(32)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            'T I P',
                            style: GoogleFonts.fredokaOne(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: FloatingActionButton(
                                backgroundColor: Colors.grey[700],
                                onPressed: () {},
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              '20',
                              style: GoogleFonts.fredokaOne(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: FloatingActionButton(
                                backgroundColor: Colors.grey[700],
                                onPressed: () {},
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                            borderSide: const BorderSide(
                                color: Colors.black, width: 2.0),
                          ),
                          labelText: 'Tax in %',
                          labelStyle: GoogleFonts.fredokaOne(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  buildbutton('1'),
                  buildbutton('2'),
                  buildbutton('3'),
                ],
              ),
              Row(
                children: [
                  buildbutton('4'),
                  buildbutton('5'),
                  buildbutton('6'),
                ],
              ),
              Row(
                children: [
                  buildbutton('7'),
                  buildbutton('8'),
                  buildbutton('9'),
                ],
              ),
              Row(
                children: [
                  buildbutton('.'),
                  buildbutton('0'),
                  buildbutton('-'),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                ),
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Split the Bill',
                    style: GoogleFonts.fredokaOne(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

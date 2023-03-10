part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    bool status = true;

    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset('assets/oracle.svg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Center(
                    child: Column(
                      children: [
                        Text("Welcome!",
                            style: GoogleFonts.poppins(
                                fontSize: 26, fontWeight: FontWeight.w600)),
                        Text(
                          "Please enter your data to continue",
                          style: GoogleFonts.poppins(
                              color: Colors.black45, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text("Username",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 5),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: greyColor),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          size: 24,
                        ),
                        hintText: "Your Username",
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.black45, fontSize: 15),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text("Password",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 5),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: greyColor),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          size: 22,
                        ),
                        hintText: "Your Password",
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.black45, fontSize: 15),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Remember me",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                      Container(
                        child: CupertinoSwitch(
                          value: status,
                          onChanged: (value) {
                            setState(() {
                              status = !status;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                        width: double.infinity,
                        height: 43,
                        child: Center(
                            child: Text("Sign In",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)))),
                    style: ElevatedButton.styleFrom(
                        primary: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SvgPicture.asset('assets/kiri.svg'),
                      Image.asset('assets/images/kiri.png'),
                      SizedBox(width: 10),
                      Text("Or Continue With",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                      SizedBox(width: 10),
                      Image.asset('assets/images/kanan.png'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black45)),
                        child: Center(
                          child: Image.asset('assets/images/facebook.png'),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black45)),
                        child: Center(
                          child: Image.asset('assets/images/google.png'),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black45)),
                        child: Center(
                          child: Image.asset('assets/images/twitt.png'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      'By connecting your account confirm that',
                      style: GoogleFonts.poppins(
                          color: Colors.black54, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'you agreewith our ',
                        style: GoogleFonts.poppins(
                            color: Colors.black54, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Terms of Service',
                        style:
                            GoogleFonts.poppins(color: mainColor, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}

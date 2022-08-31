import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tickect_ui/ticket_painter.dart';
import 'horizontal_dotted_line.dart';

class TicketUiScreen extends StatelessWidget {
  const TicketUiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // height: MediaQuery.of(context).size.height * 1,
          // width: MediaQuery.of(context).size.width * 1,
          child: ListView.builder(
            itemBuilder: (_, __) {
              return Container(
                height: 220,
                margin: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                child: CustomPaint(
                  painter: TicketPainter(
                    borderColor: Colors.black,
                    bgColor: const Color.fromARGB(255, 24, 213, 227),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ISM-048',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'sk-078',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '\$190',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'August 31, 2022',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(2, 4, 0, 4),
                              child: Icon(
                                Icons.circle_outlined,
                                size: 18,
                              ),
                            ),
                            Expanded(
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: CustomPaint(
                                        painter: HorizontalDottedLinePainter(),
                                        size: const Size(double.infinity, 1),
                                      ),
                                    ),
                                  ),
                                  const Center(
                                    child: RotatedBox(
                                      quarterTurns: 1,
                                      child: Icon(
                                        Icons.airplanemode_on_rounded,
                                        color: Colors.black,
                                        size: 28,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(2, 4, 8, 4),
                              child: Icon(
                                Icons.circle_outlined,
                                size: 18,
                              ),
                            ),
                            Text(
                              'Sep 30, 2022',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10:40AM',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '1h 30m',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '12:50AM',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Islamabad',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black.withOpacity(0.2),
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                child: Text(
                                  'VIP',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: 6,
          ),
        ),
      ),
    );
  }
}

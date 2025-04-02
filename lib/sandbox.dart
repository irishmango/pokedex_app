  appBar: PreferredSize(
        preferredSize = Size.fromHeight(80),
        child = Container(
          decoration: BoxDecoration(
            color: Color(0xFFDD0808),
            border: Border.all(
              color: Colors.black,
              width: 4.0,
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Stack(
                    children: [
                      // Stroke
                      Text(
                        'POKÉDEX',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.black,
                        ),
                      ),
                      // Fill
                      Text(
                        'POKÉDEX',
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
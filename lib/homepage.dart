import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      // APP BAR
      appBar: AppBar(
        title: const Text("HomePage"),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E3A8A),
        foregroundColor: Colors.white,

        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),

      // DRAWER
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Name"),
              accountEmail: const Text("Email"),
              decoration: const BoxDecoration(color: Color(0xFF2563EB)),
            ),

            ListTile(
              title: const Text("Homepage"),
              leading: const Icon(Icons.home, color: Color(0xFF2563EB)),
              hoverColor: const Color(0xFFEFF6FF),
              onTap: () {},
            ),

            const Divider(),

            const Spacer(),

            ListTile(
              title: const Text("Profile"),
              leading: const Icon(Icons.person, color: Color(0xFF2563EB)),
              hoverColor: const Color(0xFFEFF6FF),
              onTap: () {},
            ),
          ],
        ),
      ),

      // BODY
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TEXT BUTTON
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFEFF6FF),
                foregroundColor: const Color(0xFF2563EB),
                fixedSize: const Size(120, 45),
                side: const BorderSide(color: Color(0xFF2563EB)),
              ),
              child: const Text("TextButton"),
            ),

            const SizedBox(width: 10),

            // ELEVATED BUTTON
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2563EB),
                foregroundColor: Colors.white,
                fixedSize: const Size(150, 45),
                elevation: 2,
              ),
              child: const Text("ElevatedButton"),
            ),

            const SizedBox(width: 10),

            // OUTLINED BUTTON
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFF2563EB),
                side: const BorderSide(color: Color(0xFF2563EB)),
                fixedSize: const Size(130, 45),
              ),
              child: const Text("Outlined"),
            ),

            const SizedBox(width: 10),

            // ICON BUTTON
            IconButton(
              onPressed: () {},
              color: const Color(0xFF2563EB),
              icon: const Icon(Icons.login),
            ),
          ],
        ),
      ),

      // FLOATING BUTTON
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: const Color(0xFF2563EB),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}

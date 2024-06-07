import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/dialog_confirmation.dart';
import 'package:free_market_pens_mobile/presentation/widgets/components/search_widget.dart';
import 'package:free_market_pens_mobile/theme.dart';

class User {
  final String name;
  final String email;

  User({
    required this.name,
    required this.email,
  });
}

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final List<User> users = [
    User(
      name: 'AHmad Muzakki',
      email: 'zaki@gmail.com',
    ),
    User(
      name: 'Tsaqif Mukhayyar',
      email: 'tsaqif@gmail.com',
    ),
    User(
      name: 'Wa Ode Desyta',
      email: 'desy@gmail.com',
    ),
    User(
      name: 'Nandha Chrismawan',
      email: 'Nandha@gmail.com',
    ),
    User(
      name: 'Revalina',
      email: 'acha@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    bool punyaToko = true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: onPrimary,
        title: Text("Manajemen Akun", style: titleStyle),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchWidget(
              strHint: 'Cari User',
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return Slidable(
                    key: ValueKey(user.name),
                    startActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      extentRatio: 0.25,
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            _showDialogConfirmation(
                                punyaToko ? 'hapusToko' : 'hapus');
                          },
                          backgroundColor: Color(0xFFFE4A49),
                          foregroundColor: onPrimary,
                          icon: Icons.delete,
                        ),
                      ],
                    ),
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      extentRatio: 0.50,
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: primary,
                          foregroundColor: onPrimary,
                          icon: Icons.password_sharp,
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: Color.fromARGB(255, 81, 206, 220),
                          foregroundColor: onPrimary,
                          icon: Icons.edit,
                        ),
                      ],
                    ),
                    child: ListTile(
                      onTap: () {},
                      leading: Container(
                        padding: EdgeInsets.zero,
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                          color: secondary,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/images/profil_user.png'),
                      ),
                      title: Text(
                        user.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'InknutAntiqua',
                          fontSize: 12,
                        ),
                      ),
                      subtitle: Text(
                        user.email,
                        style: TextStyle(
                          color: tertiary,
                          fontFamily: 'InknutAntiqua',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDialogConfirmation(String tipe) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        switch (tipe) {
          case 'hapus':
            return DialogConfirmation(
              name: "konfirmasi-hapus-user",
              id: 0,
              userName: "John",
              onConfirm: () {},
            );
          case 'hapusToko':
            return DialogConfirmation(
              name: "konfirmasi-hapus-user-toko",
              id: 0,
              userName: "John",
              onConfirm: () {},
            );
          default:
            return Container();
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:whatsapp_clone_ul/model/chatmodel.dart';
// import 'package:whatsapp_clone_ul/screens/individual_page.dart';

class GroupPage extends StatelessWidget {
  // const GroupPage({Key? key, this.chatModel}) : super(key: key);
  // final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => IndividualPage(chatModel: chatModel),
        //   ),
        // );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              // backgroundImage: AssetImage('assets/'),
              radius: 30,
              child: ClipOval(
                child: Image(
                  image: AssetImage('assets/jamhuuriya.jpg'),
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
            ),
            title: Text(
              'CA201',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all_rounded),
                Text(
                  'Classka hala soo galo',
                  style: TextStyle(fontFamily: 'OpenSans', fontSize: 13),
                ),
              ],
            ),
            // trailing: Text(chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              // backgroundImage: AssetImage('assets/'),
              radius: 30,
              child: ClipOval(
                child: Image(
                  image: AssetImage('assets/jamhuuriya.jpg'),
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
            ),
            title: Text(
              'CA201',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all_rounded),
                Text(
                  'Classka hala soo galo',
                  style: TextStyle(fontFamily: 'OpenSans', fontSize: 13),
                ),
              ],
            ),
            // trailing: Text(chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}

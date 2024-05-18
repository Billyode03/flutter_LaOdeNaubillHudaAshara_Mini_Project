import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/constant/image_constant.dart';
import 'package:green_garden/pages/home/home_page.dart';

class OpenAiPage extends StatefulWidget {
  const OpenAiPage({super.key});

  @override
  State<OpenAiPage> createState() => _OpenAiPageState();
}

class _OpenAiPageState extends State<OpenAiPage> {
  ChatUser currentUser = ChatUser(id: '0', firstName: 'Naubil');
  ChatUser geminiUser = ChatUser(
      id: '1',
      firstName: 'Gemini AI',
      profileImage:
          'https://static.vecteezy.com/system/resources/previews/021/217/819/original/artificial-intelligence-head-icon-ai-icon-design-used-in-ai-concepts-artificial-intelligence-icon-free-vector.jpg');

  List<ChatMessage> messages = [];

  final Gemini gemini = Gemini.instance;

  void sendMessage(ChatMessage chatMessage) {
    setState(() {
      messages.insert(0, chatMessage);
    });

    try {
      // Variable tampungan dari object chatMessage
      String question = chatMessage.text;
      gemini
          .streamGenerateContent(
        question,
      )
          .listen(
        (event) {
          ChatMessage? lastMessage = messages.firstOrNull;

          if (lastMessage != null && lastMessage.user == geminiUser) {
            lastMessage = messages.removeAt(0);
            String response = event.content?.parts?.fold(
                    "",
                    (previousValue, element) =>
                        "$previousValue${element.text}") ??
                "";

            lastMessage.text += response;
            setState(() {
              messages.insert(0, lastMessage!);
            });
          } else {
            String response = event.content?.parts?.fold(
                    "",
                    (previousValue, element) =>
                        "$previousValue${element.text}") ??
                "";

            ChatMessage message = ChatMessage(
                user: geminiUser, createdAt: DateTime.now(), text: response);
            setState(() {
              messages.insert(0, message);
            });
          }
        },
      );
    } catch (e) {
      print(e);
    }

    try {
      String question = chatMessage.text;
      gemini.streamGenerateContent(question).listen((event) {
        ChatMessage? lastMessage = messages.firstOrNull;
        if (lastMessage != null && lastMessage.user == geminiUser) {}
      });
    } catch (e) {}
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: ColorPlants.cyanPlant,
          title: Column(
            children: [
              Text(
                'Welcome to Greenlant AI',
                style: TextStyleUsable.interButton1,
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 1,
                color: ColorPlants.whiteSkull,
              ),
              SizedBox(
                height: 15,
              ),
              ImageConstant.openAiBg,
            ],
          ),
          content: Text(
            'You can ask everthing you want know about plant information ! , wanna continue ?',
            style: TextStyleUsable.interRegularBold,
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 40,
                child: Center(
                  child: Text(
                    'Back',
                    style: TextStyleUsable.interRegularBoldGreen,
                  ),
                ),
                decoration: BoxDecoration(
                  color: ColorPlants.whiteSkull,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 100,
                height: 40,
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyleUsable.interRegularBold,
                  ),
                ),
                decoration: BoxDecoration(
                  color: ColorPlants.greenDark,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDialog();
    });
    // Menambahkan pesan default dari Gemini AI
    messages.add(ChatMessage(
      user: geminiUser,
      createdAt: DateTime.now(),
      text:
          'Hello! I\'m GreenLant AI, i hope you can ask me around about Plant in this world !!, Happy Gardening ... ',
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPlants.greenDark,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ImageConstant.aiBackground, fit: BoxFit.cover)),
        child: DashChat(
          currentUser: currentUser,
          onSend: sendMessage,
          messages: messages,
        ),
      ),
    );
  }
}

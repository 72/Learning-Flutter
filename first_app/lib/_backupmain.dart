import 'package:flutter/material.dart';

const String _name = "John Appleseed";

void main() => runApp(ChatDemo());

class ChatDemo extends StatelessWidget {
	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Chat Demo',
			theme: ThemeData(
				primarySwatch: Colors.pink,
			),
			home: ChatScreen(),
		);
	}
}

class ChatScreen extends StatefulWidget {
	@override
	State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
	final List<ChatMessage> _messages = <ChatMessage>[];
	final TextEditingController _textController = TextEditingController();

	void _handleSubmitted(String text){
		_textController.clear();
		ChatMessage message = ChatMessage(
			text: text,
		);
		setState((){
			_messages.insert(0, message);
		});
	}

	Widget _buildTextComposer() {
		return IconTheme(
			data: IconThemeData(color: Theme.of(context).accentColor),
			child: Container(
				margin: const EdgeInsets.symmetric(horizontal: 8.0),
				child: Row(children: <Widget>[
					Flexible(
						child: TextField(
							controller: _textController,
							onSubmitted: _handleSubmitted,
							decoration: InputDecoration.collapsed(
								hintText: "Send a Message"
							),
						),
					),
					Container(
						margin: EdgeInsets.symmetric(horizontal: 4.0),
						child: IconButton(
							icon: Icon(Icons.send),
							onPressed: () => _handleSubmitted(_textController.text),
						)
					)
				],)
			),
		);
	}

	@override
	Widget build(BuildContext context){
		return Scaffold(
				appBar: AppBar(
					title: Text("Chat Demo"),
				),
				body: Column(
					children: <Widget>[
						Flexible(
							child: ListView.builder(
								padding: EdgeInsets.all(8.0),
								reverse: true,
								itemBuilder: (_, int index) => _messages[index],
								itemCount: _messages.length,
							)
						),
						Divider(height: 1.0,),
						Container(
							decoration: BoxDecoration(
								color: Theme.of(context).cardColor,
							),
							child: SafeArea(child: _buildTextComposer()),
						),
					],
				),
			);
	}
}

class ChatMessage extends StatelessWidget {
	ChatMessage({this.text});
	final String text;

	@override
	Widget build(BuildContext context){
		return Container(
			margin: const EdgeInsets.symmetric(vertical: 10.0),
			child:
				SafeArea(
					top: false,
					bottom: false,
					child: Row(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: <Widget>[
							Container(
								margin: const EdgeInsets.only(right: 16.0),
								child: CircleAvatar(child: Text(_name[0])),
							),
							Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: <Widget>[
									Text(_name, style: Theme.of(context).textTheme.subhead),
									Container(
										margin: EdgeInsets.only(top: 5.0),
										child: Text(text),
									)
								],
							)
						],
					)
				)
		);
	}
}

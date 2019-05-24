import 'package:flutter/material.dart';

import './chat_message.dart';


const String name = "John Appleseed";

class ChatScreen extends StatefulWidget {
	@override
	State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
	final List<ChatMessage> _messages = <ChatMessage>[];
	final TextEditingController _textController = TextEditingController();
	bool _isComposing = false;

	void _handleSubmitted(String text){
		_textController.clear();
		setState(() {
			_isComposing = false;
		});
		ChatMessage message = ChatMessage(
			name: name,
			text: text,
			animationController: AnimationController(
				duration: Duration(milliseconds: 300),
				vsync: this,
			),
		);
		setState((){
			_messages.insert(0, message);
		});
		message.animationController.forward();
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
							onChanged: (String text){
								setState((){
									_isComposing = text.length > 0;
								});
							},
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
							onPressed: _isComposing
								? () => _handleSubmitted(_textController.text)
								: null,
						)
					)
				],)
			),
		);
	}

	@override
	void dispose(){
		for(ChatMessage message in _messages)
			message.animationController.dispose();
		super.dispose();
	}

	@override
	Widget build(BuildContext context){
		return Scaffold(
				appBar: AppBar(
					title: Text("Chat Demo"),
					// elevation: 
					// 	Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
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
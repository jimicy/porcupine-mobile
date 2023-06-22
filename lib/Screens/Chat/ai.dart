// import 'package:dart_openai/dart_openai.dart';
// import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

// class AiBot {
//   final chatContext = <OpenAIChatCompletionChoiceMessageModel>[
//     const OpenAIChatCompletionChoiceMessageModel(
//       role: OpenAIChatMessageRole.system,
//       content:
//           'You are health care professional who specializes in sexual health, sexual wellness, sexually transmitted disease and offers helpful medical advice',
//     ),
//   ];

//   /// The singleton instance of [AiBot].
//   static final AiBot _instance = AiBot._();

//   static AiBot get instance {
//     return _instance;
//   }

//   void handleUserQuery(types.PartialText message) {
//     // Add the user query to our current chat history context.
//     chatContext.add(
//       OpenAIChatCompletionChoiceMessageModel(
//         role: OpenAIChatMessageRole.user,
//         content: message.text,
//       ),
//     );

//     // Wait for reply from GPT and add it to the context as well.
//   }
// }

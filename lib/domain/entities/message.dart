enum FromWho{me,they}
class MessageList{
  final String text;
  final String? imageUrl;
  final FromWho fromwho;
  MessageList({
    required this.text,
    this.imageUrl,
    required this.fromwho
  });
}
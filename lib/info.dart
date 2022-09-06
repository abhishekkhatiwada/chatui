class Message {
  bool isMe;
  final String text;
  final String time;
  final String? name;

  Message(
      {required this.isMe, required this.text, required this.time, this.name});
}

List<Message> message = List.generate(
  demo_messages.length,
  (index) => Message(
      isMe: demo_messages[index]['isMe'],
      text: demo_messages[index]['text'],
      name: demo_messages[index]['name'],
      time: demo_messages[index]['time']),
);

List demo_messages = [
  {
    "isMe": false,
    'name': 'Abhishek',
    "text": "Hey What is up with you!!",
    "time": "10:00 am"
  },
  {
    "isMe": true,
    'name': 'Abhishek',
    "text": "im fine,wbu?",
    "time": "11:00 am"
  },
  {
    "isMe": false,
    'name': 'Abhishek',
    "text": "I am great man!",
    "time": "11:01 am"
  },
  {
    "isMe": false,
    "text": "Just messaged cuz I had some work.",
    'name': 'Abhishek',
    "time": "11:01 am"
  },
  {
    "isMe": true,
    "text": "Obviously, say",
    'name': 'Abhishek',
    "time": "11:03 am"
  },
  {
    "isMe": false,
    "text": "haha I wanted you to check out my new channel ^^",
    'name': 'Abhishek',
    "time": "11:04 am"
  },
  {
    "isMe": true,
    "text": " Sure, what is the channel name?",
    'name': 'Abhishek',
    "time": "11:05 am"
  },
  {
    "isMe": false,
    "text": "Rivaan Ranawat",
    'name': 'Abhishek',
    "time": "11:06 am",
  },
  {
    "isMe": true,
    "text": "Looks great to me!",
    'name': 'Abhishek',
    "time": "11:15 am",
  },
  {"isMe": false, "text": "Thanks bro!", "time": "11:17 am"},
  {"isMe": false, "text": "Did you subscribe?", "time": "11:16 am"},
  {"isMe": true, "text": "Yes, surely bro!", "time": "11:17 am"},
  {
    "isMe": false,
    "text": "Cool, did you like the content?",
    "time": "11:18 am",
  },
  {
    "isMe": true,
    "text": "I loved it?",
    "time": "11:19 am",
  },
  {
    "isMe": false,
    "text":
        "OMG! Woah! Thanks! sfhgsdfgsdhfgsdhfs sdfsdfksdhfkjsdhfsd fsdbfsdh shfdsfjhdsbf sbfsdhfkjdsf sfsdhfokdshfoiudsf sdfishdfkshfkdsnf sdfbsdifhsdifsdfsd sjfhksdnfsdpkfnsdf sdfnsdjfnsdkf sdf sdkfjdsnfkds fsdkfndskjf ",
    "time": "11:20 am",
  },
  {
    "isMe": true,
    "text":
        "i adasd asd sa dsa d asd as d sad as das d asd sa das d as das dsad as das dasd as das d asd as das d asd as das d as das das d asd as dasd as das d asdas das d as das d asd ad a da d sadsa as d",
    "time": "11:19 am",
  },
];

#!/usr/bin/osascript  -l JavaScript -s o

var app = Application('Mail')

messages = app.selection()

//messages[0].flagIndex = 0
//messages[0].backgroundColor = "red"
for (const m of messages)
  console.log(JSON.stringify({"sender": app.extractNameFrom(m.sender()), "subject": m.subject(), "dateReceived": m.dateReceived().toDateString(), "flagIndex": m.flagIndex(), "content": m.content(), "messageId": m.messageId()}))

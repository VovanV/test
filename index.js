var Skb = require('skb');
var token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI1ODFjYWU2ZDRjNWE5NzAwMTI4ZjZhZWIiLCJ1c2VybmFtZSI6InZvdHJpbnZvdmFAcmFtYmxlci5ydSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNDc4NzUzMTM4fQ.STuH1Hh4oRMdJm5kU8CfLXxjAJg-ijQVWqrfBuMJnSg';
var skb = new Skb(token);
skb.taskHelloWorld('Любой ваш текст тут');
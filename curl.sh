curl -i --request PUT  --data "{\"switch\":1}"  http://127.0.0.1/index.php/switches/1/switch
curl -i --request POST  --data "{\"code\":0}"  http://127.0.0.1/index.php/feedback/led1

curl -i --request POST  --data "{\"type\":\"switch\",\"value\":7}"  http://127.0.0.1/index.php/devices/1

curl -i --request POST  --data "{\"type\":\"step\",\"switch\":7,\"controller\":\"+\"}"  http://127.0.0.1/index.php/devices/7
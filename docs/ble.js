// script.js
document.addEventListener('DOMContentLoaded', (event) => {
    let rxCharacteristic;
    let txCharacteristic;

    // mp3ファイルのリスト
    const mp3Files = [
        "mp3/hunVoice.mp3",
        "mp3/painVoice.mp3",
        "mp3/quesVoice.mp3",
        "mp3/replyVoice.mp3",
        "mp3/yaaVoice.mp3",
    ];

    document.getElementById('connect').addEventListener('click', function() {
        navigator.bluetooth.requestDevice({
            filters: [{ services: ['6e400001-b5a3-f393-e0a9-e50e24dcca9e'] }]
        })
        .then(device => {
            console.log('Connecting to device...');
            return device.gatt.connect();
        })
        .then(server => {
            return server.getPrimaryService('6e400001-b5a3-f393-e0a9-e50e24dcca9e');
        })
        .then(service => {
            const txPromise = service.getCharacteristic('6e400002-b5a3-f393-e0a9-e50e24dcca9e');
            const rxPromise = service.getCharacteristic('6e400003-b5a3-f393-e0a9-e50e24dcca9e');

            return Promise.all([txPromise, rxPromise]);
        })
        .then(characteristics => {
            txCharacteristic = characteristics[0];
            rxCharacteristic = characteristics[1];

            return rxCharacteristic.startNotifications();
        })
        .then(() => {
            rxCharacteristic.addEventListener('characteristicvaluechanged', handleNotifications);
            document.getElementById('send').addEventListener('click', function() {
                const valueToSend = document.getElementById('inputText').value;
                const encoder = new TextEncoder();
                txCharacteristic.writeValue(encoder.encode(valueToSend));
                console.log('Sent:', valueToSend);
            });
            console.log('Connected and ready to send data.');
        })
        .catch(error => {
            console.error('Connection failed!', error);
        });
    });

    function handleNotifications(event) {
        const value = event.target.value;
        const decoder = new TextDecoder();
        const decodedValue = decoder.decode(value);
        console.log('Received:', decodedValue);
        document.getElementById('receivedData').textContent = `Received: ${decodedValue}`;
        if (decodedValue === "1") {
            // document.getElementById('audioPlayer').play().catch(error => console.error('Playback failed', error));
            playRandomMp3();
        } else if (decodedValue === "0") {
            document.getElementById('audioPlayer').pause();
            document.getElementById('audioPlayer').currentTime = 0; // オーディオを最初から再開するために時間をリセット
        }
    }
    function playRandomMp3() {
        const randomIndex = Math.floor(Math.random() * mp3Files.length);
        const audioPlayer = document.getElementById('audioPlayer');
        audioPlayer.src = mp3Files[randomIndex];
        audioPlayer.play().catch(error => console.error('Playback failed', error));
    }

});

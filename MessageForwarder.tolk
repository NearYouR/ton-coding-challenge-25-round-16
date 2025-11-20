contract A {
    address contractB;

    // Constructor to initialize Contract B address
    constructor(address _contractB) {
        contractB = _contractB;
    }

    // Function to receive messages and forward to Contract B
    public function receiveMessage(string message) {
        // Process the incoming message (you can add specific logic here)
        sendMessageToB(message);
    }

    // Function to send a message to Contract B
    private function sendMessageToB(string message) {
        call(contractB, "receiveMessage", message);
    }

    // Handle the RichBounce response from Contract B
    public function handleRichBounce(string errorMessage) {
        // Process the RichBounce error (you can add custom logic here)
        log("RichBounce triggered with message: " + errorMessage);
    }
}

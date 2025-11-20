contract B {
    // Function to receive messages and always trigger an error
    public function receiveMessage(string message) {
        // Log the received message for debugging (optional)
        log("Received message: " + message);
        
        // Trigger a RichBounce error
        throw("RichBounce: Error triggered in Contract B");
    }
}

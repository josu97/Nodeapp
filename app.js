const express = require('express');
const app = express();

// Define a route
app.get('/', (req, res) => {
    res.send('Hello, World! Welcome to my Node.js web app.');
});

// Start the server
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});


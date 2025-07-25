<?php
session_start();

// Connect to the database
$db_host = 'localhost';
$db_user = 'root';
$db_pass = '';
$db_name = 'swapmeet';

$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve user credentials from the form
$username = $_POST['username'];
$password = $_POST['password'];

// Verify user from the database
$query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
$result = $conn->query($query);

if ($result->num_rows == 1) {
    // Start a session and store user information
    $_SESSION['username'] = $username;
    $_SESSION['success_message'] = "Login successful. Welcome, $username!";

    // Redirect to profile page or any other page you want
    header("Location: index.html");
} else {
    // Store an error message in session
    $_SESSION['error_message'] = "Invalid username or password.";

    // Redirect back to the login page
    header("Location: login.html");
}

$conn->close();
?>

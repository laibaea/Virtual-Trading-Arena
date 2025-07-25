<?php
      session_start();

      // Check if user is logged in
      if (isset($_SESSION['username'])) {
        $username = $_SESSION['username'];
        echo "<a href='profile.php'><i class="flaticon-user">$username</a>"; // Replace username with a link to profile.php
      } else {
        echo "<a href='login.html'><i class="flaticon-user">Login/Register</a>";
      }
    ?>
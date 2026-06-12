<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dynamic Island</title>
  <style>
    body, html {
      margin: 0;
      padding: 0;
      height: 100%;
      overflow: hidden;
      background: #f0f0f0; /* Light background */
    }

    .dynamic-island {
      position: fixed;
      top: 10px; /* Small offset from the top */
      left: 50%;
      transform: translateX(-50%);
      width: 30px;
      height: 30px;
      background-color: #000; /* Black background */
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      cursor: pointer;
      transition: width 0.3s, height 0.3s, background-color 0.3s, box-shadow 0.3s;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Subtle shadow */
      overflow: hidden;
    }

    .dynamic-island:hover,
    .dynamic-island.active {
      width: 300px;
      height: 60px;
      border-radius: 30px;
      background-color: rgba(0, 0, 0, 0.9); /* Darker background when active */
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.6); /* Enhanced shadow */
    }

    .dynamic-island .content {
      color: white;
      font-family: 'Helvetica Neue', sans-serif;
      font-size: 14px;
      text-align: left;
      opacity: 0;
      transition: opacity 0.3s, transform 0.3s;
      transform: translateX(-100%);
      padding: 0 15px;
    }

    .dynamic-island.active .content {
      opacity: 1;
      transform: translateX(0);
    }

    .dynamic-island .notification {
      display: none;
      opacity: 0;
      transition: opacity 0.3s, transform 0.3s;
      transform: translateY(-100%);
      color: black;
      background: white;
      border-radius: 20px;
      padding: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
      margin-to了解您的需求，我们将重新设计灵动岛，使其更加自然和流畅。以下是优化后的代码：

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dynamic Island</title>
  <style>
    body, html {
      margin: 0;
      padding: 0;
      height: 100%;
      overflow: hidden;
      background: #f0f0f0; /* Light background */
    }

    .dynamic-island {
      position: fixed;
      top: 10px; /* Small offset from the top */
      left: 50%;
      transform: translateX(-50%);
      width: 30px;
      height: 30px;
      background-color: #000; /* Black background */
      border-radius: 50%;
      display: flex;
      justify-content: center;
      align-items: center;
      cursor: pointer;
      transition: width 0.3s, height 0.3s, background-color 0.3s, box-shadow 0.3s;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Subtle shadow */
      overflow: hidden;
    }

    .dynamic-island:hover,
    .dynamic-island.active {
      width: 300px;
      height: 60px;
      border-radius: 30px;
      background-color: rgba(0, 0, 0, 0.9); /* Darker background when active */
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.6); /* Enhanced shadow */
    }

    .dynamic-island .content {
      color: white;
      font-family: 'Helvetica Neue', sans-serif;
      font-size: 14px;
      text-align: left;
      opacity: 0;
      transition: opacity 0.3s, transform 0.3s;
      transform: translateX(-100%);
      padding: 0 15px;
    }

    .dynamic-island.active .content {
      opacity: 1;
      transform: translateX(0);
    }

    .dynamic-island .notification {
      display: none;
      opacity: 0;
      transition: opacity 0.3s, transform 0.3s;
      transform: translateY(-100%);
      color: black;
      background: white;
      border-radius: 20px;
      padding: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
      margin-top: 10px;
      text-align: center;
    }

    .dynamic-island.active .notification {
      display: block;
      opacity: 1;
      transform: translateY(0);
    }

    @keyframes slideDown {
      from {
        opacity: 0;
        transform: translateY(-100%);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }
  </style>
</head>
<body>

<div class="dynamic-island">
  <div class="content">
    <p>Dynamic Island</p>
  </div>
  <div class="notification">
    <p>Notification: You have a new message!</p>
  </div>
</div>

<script>
  // JavaScript to add active class on click and remove on body click (outside the island)
  const dynamicIsland = document.querySelector('.dynamic-island');

  dynamicIsland.addEventListener('click', function() {
    this.classList.toggle('active');
  });

  document.body.addEventListener('click', function(e) {
    if (!dynamicIsland.contains(e.target)) {
      dynamicIsland.classList.remove('active');
    }
  });
</script>

</body>
</html>
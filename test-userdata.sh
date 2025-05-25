#!/bin/bash
apt-get update -y
apt-get install -y nginx
systemctl start nginx
systemctl enable nginx

cat > /var/www/html/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Hello From Payal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ff6b6b, #4ecdc4);
            color: white;
            text-align: center;
            padding: 50px;
            margin: 0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .container {
            background: rgba(255,255,255,0.1);
            padding: 40px;
            border-radius: 20px;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }
        h1 {
            font-size: 3em;
            margin: 0 0 20px 0;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        p {
            font-size: 1.2em;
            opacity: 0.9;
        }
        .emoji {
            font-size: 2em;
            margin: 20px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Hello From Payal! </h1>
        <p>Welcome to my testing server!</p>
    </div>
</body>
</html>
EOF

const express = require("express");
const app = express();

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send(`
    <!DOCTYPE html>
    <html>
    <head>
      <title>AKS Node App By Milan</title>
      <style>
        body {
          margin: 0;
          font-family: Arial, sans-serif;
          background: linear-gradient(135deg, #0f172a, #1e293b);
          color: white;
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100vh;
        }

        .card {
          background: rgba(255,255,255,0.08);
          padding: 40px;
          border-radius: 20px;
          box-shadow: 0 10px 30px rgba(0,0,0,0.3);
          text-align: center;
          width: 420px;
        }

        h1 {
          font-size: 2rem;
          margin-bottom: 10px;
        }

        p {
          color: #cbd5e1;
          margin-bottom: 20px;
        }

        .status {
          display: inline-block;
          padding: 10px 18px;
          border-radius: 999px;
          background: #22c55e;
          color: white;
          font-weight: bold;
        }

        .footer {
          margin-top: 25px;
          font-size: 0.85rem;
          color: #94a3b8;
        }
      </style>
    </head>
    <body>
      <div class="card">
        <h1>🚀 AKS Deployment Successful by Milan</h1>
        <p>Your Node.js application is running on Kubernetes. By mIln Vashisth fain</p>
        <div class="status">Healthy</div>
        <div class="footer">
          Powered by Node.js + Docker + AKS 
        </div>
      </div>
    </body>
    </html>
  `);
});

app.get("/health", (req, res) => {
  res.status(200).json({
    status: "healthy",
    uptime: process.uptime()
  });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
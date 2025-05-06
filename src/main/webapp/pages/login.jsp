<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Testimonial</title>

  <!-- Bootstrap 5 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet" />

  <style>
    body {
      margin: 0;
      padding: 0;
      background: url('https://placehold.co/600x900?text=Background+Image+of+woman+holding+orange+and+wearing+green+dress') no-repeat center center/cover;
      font-family: 'Montserrat', Arial, sans-serif;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      padding: 2rem 1rem;
      color: white;
    }
    h1 {
      font-weight: 800;
      font-size: 2rem;
      margin-bottom: 2rem;
      font-family: Arial, sans-serif;
    }
    h1 span {
      font-weight: 400;
    }
    .testimonial-container {
      max-width: 700px;
      width: 100%;
      display: flex;
      flex-direction: column;
      gap: 1.5rem;
    }
    .testimonial {
      background: rgba(229, 229, 229, 0.9);
      border: 1px solid #4a4a4a;
      border-radius: 12px;
      padding: 1rem 1.5rem;
      display: flex;
      align-items: center;
      position: relative;
      color: #000;
      font-family: Arial, sans-serif;
    }
    .testimonial.right {
      padding-right: 6rem;
      padding-left: 1.5rem;
    }
    .testimonial.left {
      padding-left: 6rem;
      padding-right: 1.5rem;
    }
    .testimonial .content {
      flex: 1;
    }
    .testimonial h2 {
      font-weight: 800;
      font-size: 1.25rem;
      margin: 0;
      text-decoration: underline;
    }
    .stars {
      color: #b87a4a;
      margin: 0.25rem 0 0.5rem 0;
      font-size: 1.1rem;
    }
    .testimonial p {
      margin: 0;
      font-size: 0.9rem;
      line-height: 1.3;
    }
    .avatar {
      width: 80px;
      height: 80px;
      border-radius: 50%;
      border: 2px solid #4a4a4a;
      object-fit: cover;
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      background: #fff;
    }
    .testimonial.right .avatar {
      right: 1rem;
    }
    .testimonial.left .avatar {
      left: 1rem;
    }
    .footer-link {
      margin-top: 2rem;
      font-weight: 700;
      text-decoration: underline;
      font-family: Arial, sans-serif;
      font-size: 1rem;
      color: white;
      align-self: flex-start;
    }
    @media (max-width: 768px) {
      body {
        padding: 1rem;
      }
      .testimonial-container {
        max-width: 100%;
      }
      .testimonial {
        flex-direction: column;
        padding: 1rem;
      }
      .testimonial.right, .testimonial.left {
        padding-left: 1rem;
        padding-right: 1rem;
      }
      .avatar {
        position: relative;
        top: auto;
        transform: none;
        margin: 0 auto 1rem auto;
      }
      .footer-link {
        align-self: center;
      }
    }
  </style>
</head>
<body>

  <h1>[<span>TESTIMONIAL</span>]</h1>

  <div class="testimonial-container">

    <div class="testimonial right">
      <div class="content">
        <h2>Juliana Silva</h2>
        <div class="stars">
          &#9733;&#9733;&#9733;&#9733;&#9733;
        </div>
        <p>
          I love this product! The quality is incredible. The seller is excellent at communicating with you and answering questions. I will definitely buy from here again!
        </p>
      </div>
      <img class="avatar" src="https://storage.googleapis.com/a1aa/image/f27245e7-82bf-4869-0257-5080eda5b606.jpg" alt="Woman holding avocado in front of face wearing white hoodie on grass background" />
    </div>

    <div class="testimonial left">
      <img class="avatar" src="https://storage.googleapis.com/a1aa/image/ec77ec9e-3d4f-49bd-b1a1-f44e2cf96f5c.jpg" alt="Woman with curly hair wearing brown shirt looking up on white background" />
      <div class="content">
        <h2>Donna Stroupe</h2>
        <div class="stars">
          &#9733;&#9733;&#9733;&#9733;&#9733;
        </div>
        <p>
          I am absolutely thrilled with this product! The quality is outstanding, and the seller excels in communication and answering queries. I will certainly make another purchase from here in the future!
        </p>
      </div>
    </div>

    <div class="testimonial right">
      <div class="content">
        <h2>Olivia Wilson</h2>
        <div class="stars">
          &#9733;&#9733;&#9733;&#9733;&#9733;
        </div>
        <p>
          This product is amazing! The quality is exceptional, and the seller excels at communication and addressing queries. I will certainly make another purchase from this seller in the future!
        </p>
      </div>
      <img class="avatar" src="https://storage.googleapis.com/a1aa/image/5d701f3e-92ec-4486-46ea-765ac56b6488.jpg" alt="Woman wearing large hat and black top outdoors" />
    </div>

  </div>

  <a href="#" class="footer-link">www.reallygreatsite.com</a>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
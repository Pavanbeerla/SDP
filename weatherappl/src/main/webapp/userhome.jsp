<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Navbar with Search Box</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    
    <style>
    
        .card-container {
            display: flex;
            justify-content: space-between;
        }

        .card {
            width: 200px;
            height: 200px;
            margin: 20px;
            perspective: 900px;
            cursor: pointer;
        }

        .card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            text-align: center;
            transition: transform 0.6s;
            transform-style: preserve-3d;
        }

        .card-front,
        .card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
        }

        .card-front {
            background-color: #bbb;
            color: black;
        }

        .card-back {
            background-color: #555;
            color: white;
            transform: rotateY(180deg);
        }

        .card:hover .card-inner {
            transform: rotateY(180deg);
        }
        .card-front {
    background-color:  #867070; /* Change to a different color code */
    color: white; /* Adjust text color if needed */
}

.card-back {
    background-color: #000000; /* Change to a different color code */
    color: white; /* Adjust text color if needed */
}

.card-front, .card-back {
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
}

.views-row {
  display: flex;
  flex-wrap: wrap;
}

.views-col {
  width: 25%;
  padding: 10px;
  box-sizing: border-box;
}

 .marquee-container {
    overflow: hidden;
    white-space: nowrap;
    background-color: #333;
    color: white;
    padding: 10px;
    height: 100px;
}

.marquee-content {
    display: inline-block;
    padding-right: 100%; /* Create space for the content to move */
    animation: marquee-scroll 25s linear infinite; /* Adjusted duration for slower speed */
}

.marquee-content span {
    margin-right: 20px; /* Adjust the margin to create space between the places */
    
}


        @keyframes marquee-scroll {
            0% {
                transform: translateX(100%);
            }
            100% {
                transform: translateX(-100%);
            }
        }
         body {
      background-color: #FFFFFF; /* Use your preferred color code here */
  }
  
  .pavan {
            display: flex;
            justify-content: space-around;
        }

        .hero {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            width: 300px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            margin: 10px;
            transition: transform 0.3s;
        }

        .hero:hover {
            transform: scale(1.1);
            z-index: 1;
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
        }

        .hero img {
            max-width: 100%;
        }
  
  </style>
    
</head>
<body>


<nav class="navbar navbar-dark bg-dark fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Smart City</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Dark offcanvas</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="bus.jsp">Features</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="plan.html">plan</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="map.jsp">Navigate</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="hotels.jsp">Hotels</a>
        </li>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="educa.html">Education</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="temple.html">Temple</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Logout</a>
        </li>
          
        <!-- <form class="d-flex mt-3" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-success" type="submit">Search</button>
        </form> -->
      </div>
    </div>
  </div>
</nav>




<!--<n av class="navbar" style="background-color: #e3f2fd;" >
  <div class="container-fluid">
    <a class="navbar-brand" href="#">SMART CITY</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="bus.jsp">Features</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="plan.html">plan</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="map.jsp">Navigate</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="hotels.jsp">Hotels</a>
        </li>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="educa.html">Education</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Logout</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="login.html">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="register.html">Register</a>
        </li>
       <li class="nav-item">
          <a class="nav-link" href="test.html">test</a>
        </li>
      </ul>
    </div>
  </div>
</nav> -->
<!-- Content goes here -->
<div class="container col-xxl-8 px-4 py-5">
    <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
      <div class="col-10 col-sm-8 col-lg-6">
        <img src="https://images.pexels.com/photos/3278215/pexels-photo-3278215.jpeg?cs=srgb&dl=pexels-oleksandr-p-3278215.jpg&fm=jpg" class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700" height="500" loading="lazy">
      </div>
      <div class="col-lg-6">
        <h1 class="display-5 fw-bold text-body-emphasis lh-1 mb-3">City Explorer</h1>
        <p class="lead">Welcome to City Explorer, where we're dedicated to revolutionizing how newcomers experience their new cities. As a pioneering project, we're committed to ensuring that exploring a new city is an exciting and hassle-free endeavor. Our goal is to provide you with all the essential information and resources you need, right at your fingertips.</p>
      </div>
    </div>
  </div>
  
  
  
    <div class="card-container">
        <div class="card">
            <div class="card-inner">
                <div class="card-front">
                    <h2>Ameerpet</h2>
                    
                </div>
                <div class="card-back">
                    <h2>Coaching Center</h2>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-inner">
                <div class="card-front">
                    <h2>Old City</h2>
                    
                </div>
                <div class="card-back">
                    <h2>Charminar</h2>
                    
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-inner">
                <div class="card-front">
                    <h2>High-Tech City</h2>
                    
                </div>
                <div class="card-back">
                    <h2>MNC and Compaines</h2>
                    
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-inner">
                <div class="card-front">
                    <h2>GachiBowli</h2>
                    
                </div>
                <div class="card-back">
                    <h2>Durgam Cheruvu</h2>
                    
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-inner">
                <div class="card-front">
                    <h2>Kukatpally</h2>
                </div>
                <div class="card-back">
                    <h2>Lu Lu mall</h2>
          
                </div>
            </div>
        </div>
    </div>
  
  <div class="marquee-container">
        <div class="marquee-content">
            <span>Charminar</span>
            <span>Golconda Fort</span>
            <span>Salar Jung Museum</span>
            <span>Hussain Sagar</span>
            <span>Qutb Shahi Tombs</span>
            <span>Ramoji Film City</span>
            <span>Birla Mandir</span>
            <span>Mecca Masjid</span>
            <span>Nehru Zoological Park</span>
            <span>Lumbini Park</span>
        </div>
    </div>
  
  <div class="views-view-grid horizontal cols-4 clearfix">
    <div class="views-row clearfix row-1">
        <div class="views-col col-1" style="width: 25%;">
            <div class="views-field views-field-field-youtube-video-url">
                <div class="field-content">
                    <div class="video-embed-field-provider-youtube">
                        <iframe width="280" height="170" frameborder="0" allowfullscreen="allowfullscreen" src="https://www.youtube.com/embed/UPRKkSU5_40?t=288s"></iframe>
                    </div>
                </div>
            </div>
            <div class="views-field views-field-title">
                <span class="field-content"><a href="https://www.youtube.com/watch?v=UPRKkSU5_40&t=288s"></a></span>
            </div>
        </div>
        <div class="views-col col-2" style="width: 25%;">
            <div class "views-field views-field-field-youtube-video-url">
                <div class="field-content">
                    <div class="video-embed-field-provider-youtube">
                        <iframe width="280" height="170" frameborder="0" allowfullscreen="allowfullscreen" src="https://www.youtube.com/embed/yR7YusHwAmQ?t=299s"></iframe>
                    </div>
                </div>
            </div>
            <div class="views-field views-field-title">
                <span class="field-content"><a href="https://www.youtube.com/watch?v=yR7YusHwAmQ&t=299s"></a></span>
            </div>
        </div>
        <div class="views-col col-3" style="width: 25%;">
            <div class="views-field views-field-field-youtube-video-url">
                <div class="field-content">
                    <div class="video-embed-field-provider-youtube">
                        <iframe width="280" height="170" frameborder="0" allowfullscreen="allowfullscreen" src="https://www.youtube.com/embed/vXA3h2xnbR0"></iframe>
                    </div>
                </div>
            </div>
            <div class="views-field views-field-title">
                <span class="field-content"><a href="https://www.youtube.com/watch?v=vXA3h2xnbR0"></a></span>
            </div>
        </div>
        <div class="views-col col-4" style="width: 25%;">
            <div class="views-field views-field-field-youtube-video-url">
                <div class="field-content">
                    <div class="video-embed-field-provider-youtube">
                        <iframe width="280" height="170" frameborder="0" allowfullscreen="allowfullscreen" src="https://www.youtube.com/embed/AORXMaGL1t4"></iframe>
                    </div>
                </div>
            </div>
            <div class="views-field views-field-title">
                <span class="field-content"><a href="https://www.youtube.com/watch?v=AORXMaGL1t4"></a></span>
            </div>
        </div>
    </div>
</div>  
  
  <br>
  <br>
  
   <div class="pavan">
        <div class="hero">
            <h2>Charminar</h2>
            <img src="https://cdn.siasat.com/wp-content/uploads/2021/10/Charminar-in-Hyderabad.jpg" alt="Image 1">
            <p>The four pillars around Charminar represent the four caliphs. These pillars or minars are 48.7 meters high. These are four stories, with each floor divided by intricately carved rings that surround it. On the top floor of Chaminar there is a mosque which is believed to be the oldest mosque of Hyderabad city. There are 45 prayer spaces or musallah. Attached to these is the open space which can be used to accommodate more people on occasions like Friday prayers or festivals. It is located at the western end of the monument’s roof. It can be reached via 149 winding steps. The view from the top is also breathtaking.</p>
        </div>

        <div class="hero">
            <h2>Golkonda</h2>
            <img src="https://indiano.travel/wp-content/uploads/2022/06/White-Slate-Grey-Company-Dynamic-Neons-Company-Website-1590-%C3%97-1050-px-1060-%C3%97-700-px-1060-%C3%97-700-px-1590-%C3%97-1050-px-1060-%C3%97-700-px-1590-%C3%97-1050-px-1590-%C3%97-1050-px-1060-%C3%97-700-px-1060-%C3%97-700-px-1590-%C3%97-1050-1.jpg" alt="Image 2">
            <p>Kakatiya dynasty built the Golconda fort to defend the western part of their kingdom. The fort was built on top of a granite hill. Rani Rudrama Devi and her successor Prataparudra strengthened the fort further. After this, Musunuri dynasty took over the fort by defeating Tughlaqi army. Golconda is renowned for the diamonds found on the south-east at Kollur Mine near Kollur, Guntur district, Paritala and Atkur in Krishna district and cut in the city during the Kakatiya reign. At that time, India had the only known diamond mines in the world</p>
        </div>
        
        
        <div class="hero">
            <h2>Qutub Shahi Tombs</h2>
            <img src="data:image/jpeg;base64,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" alt="Image 2">
            <p>Erected in the memory of the departed kings of Golconda, they are magnificent monuments that have withstood the test of time and nature’s vagaries. They are located one kilometer north of Golconda Fort’s called Banjara Darwaza. They are imposing marvels of architectural excellence that stand as the reminders of the glory of Golconda kings who are buried at the same spot. Built by the Qutub Shahis, these tombs are considered to be among the oldest historical monuments of Hyderabad.</p>
        </div>

        <div class="hero">
            <h2>Mecca Masjid</h2>
            <img src="https://www.holidify.com/images/cmsuploads/compressed/4459_20180806200823.jpg" alt="Image 3">
            <p>Mecca Masjid in Hyderabad is one of the oldest and largest mosques in the city. Commissioned in 1614, it was built through the efforts of by Muhammad Quli Qutub Shah, however, the construction saw completion only in the year 1694. Together with the Chowmahalla Palace, Laad Bazaar, and Charminar, the mosque forms the four very important heritage attractions in the city. Located near the famous monument - Charminar - it can be easily reached from any part of the city.

With a capacity to accommodate as many as 10,000 people at any given time, the imposing facade of the Mecca Masjid is indeed a humbling sight to behold. Its interiors are a testament to the grandeur of the rulers of the Quli dynasty. However, please note that, at present, only followers of Islam religion are allowed to enter the mosque.

            </p>
        </div>
    </div>
  
  
  
  <div class="container">
  <footer class="row row-cols-1 row-cols-sm-2 row-cols-md-5 py-5 my-5 border-top">
    <div class="col mb-3">
      <a href="/" class="d-flex align-items-center mb-3 link-body-emphasis text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
      </a>
      <p class="text-body-secondary">© 2023</p>
    </div>

    <div class="col mb-3">

    </div>

    <div class="col mb-3">
      <h5>Section</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Home</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Features</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Pricing</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">FAQs</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">About</a></li>
      </ul>
    </div>

    <div class="col mb-3">
      <h5>Section</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Home</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Features</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Pricing</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">FAQs</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">About</a></li>
      </ul>
    </div>

    <div class="col mb-3">
      <h5>Section</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Home</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Features</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Pricing</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">FAQs</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">About</a></li>
      </ul>
    </div>
  </footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
    crossorigin="anonymous"></script>
</body>
</html>


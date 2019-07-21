<!doctype html>
<html>
  <head>
  <?include_once("/home/anomozco/public_html/style/header.php")?>
  </head>
  <body class="documentation documentation_changelog documentation_changelog_index " style="background-color:#f9f9f9;">
    <!-- Google Tag Manager -->
    <!-- End Google Tag Manager -->

    <div class="mobile-nav">
      <div class="m-pikabu-sidebar m-pikabu-left">
        <a href="#" class="close-panel icon-close"></a>
        <nav id="mobile">
          <h4>Pages</h4>
          <ul>
  
      <li>
        <a class="" href="https://www.anomoz.com">Home</a>
      </li>
      
      <li>
        <a class="" href="https://api.anomoz.com">Developers</a>
      </li>

      <li class="changelog">
        <a class=" active" href="https://projects.anomoz.com/roPay/">roPay</a>
      </li>
    </ul>
        </nav>
      </div>
    </div>

    <div class="m-pikabu-container">
    <style>
        a.logo {
  
    float: left;
    margin: 20px 0 0 0;
    background: url("./logo.png") ;
        background-size: auto;
    background-size: cover;
    display: block;
}

    </style>
        <header>
  <div class="wrapper-full"  style="background-color:#f9f9f9;">
    <a href="https://www.anomoz.com" class="logo"></a>
    <ul>
  
      <li>
        <a class="" href="https://www.anomoz.com">Home</a>
      </li>
      
      <li>
        <a class="" href="https://api.anomoz.com">Developers</a>
      </li>

      <li class="changelog">
        <a class=" active" href="https://projects.anomoz.com/roPay/">roPay</a>
      </li>
    </ul>
    <a class="m-pikabu-nav-toggle icon-navicon" data-role="left">
      <span></span>
    </a>
  </div>
</header>


        <div class="changelog-wrap">
    <div class="changelog-header">
  <div class="wrapper-full">
    <h2>roPay Documentation</h2>
    
  </div>
</div>

<div class="wrapper-full">
  <div class="changelog_content">
 
 <article id="introduction">
      
      
      
     <h3>Introduction</h3>
    <br>
    <p>
        Use our APIs.
    </p>

<pre><code class="json">clientKey = a1b2c3clientkey
</code></pre>


  </article>
  
  <article id="register-resturant">
      
      
      
     <h3>Register Resturant</h3>
    <br>
    <p>
        Resturants can be registered with the help of the following api. The resturant details are sent in a form of a JSON object.
    </p>

<pre><code class="json">https://api.anomoz.com/api/roPay/post/insert_resturant_278126.php?clientId={{clientKey}}
</code></pre>

JSON Input:

<pre><code class="json">{
    name: {{resturant name}},
    email: {{resturant email}},
    password: {{resturant password}},
    resturantId: {{unique resturant ID}},
}
</code></pre>


  </article>
  
  <article id="register-users">
     <h3>Register Users</h3>
    <br>
    <p>
        Users can be registered with the help of the following api. The user details are sent in a form of a JSON object.
    </p>

<pre><code class="json">https://api.anomoz.com/api/roPay/post/insert_user_3572883.php?clientId={{clientKey}}
</code></pre>

JSON Input:

<pre><code class="json">{
    name: {{customer name}},
    email: {{customer email}},
    password: {{customer password}},
    custId: {{unique customer ID}},
}
</code></pre>


  </article id="add-credits-to-wallet">
  
  <article>
     <h3>Add credits to User Wallet</h3>
    <br>
    <p>
        Anyone will be able to add balance to the user wallet. All that is needed is the <code>userId</code>, <code>resturantID</code>, and the <code>amount</code>. Api should be used over GET request with all the parameters in the URL.
    </p>

<pre><code class="json">https://api.anomoz.com/api/roPay/post/insert_user_credits_3691233.php?clientId={{clientKey}}
</code></pre>

JSON Input:

<pre><code class="json">{
    userId: {{customer Id}},
    resturantId: {{resturant Id}},
    addCredits: {{number of credits to be added}},
}
</code></pre>

  </article>
  
  <article id="get-all-wallets">
     <h3>Get Wallet of All Users</h3>
    <br>
    <p>
        Admin will be able to get details of all the wallets under his clientKey. Api should be used over GET request with all the parameters in the URL.
    </p>

<pre><code class="json">https://api.anomoz.com/api/roPay/post/get_all_wallets_2370812.php?clientId={{clientKey}}
</code></pre>

  </article>
  
  <article id="get-single-wallet">
     <h3>Get Wallet of a single user</h3>
    <br>
    <p>
        Admin will be able to get details of all a single wallet under his clientKey. All that is needed is the <code>userId</code>. Api should be used over GET request with all the parameters in the URL.
    </p>

<pre><code class="json">https://api.anomoz.com/api/roPay/post/get_single_user_wallet_36721385.php?clientId={{clientKey}}&userId={{userId}}
</code></pre>

  </article>

  </div>
  <aside id="help-nav">
  <ul>
      <li class="sidebar-title">
        Index
      </li>

      <li>
        <a href="#introduction">          
            <h3>Introduction</h3>
        </a> 
        <a href="#register-resturant">          
            <h3>Register Resturant</h3>
        </a> 
        <a href="#register-users">          
            <h3>Register Users</h3>
        </a> 
        <a href="#add-credits-to-wallet">          
            <h3>Add Credits to Wallet</h3>
        </a> 
        <a href="#get-all-wallets">          
            <h3>Get all Wallets</h3>
        </a> 
        <a href="#get-single-wallets">          
            <h3>Get single Wallet</h3>
        </a> 
      </li>
     
  </ul>
</aside>
</div>


  </div>

  <script src="https://developers.digitalocean.com/assets/js/jquery-1.10.2.min-21daab25.js" type="text/javascript">
      
  </script><script src="https://developers.digitalocean.com/assets/js/pikabu-ddd39532.js" type="text/javascript">
      
  </script><script src="https://developers.digitalocean.com/assets/js/mobile-menu-b2824345.js" type="text/javascript"></script>




          <footer id="footer">
  <div class="wrapper-full">
    <ul>
      <li class="changelog">
        <a class=" active" href="https://www.anomoz.com">Built by Anomoz</a>
      </li>
    </ul>
  </div>
</footer>




    </div>
  </body>
</html>

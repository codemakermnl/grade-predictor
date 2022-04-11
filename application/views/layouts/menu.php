<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
    <?php $position_id = $this->session->userdata('position_id');   ?>
      <div class="logo" style="background-color: #00b386">
        <a href="#" class="simple-text logo-normal">
          <b id="user_name" style="color: #fff;">Grade Classifier</b>
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">

          <li id="dashboard-driver" class="nav-item active">
              <a class="nav-link" href="<?=base_url()?>driver-dashboard">
                <i class="material-icons">dashboard</i>
                <p class="sidebar-text"><b>Classify</b></p>
              </a>
            </li>
          

        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:;">Student Grade Classifier</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">


          </div>
        </div>
      </nav>
      <!-- End Navbar -->
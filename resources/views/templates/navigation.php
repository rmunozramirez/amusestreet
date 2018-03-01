<section id="landing-page">	
    <!-- ================================================== Navbar  ================================================== -->
    <nav class="navbar " role="navigation">
        <ul class="nav sky-mega-menu sky-mega-menu-anim-flip sky-mega-menu-response-to-icons blanco"> 
    <!--                        <a class="brand navbar-brand" href="./index.php"><?php echo WEBSITE_NAME; ?></a>-->
            <li class="menu-home">
                <a title="<?php echo WEBSITE_NAME; ?>" href="index.php"><i class="fa fa-single fa-home"></i></a>
            </li>
            <!-- Marketplace -->
            <li aria-haspopup="true">
                <a title="Virtual tours" href="resume.php"><i class="fa fa-play"></i>Virtual tours</a>  
                <div class="grid-container3">
                    <ul>
                        <li><a title="Virtual tours" href="virtualtours.php"><i class="fa fa-play-circle"></i>Virtual tours</a></li>
                        <li><a title="View Categories" href="categories.php"><i class="fa fa-folder-open-o"></i>Categories</a></li>
                        <li><a title="View Featured" href="featured.php"><i class="fa fa-certificate"></i>Featured</a></li>
                    </ul>
                </div>
            </li>
            <!--/ Marketplace -->
            <li>
                <a title="Go to virtual room" href="event_room.php"><i class="fa fa-video-camera"></i>Virtual room</a>
            </li>
            <li class="right" aria-haspopup="true">
                <a title="Login" href="login.php"><i class="fa fa-user-plus"></i>Login</a>
            </li>
            <li class="right" aria-haspopup="true">
                <a class="right" href="?lang=en"><img src="assets/img/en.png" alt="English" title="English" class="<?php echo ASLang::getLanguage() != 'en' ? 'fade' : ''; ?>" />
                </a>  
                <div class="grid-container3">
                    <ul>
                        <li><a href="?lang=es">
                                <img src="assets/img/es.png" alt="Spanish" title="Spanish"
                                     class="<?php echo ASLang::getLanguage() != 'es' ? 'fade' : ''; ?>" /><span class="language">Spanish</span>
                            </a></li>
                        <li><a href="?lang=fr">
                                <img src="assets/img/fr.png" alt="Spanish" title="French"
                                     class="<?php echo ASLang::getLanguage() != 'fr' ? 'fade' : ''; ?>" /><span class="language">French</span>
                            </a></li>
                        <li><a href="?lang=se">
                                <img src="assets/img/se.png" alt="Spanish" title="Swedish"
                                     class="<?php echo ASLang::getLanguage() != 'se' ? 'fade' : ''; ?>" /><span class="language">German</span>
                            </a></li>
                    </ul>
                </div>
            </li>

        </ul>
    </nav>
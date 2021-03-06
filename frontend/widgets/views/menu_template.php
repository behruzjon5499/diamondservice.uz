<?php
use abdualiym\cms\entities\Menu;
use abdualiym\cms\helpers\Language;
/**
 *
 * @var $menu Menu
 */
$url = Yii::$app->language;
?>

<div class="menu-area rs-defult-header menu-sticky">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-2">
                <div class="logo-area">
                    <a href="<?= Yii::$app->getHomeUrl() ?>"><img src="/images/logoo.png" alt="logo"></a>
                </div>
            </div>
            <div class="col-lg-10">
                <div class="main-menu">
                    <a class="rs-menu-toggle"><i class="fa fa-bars"></i>Menu</a>
                    <nav class="rs-menu">
                        <ul class="menu">
                            <?php foreach ($menu as $key => $value) {
                                if ($value['type'] != Menu::TYPE_EMPTY) {
                                    echo '<li class="rs-mega-menu current-menu-item menu-item-has-children"><a class="active" href="' . $value['link'] . '">' . Language::getAttribute($value, 'title', $url) . '</a></li>';
                                } else {
                                    if (isset($value['childs']) && $value['childs']) {
                                        echo '<li class="menu-item-has-children">' . '<a href="' . $value['link'] . '">' . Language::getAttribute($value, 'title', $url) . ' <i class="fa fa-angle-down"></i></a>';
                                        echo '<ul class="sub-menu">';
                                        foreach ($value['childs'] as $key => $childValue) {
                                            if (isset($childValue['childs']) && $childValue['childs']) {
                                                echo '<li class="menu-item-has-children">' . '<a href="' . $childValue['link'] . '">' . Language::getAttribute($childValue, 'title', $url) . ' <i class="fa fa-angle-down"></i></a>';
                                                echo '<ul class="sub-menu">';
                                                foreach ($childValue['childs'] as $key => $children) {
                                                    echo '<li><a href="' . $children['link'] . '">' . Language::getAttribute($children, 'title', $url) . '</a></li>';
                                                }
                                                echo '</ul>';
                                                echo '</li>';
                                            } else {
                                                echo '<li><a href="' . $childValue['link'] . '">' . Language::getAttribute($childValue, 'title', $url) . '</a></li>';
                                            }
                                        }
                                        echo '</ul>';
                                        echo '</li>';
                                    } else {
                                        echo '<li><a href="' . $value['link'] . '">' . Language::getAttribute($value, 'title', $url) . '</a></li>';
                                    }
                                }
                            } ?>
                        </ul>
                    </nav>
                </div>
                <div class="appointment-cart hidden-md">
                    <ul class="cart">
                        <li class="search"><i class="fa fa-search"></i></li>
<!--                        <li><a id="nav-expander" class="nav-expander"><i class="fa fa-bars fa-lg white"></i></a></li>-->
                    </ul>
                    <div class="search-bar">
                        <input type="search" placeholder="Search...">
                        <button type="button"><i class="fa fa-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

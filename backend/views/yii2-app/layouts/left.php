<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p>Adminstrator</p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
                <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>
        <!-- /.search form -->

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget' => 'tree'],
                'items' => [
                    ['label' => 'Menu Yii2', 'options' => ['class' => 'header']],

                    [
                        'label' => 'Услуги по ремонту',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Categories', 'icon' => 'file-code-o', 'url' => ['/categories'],],
                            ['label' => 'Services', 'icon' => 'dashboard', 'url' => ['/services'],],

                        ],
                    ],
                    [
                        'label' => 'Услуги по kartridjey',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Categories Kartridjey', 'icon' => 'file-code-o', 'url' => ['/categories-kartridjey'],],
                            ['label' => 'Services Kartridjey', 'icon' => 'dashboard', 'url' => ['/services-kartridjey'],],

                        ],
                    ],
                    ['label' => 'News', 'icon' => 'dashboard', 'url' => ['/news']],
                    ['label' => 'About', 'icon' => 'dashboard', 'url' => ['/about']],
                    [
                        'label' => 'clients page',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Clients slider', 'icon' => 'file-code-o', 'url' => ['/slider/slides/index?slug=clients'],],
                            ['label' => 'Our clients', 'icon' => 'file-code-o', 'url' => ['/slider/slides/index?slug=ourclients'],],
                        ],
                    ],
                    [
                        'label' => 'services slider',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Remont slider', 'icon' => 'file-code-o', 'url' => ['/slider/slides/index?slug=services'],],
                            ['label' => 'kartridjey slider', 'icon' => 'file-code-o', 'url' => ['/slider/slides/index?slug=serviceskartridjey'],],
                            ['label' => 'Price List', 'icon' => 'file-code-o', 'url' => ['/slider/slides/index?slug=pricelist'],],
                        ],
                    ],
                    [
                        'label' => 'Site',
                        'icon' => 'share',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Menu', 'icon' => 'th-list', 'url' => ['/cms/menu']],
                            ['label' => 'Pages', 'icon' => 'font', 'url' => ['/cms/pages']],
                            ['label' => 'Article', 'icon' => 'dashboard', 'url' => ['/cms/articles']],
                            ['label' => 'Feedback', 'icon' => 'envelope-o', 'url' => ['/feedback']],
                            ['label' => 'Contacts', 'icon' => 'dashboard', 'url' => ['/contacts']],
                            ['label' => 'Sliders', 'icon' => 'image', 'url' => ['/sliders']],
                            ['label' => 'Sliders photos', 'icon' => 'dashboard', 'url' => ['/slider-photos']],
                        ],
                    ],

                    ['label' => 'Login', 'url' => ['/login'], 'visible' => Yii::$app->user->isGuest],
                ],
            ]
        ) ?>

    </section>

</aside>

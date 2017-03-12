<!DOCTYPE html> 

<?= $this->layout = false; ?>
    <?= $this->Html->css('bootstrap.min.css') ?>
    <?= $this->Html->css('form-elements.css') ?>
    <?= $this->Html->css('login.css') ?>
    <?= $this->Html->css('font-awesome.min.css') ?>
    

    <?= $this->fetch('meta') ?>
    <?= $this->fetch('css') ?>
    <?= $this->fetch('script') ?>
    
    
    
          <!-- Top content -->
        <div class="top-content">
            
            <div class="inner-bg">
                <div class="container">
                    
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text">
                            <h1 >Welcome to Pair'D</h1>
                            <div class="description">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dapibus augue nec hendrerit ullamcorper. Sed vel odio dictum, dapibus massa ut, consequat turpis. Aliquam ac purus eget felis ultricies gravida ut sit amet felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                </p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-5">
                        <!-- Login Title & Description -->  
                            <div class="form-box">
                                <div class="form-top">
                                    <div class="form-top-left">
                                        <h3>Login to our site</h3>
                                        <p>Enter username and password to log on:</p>
                                    </div>
                                    <div class="form-top-right">
                                        <i class="fa fa-lock"></i>
                                    </div>
                                </div>
                                
                        <!-- Login Form --> 
                                <div class="form-bottom">
                                    <div class="users form">
                                        <?= $this->Flash->render('auth') ?>
                                        <?= $this->Form->create() ?>
                                            <fieldset class="paird-form">
                                                <?= $this->Form->input('username', [
                                                'class' => 'form-username form-control',
                                                'id' => 'form-username',
                                                'required' => 'true',
                                                'type' => 'text',
                                                ]);?>
                                                
                                                <?= $this->Form->input('password', [
                                                'class' => 'form-control', 
                                                'required' => 'true', 
                                                'type' => 'password', 
                                                'id' => 'form-password',
                                                
                                                ]); ?>
                                            </fieldset>
                                            <br>
                                        <div class = "form-group">
                                        <?= $this->Form->button(__('Sign in!'), [ 
                                        'type' => 'submit',
                                        'class' => 'btn',
                                        ]); ?>
                                        </div>
                                        <?= $this->Form->end() ?>
                                    </div> 
                                </div>
                            </div>
                            
                        </div>
                        <!-- border divider --> 
                        <div class="col-sm-1 middle-border"></div>
                        <div class="col-md-1"></div>
                            
                        <div class="col-md-5">
                        <!-- Sign Up Title & Description -->
                            <div class="form-box">
                                <div class="form-top">
                                    <div class="form-top-left">
                                        <h3>Sign up now</h3>
                                        <p>Fill in the form below to get instant access:</p>
                                    </div>
                                    <div class="form-top-right">
                                        <i class="fa fa-pencil"></i>
                                    </div>
                                </div>
                        <!-- Sign Up Form --> 
                                <div class="form-bottom">
                                    <div class="users form">
                                    <?= $this->Form->create($user, ['url' => ['action' => 'add'], 'type' => 'file']); ?>
                                    <fieldset>
                                        <?php
                                            echo $this->Form->input('username', [ 
                                            'class' => 'form-username form-control', 
                                            'required' => 'true',
                                            'type' => 'text',  
                                            'id' => 'form-username',
                                            'placeholder' => 'Username',
                                            ]);
                                            
                                            echo $this->Form->input('name', [
                                            'class' => 'form-full-name form-control',
                                            'id' => 'form-full-name', 
                                            'type' => 'text', 
                                            'placeholder' => 'Full Name', 
                                            'required' => 'true', 
                                            ]);
                                            
                                            echo $this->Form->input('email', [
                                            'class' => 'form-email form-control', 
                                            'id' => 'form-email',
                                            'type' => 'text', 
                                            'placeholder' => 'Email',
                                            'required' => 'true', 
                                            ]);
                                            
                                            echo $this->Form->input('password', [
                                            'class' => 'form-password form-control',
                                            'id' => 'form-password',
                                            'type' => 'password',
                                            'placeholder' => 'Enter 5 characters including 2 numbers',
                                            'required' => 'true', 
                                            ]);
                                            
                                            echo $this->Form->input('role', [
                                                'class' => 'form-control',
                                                'options' => [ 'registered' => 'Registered']
                                            ]);
                                        ?>
                                    </fieldset>
                                    <br>
                                    <?= $this->Form->button(__('Submit'), [
                                    'type' => 'submit', 
                                    'class' => 'btn',
                                    ]) ?>
                                    <?= $this->Form->end() ?>
                                    </div>
        
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                    
                    <div class="col-sm-8 col-sm-offset-2">
                        <div class="footer-border"></div>
                        <p>Made by Kevin Culala, Nghi Nhan, Nina Kern, Arieska Akimoto</p>
                        <p><strong>&copy; PAIR'D 2017</strong></p>
                    </div>
                    
                </div>
            </div>
        </footer>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
        
        <!-- jQuery --> 
        <?= $this->Html->script('jquery.js') ?>
        <?= $this->Html->script('jquery-1.11.1.js') ?>
        <?= $this->Html->script('jquery.backstretch.js') ?>
        <?= $this->Html->script('scripts.js') ?>
        <?= $this->Html->script('placeholder.js') ?>
        <!-- Bootstrap Core JavaScript -->
        <?= $this->Html->script('bootstrap.min.js') ?>
    
</html>

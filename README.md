# [SimpleCaptcha2](https://github.com/pludoni/simple-captcha) rails sample demo app
Also hacked to fixed [issue 49](https://github.com/pludoni/simple-captcha/issues/49 "Can't mass-assign protected attributes: captcha, captcha_key")  

### Requirements
I tried to reproduce issue 49 and hence used below version of ruby and rails.  
Ruby = ruby-1.9.3-p484  
Rails = 3.2.19  
postgresql = 9.3  
ImageMagick should be installed on your machine to use this plugin. visit http://www.imagemagick.org/script/index.php for more details.  

### Setup
    $ rake db:setup  
    $ rails s

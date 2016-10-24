<header role="banner" class="navbar navbar-fixed-top navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button data-toggle="collapse-side" data-target=".side-collapse" data-target-2=".side-collapse-container" type="button" class="navbar-toggle pull-left"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
			<a class="navbar-brand" href="#">Housing</a>       
        </div>
        <div class="navbar-inverse side-collapse in">
          <nav role="navigation" class="navbar-collapse">
            <ul class="nav navbar-nav">
<!--               <li><a href="#Home">Home</a></li> -->

              <li><a href="AddPostPage">Housing</a></li>
              <li><a href="ViewPostPage">Searching</a></li>
               <li><a href="#.">Digital Locker</a></li>
                <li><a href="#.">Money Transfer</a></li>
                 <li><a href="#.">Investment</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </header>
    
    <script>

$(document).ready(function() {   
    var sideslider = $('[data-toggle=collapse-side]');
    var sel = sideslider.attr('data-target');
    var sel2 = sideslider.attr('data-target-2');
    sideslider.click(function(event){
        $(sel).toggleClass('in');
        $(sel2).toggleClass('out');
    });
    
    
    $('#myTabs a').click(function (e) {
    	  e.preventDefault()
    	  $(this).tab('show')
    	})
});
</script>
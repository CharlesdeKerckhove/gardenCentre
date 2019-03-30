(function ($) { // Begin jQuery
    $(function () { // DOM ready
        // If a link has a dropdown, add sub menu toggle.
        $('nav ul li a:not(:only-child)').click(function (e) {
            $(this).siblings('.nav-dropdown').toggle();
            // Close one dropdown when selecting another
            $('.nav-dropdown').not($(this).siblings()).hide();
            e.stopPropagation();
        });
        // Clicking away from dropdown will remove the dropdown class
        $('html').click(function () {
            $('.nav-dropdown').hide();
        });
        // Toggle open and close nav styles on click
        $('#nav-toggle').click(function () {
            $('nav ul').slideToggle();
        });
        // Toggle open and close nav styles on click
        $('.resizeDrop').click(function () {
            $('.resizeDropContent').slideToggle();
        });
        // Hamburger to X toggle
        $('#nav-toggle').on('click', function () {
            this.classList.toggle('active');
        });
    }); // end DOM ready
})(jQuery); // end jQuery

function openTab(evt, tabName) { //vertical tabs start
    var i, tabcontent, tablinks; //create variables
    //hide tab content
    tabcontent=document.getElementsByClassName("tabcontent");
    for (i=0; i < tabcontent.length; i++){
        tabcontent[i].style.display="none";
    }
    //Make tablinks inactive
    tablinks=document.getElementsByClassName("tablinks");
    for (i=0; i < tablinks.length; i++){
        tablinks[i].className = tablinks[i].className.replace("active","");
    }
    //Show clicked tab
    document.getElementById(tabName).style.display="block";
    //Activate clicked tab
    evt.currentTarget.className += "active";
}
//Wait for click
document.getElementById("whoAreWe").click();
jQuery(".small-video").click(function(event) {
    event.preventDefault();
    jQuery(".video-list-single").removeClass('active-video');
    jQuery("html, body").animate({ scrollTop: 0 }, 800);
    jQuery(this).closest('.video-list-single').addClass('active-video');
    jQuery('.video-source').attr('style', 'margin-top: 0px !important;');
    var id = jQuery(this).data("id");
    console.log(id);
    var title = jQuery(this).find('.video-content').html();
    console.log(title);
    jQuery("#big-video")[0].src = "" + id + "?rel=0&amp;controls=1&amp;showinfo=0&autoplay=1";
    return false;

});
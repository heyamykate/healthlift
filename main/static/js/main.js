$(document).ready(function() {
  // sticky nav
  function stickyNav(element, size) {
      var lastScrollTop = 0;
      var headerHeight = 105;
      var topAmt = '-110px';

      var heroHeight = $('.hero').height();
      var scrollHeight = Math.round(heroHeight * 0.5);

          $(window).bind('scroll', function() {
              var st = window.pageYOffset;

              if (st > scrollHeight) {
                TweenMax.to(element, 1, { css: { top: '0px' }, ease: Power4.easeOut });
              }
              else {
                TweenMax.to(element, 1, { css: { top: topAmt }, ease: Power4.easeOut });
              }

              lastScrollTop = st;
          });
  }

  function checkSize() {
    var minWidth = 969;
    var width = $(window).width();
    if (width > minWidth) {
        stickyNav('#sticky-header', 'desktop');
    } else {
        stickyNav('.mobile-header', 'mobile');
    }
  }

  checkSize();

  $(window).on('resize', checkSize);

  var $root = $('html, body');

  function anchorScroll(event) {
      event.preventDefault();
      console.log('anchorScroll');
      $root.animate({
          scrollTop: $($.attr(this, 'href')).offset().top - 40
      }, 500);
      return false;
  }

  $('.links a').on('click', anchorScroll);
  $('.nav a').on('click', anchorScroll);

  function csrfSafeMethod(method) {
      // these HTTP methods do not require CSRF protection
      return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method));
  }

  function submitContact(e) {
      e.preventDefault();
      var csrftoken = $('#contact-form input[name="csrfmiddlewaretoken"]').val();

      var name = $('#contact-form input[name=name]').val();
      var email = $('#contact-form input[name=email]').val();
      var message = $('#contact-form textarea[name=message]').val();

      $.ajaxSetup({
          beforeSend: function(xhr, settings) {
              if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
                  xhr.setRequestHeader("X-CSRFToken", csrftoken);
              }
          }
      });

      $.ajax({
          url: '/contact',
          type: "POST",
          data: JSON.stringify({ 'name': name, 'email': email, 'message': message }),
          success: function(response) {

              if (response.error) {
                  console.log('error: ', response.responseText);
              } else {
                  $('.error').text('');
                  swal({
                    title: "Thanks!",
                    text: "We'll be in touch shortly.",
                    type: "success",
                    confirmButtonColor: "#008fd0",
                    confirmButtonText: "OK",
                    closeOnConfirm: true
                  });
                  $('#contact-form input[name=name]').val('');
                  $('#contact-form input[name=email]').val('');
                  $('#contact-form textarea[name=message]').val('');
              }
          },
          error: function(error) {
              console.log('error: ', error.responseText);
              $('.error').text(error.responseText);

          }
      });
  }
  $('#contact-form').on('submit', submitContact);

});

// $(document).ready(function () {

//     $(".nav li").click(function () {
//         $(this).toggleClass("selected");
//         var activeFilters = getActiveFilters();
//         $(".website").each(function () {
//             var $website = $(this);
//             var websiteFilters = $website.data("filters");
//             if (websiteQualified(activeFilters, websiteFilters)==false) {
//                 $website.addClass("blur");

//             }
//             if (websiteQualified(activeFilters, websiteFilters)) {

//                 $website.removeClass("blur");
//             }
//         });
//     });

//     function getActiveFilters() {
//         var filterArray = [];
//         $(".nav .selected").each(function () {
//             filterArray.push(parseInt($(this).attr("id")));
//         });
//         return filterArray;
//     }

//     function websiteQualified(filters, website) {

//         for (var i = 0; i < filters.length; i++) {
//             if ((website.indexOf(filters[i])) == -1) {
//                 return false;
//             }
//         }
//         return true;
//     }

// });

$(document).ready(function() {
  var $grid = $('#grid'),
      $sizer = $grid.find('.shuffle__sizer');

  $grid.shuffle({
    itemSelector: '.website',
    sizer: $sizer
    // sort: 'title'
  });

  $(".nav li").click(function () {
  $(this).toggleClass("selected");
  var sort_group = this.dataset.group,
      opts = {};

  // We're given the element wrapped in jQuery
  if ( sort_group === 'date-created' ) {
    opts = {
      reverse: true,
      by: function($el) {
        return $el.data('date-created');
      }
    };
  } else if ( sort_group === 'title' ) {
    opts = {
      by: function($el) {
        return $el.data('title').toLowerCase();
      }
    };
  }

  // Filter elements
  $grid.shuffle('shuffle', sort_group);

});
});


$(document).ready(function () {

    $(".nav li").click(function () {
        $(this).toggleClass("selected");
        var activeFilters = getActiveFilters();
        $(".website").each(function () {
            var $website = $(this);
            var websiteFilters = $website.data("filters");
            if (websiteQualified(activeFilters, websiteFilters)==false) {
                $website.addClass("blur");

            }
            if (websiteQualified(activeFilters, websiteFilters)) {

                $website.removeClass("blur");
            }
        });
    });

    function getActiveFilters() {
        var filterArray = [];
        $(".nav .selected").each(function () {
            filterArray.push(parseInt($(this).attr("id")));
        });
        return filterArray;
    }

    function websiteQualified(filters, website) {

        for (var i = 0; i < filters.length; i++) {
            if ((website.indexOf(filters[i])) == -1) {
                return false;
            }
        }
        return true;
    }

});
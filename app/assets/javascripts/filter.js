

$(document).ready(function() {
	//This script goes through each of the websites displayed on the page, and hides websites that do not have all of the filter icons selected
  var $grid = $('#grid')
  var activeFilters



  //wait until the images are loaded to run the first shuffle
  imagesLoaded( document.querySelector('#grid'), function( instance ) {
  	$grid.shuffle('sort');
	});


  $(".nav li").on('click', function() {
  	//if the all button was clicked
  	if ($(this).attr("id") == "all-button"){
	      	//if the all button was already selected
	      if($(this).attr("class") == "selected-all"){
	      	//running this here makes tries to select all, which in effect selects none
	      	$(this).removeClass("selected-all");
	      }else{  //if the all button wasn't selected
		      parent = $(this).parent();
		      button_list = document.getElementById("button-list").childNodes

		      //deselect any of the buttons which are selected
		      for(i=0; i < button_list.length; i++){
		      	if(button_list[i].id === "all-button"){
		      		$(button_list[i]).addClass("selected-all");
		      	}else{
		      		$(button_list[i]).removeClass("selected");
		      	}
	 				}
	 				//show all the sites
	 				activeFilters=[];
	 			}
 		//if a button that is not that all button was clicked
  	}else{
  		$("#all-button").removeClass("selected-all");
  		$(this).toggleClass("selected");
  		activeFilters = getActiveFilters();  //get the current filters
  	}

	  function filter() {
	    if ( hasActiveFilters) {
	    	//go through each website value and run the itemPassesFilters function
	      $grid.shuffle('shuffle', function($el) {
	        return itemPassesFilters($el.data('groups'));
	      });
	    } else {
	    	//display all of the websites
	      $grid.shuffle();
	    }
	  }


	  //creates an array of currently active filters
	  function getActiveFilters() {
	    var filterArray = [];
	    $(".nav .selected").each(function () {
	        filterArray.push($(this).data("group"));
	    });

	    return filterArray;
		}

		//checks that there are filters selected
	  function hasActiveFilters() {
	  	return activeFilters.length > 0;
		}		

		//checks that webiste is of the type selected by the current filter
		function valueInArray(values, filter) {
	    for (var i = 0; i < filter.length; i++) {
	        if ((values.indexOf(filter[i])) == -1) {
	            return false;
	        }
	    }
	    return true;			
		}

	  function itemPassesFilters(data) {
	  	//if a website has all of the group values selected
	  	if (hasActiveFilters() && !valueInArray(data, activeFilters)){
	  		return false;
	  	}

	  	return true;
		}	

		//run the filter
	  filter();
	});

	//create the about this webpage modal
	$('#about_floater').modal();

});


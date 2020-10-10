	var TaskList = function () {
    return {
			
			initTaskWidget: function () {
				// $('input.list-child').change(function() {
				$(document).on('change','input.list-child',function(){
					if ($(this).is(':checked')) { 
						$(this).parents('li').addClass("task-done"); 
					} else { 
						$(this).parents('li').removeClass("task-done"); 
					}
				}); 
			}

    };

	}();


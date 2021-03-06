/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./frontend/follow_toggle.js":
/*!***********************************!*\
  !*** ./frontend/follow_toggle.js ***!
  \***********************************/
/***/ ((module) => {

class FollowToggle {
    constructor($el) {
        this.$el = $el //saves as instance 
        this.userId = $el.data("user-id");
        this.followState = $el.data("follow-state");
        this.render()
        this.handleClick()
    }

    // events when user clicks on follow or unfollow go here
    handleClick() {
    //     Prevent the default action.
    //     Make a $.ajax request to POST /users/: id / follow if we are not following the user(check followState), 
    // else, it should make a DELETE request.
    // On success of the POST / DELETE, we should toggle the followState and re - render.

    
        this.$el.on('click', (e) => {
            // debugger
            e.preventDefault()
            if(this.followState === 'followed'){
                this.followState = 'unfollowed';
                this.render()
                return $.ajax({
                    method: "DELETE",
                    url: `/users/${this.userId}/follow`,
                    dataType: "JSON"
                })
            } else {
                this.followState = 'followed'
                this.render()
                // debugger
                return $.ajax({
                    method: "POST",
                    url: `/users/${this.userId}/follow`,
                    dataType: "JSON"
                })
            }
        });
    }

    render() {
        //where we will display "Follow" or "Unfollow" depending if user follows already
        const $el = $('button.follow-toggle')
        if (this.followState === 'followed') {
            $el.text("Unfollow")
        } else {
            $el.text("Follow")
        }
    }
}

module.exports = FollowToggle;

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
(() => {
/*!*****************************!*\
  !*** ./frontend/twitter.js ***!
  \*****************************/
 const FollowToggle = __webpack_require__ (/*! ./follow_toggle */ "./frontend/follow_toggle.js");

 $(() => {

    const $toggleButton = $('button.follow-toggle');
    
    $toggleButton.each((idx, htmlEle) => {
        new FollowToggle($(htmlEle));
    });
    
  });

})();

/******/ })()
;
//# sourceMappingURL=bundle.js.map
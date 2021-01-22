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
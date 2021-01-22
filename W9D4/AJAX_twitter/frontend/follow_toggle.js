class FollowToggle {
    constructor($el) {
        this.$el = $el //saves as instance 
        this.userId = $el.data("user-id");
        this.followState = $el.data("follow-state");
        this.render()
    }

    // events when user clicks on follow or unfollow go here
    handleClick() {
    //     Prevent the default action.
    //     Make a $.ajax request to POST /users/: id / follow if we are not following the user(check followState), 
    // else, it should make a DELETE request.
    // On success of the POST / DELETE, we should toggle the followState and re - render.

        const $el = $('button.follow-toggle')

        $el.on('click', (e) => {
            e.preventDefault()
            if(e.followState === 'followed'){
                e.followState = 'unfollowed';
                $ajax({
                    method: "DELETE",
                    url: `/user_follow/${this.userId}`,
                    dataType: "json"
                })
            } else {
                e.followState = 'followed'
                $ajax({
                    method: "POST",
                    url: `/user_follow/${this.userId}`,
                    dataType: "json"
                })
            }
        });
    }

    render() {
        //where we will display "Follow" or "Unfollow" depending if user follows already
        const $el = $('button.follow-toggle')
        if ($el.followState === 'followed') {
            $el.text("Unfollow")
        } else {
            $el.text("Follow")
        }
    }
}

module.exports = FollowToggle;
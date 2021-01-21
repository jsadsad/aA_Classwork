class FollowToggle {
    constructor($el) {
        this.$el = $el //saves as instance 
        this.userId = $el.data("user-id");
        this.followState = $el.data("follow-state");
    }

    // events when user clicks on follow or unfollow go here
    
}

module.exports = FollowToggle;
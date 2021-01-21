class FollowToggle {
    constructor($el) {
        this.$el = $el //saves as instance 
        this.userId = $el.data("user-id");
        this.followState = $el.data("follow-state");
        this.render()
    }


    // events when user clicks on follow or unfollow go here
    onClick() {
        const $el = $('.follow-toggle')
        $el.on('click', (e) => {
            if(this.followState === 'followed'){
                this.followState = 'unfollowed';
            } else {
                this.followState = 'followed'
            }
        });
    }

    render() {
        debugger
    }
    
}

module.exports = FollowToggle;